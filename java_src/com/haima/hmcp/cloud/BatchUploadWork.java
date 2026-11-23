package com.haima.hmcp.cloud;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.listeners.OrderListener;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BatchUploadWork implements ICloudFile, OrderListener {
    private static final String TAG = "BatchUploadWork";
    private BatchUploadTask mBatchUploadTask;
    private ITask mCheckTask;
    private WorkStatus mWorkStatus = WorkStatus.IDLE;
    private List<InternalCloudFile> mCheckFiles = new ArrayList();
    private List<InternalCloudFile> mCheckFailedFiles = new ArrayList();
    private List<InternalCloudFile> mCheckSuccessFiles = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public List<BatchCloudOperationListener.FileStatus> convertToFileStatus(List<InternalCloudFile> list, String str) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator<InternalCloudFile> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new BatchCloudOperationListener.FileStatus(it2.next().makeCloudFile(), 19, str));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWorkStatus(WorkStatus workStatus) {
        LogUtils.d(TAG, "cloud-file: setWorkStatus: " + workStatus);
        this.mWorkStatus = workStatus;
    }

    public void batchUploadTaskExecute(IWebSocket iWebSocket, CloudFileConfig cloudFileConfig, List<InternalCloudFile> list, final List<InternalCloudFile> list2, final IUploadSummaryListener iUploadSummaryListener) {
        BatchUploadTask batchUploadTask = this.mBatchUploadTask;
        if (batchUploadTask != null && batchUploadTask.isRunning()) {
            this.mBatchUploadTask.stopTask();
            this.mBatchUploadTask = null;
        }
        setWorkStatus(WorkStatus.RUNNING);
        this.mBatchUploadTask = new BatchUploadTask(iWebSocket, cloudFileConfig);
        this.mBatchUploadTask.start(list, new IUploadSummaryListener() { // from class: com.haima.hmcp.cloud.BatchUploadWork.2
            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
            public boolean onHangUp() {
                IUploadSummaryListener iUploadSummaryListener2 = iUploadSummaryListener;
                if (iUploadSummaryListener2 != null) {
                    return iUploadSummaryListener2.onHangUp();
                }
                return false;
            }

            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
            public void onUploadComplete(List<BatchCloudOperationListener.FileStatus> list3, List<BatchCloudOperationListener.FileStatus> list4) {
                ArrayList arrayList = new ArrayList(list4);
                List list5 = list2;
                if (list5 != null && !list5.isEmpty()) {
                    arrayList.addAll(BatchUploadWork.this.convertToFileStatus(list2, "File check failed"));
                }
                BatchUploadWork.this.setWorkStatus(WorkStatus.IDLE);
                IUploadSummaryListener iUploadSummaryListener2 = iUploadSummaryListener;
                if (iUploadSummaryListener2 != null) {
                    iUploadSummaryListener2.onUploadComplete(list3, arrayList);
                }
            }

            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
            public void onUploadError(int i10, String str) {
                BatchUploadWork.this.setWorkStatus(WorkStatus.IDLE);
                IUploadSummaryListener iUploadSummaryListener2 = iUploadSummaryListener;
                if (iUploadSummaryListener2 != null) {
                    iUploadSummaryListener2.onUploadError(i10, str);
                }
            }
        });
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void check(List<CloudFile> list, final IBaseCheckListener iBaseCheckListener) {
        setWorkStatus(WorkStatus.RUNNING);
        LogUtils.d(TAG, "cloud-file: source files size: " + list.size());
        this.mCheckFiles.clear();
        this.mCheckFailedFiles.clear();
        this.mCheckSuccessFiles.clear();
        Iterator<CloudFile> it2 = list.iterator();
        while (it2.hasNext()) {
            this.mCheckFiles.add(new InternalCloudFile(it2.next()));
        }
        ITask iTask = this.mCheckTask;
        if (iTask != null) {
            iTask.stop();
            this.mCheckTask = null;
        }
        PictureFileCheckTask pictureFileCheckTask = new PictureFileCheckTask();
        this.mCheckTask = pictureFileCheckTask;
        pictureFileCheckTask.start(this.mCheckFiles, new IWorkListener() { // from class: com.haima.hmcp.cloud.BatchUploadWork.1
            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onError(InternalCloudFile internalCloudFile, String str) {
                BatchUploadWork.this.mCheckFailedFiles.add(internalCloudFile);
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onFinish(ArrayList<InternalCloudFile> arrayList) {
                BatchUploadWork.this.setWorkStatus(WorkStatus.IDLE);
                BatchUploadWork.this.mCheckSuccessFiles.addAll(arrayList);
                IBaseCheckListener iBaseCheckListener2 = iBaseCheckListener;
                if (iBaseCheckListener2 == null || !(iBaseCheckListener2 instanceof IBatchFileCheckListener)) {
                    return;
                }
                ((IBatchFileCheckListener) iBaseCheckListener2).onCheckComplete(BatchUploadWork.this.mCheckSuccessFiles, BatchUploadWork.this.mCheckFailedFiles);
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public boolean onHangUp() {
                return false;
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onStop(int i10, String str, List<InternalCloudFile> list2) {
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onSuccess(InternalCloudFile internalCloudFile) {
            }
        });
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void execute(IWebSocket iWebSocket, List<InternalCloudFile> list, CloudFileConfig cloudFileConfig, IWorkListener iWorkListener) {
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public WorkStatus getStatus() {
        ITask iTask = this.mCheckTask;
        if (iTask != null) {
            iTask.getStatus();
        }
        BatchUploadTask batchUploadTask = this.mBatchUploadTask;
        if (batchUploadTask != null) {
            batchUploadTask.getStatus();
        }
        return this.mWorkStatus;
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void interrupt() {
        setWorkStatus(WorkStatus.IDLE);
        BatchUploadTask batchUploadTask = this.mBatchUploadTask;
        if (batchUploadTask != null) {
            batchUploadTask.stopTask();
            this.mBatchUploadTask = null;
        }
        ITask iTask = this.mCheckTask;
        if (iTask != null) {
            iTask.stop();
            this.mCheckTask = null;
        }
    }

    @Override // com.haima.hmcp.listeners.OrderListener
    public void onMessage(String str) {
    }
}
