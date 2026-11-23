package com.haima.hmcp.cloud;

import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.listeners.OrderListener;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class UploadWork implements ICloudFile, OrderListener {
    private static final String TAG = "UploadWork";
    private ITask mCheckTask;
    private ITask mUploadTask;
    private WorkStatus mWorkStatus = WorkStatus.IDLE;
    private List<InternalCloudFile> mCheckFiles = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public void setWorkStatus(WorkStatus workStatus) {
        LogUtils.d(TAG, "cloud-file: setWorkStatus: " + workStatus);
        this.mWorkStatus = workStatus;
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void check(List<CloudFile> list, final IBaseCheckListener iBaseCheckListener) {
        setWorkStatus(WorkStatus.RUNNING);
        LogUtils.d(TAG, "cloud-file: source files size: " + list.size());
        this.mCheckFiles.clear();
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
        pictureFileCheckTask.start(this.mCheckFiles, new IWorkListener() { // from class: com.haima.hmcp.cloud.UploadWork.1
            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onError(InternalCloudFile internalCloudFile, String str) {
                IBaseCheckListener iBaseCheckListener2 = iBaseCheckListener;
                if (iBaseCheckListener2 != null) {
                    iBaseCheckListener2.onFail(internalCloudFile, str);
                }
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onFinish(ArrayList<InternalCloudFile> arrayList) {
                IBaseCheckListener iBaseCheckListener2 = iBaseCheckListener;
                if (iBaseCheckListener2 == null || !(iBaseCheckListener2 instanceof IFileCheckListener)) {
                    return;
                }
                ((IFileCheckListener) iBaseCheckListener2).onCheckComplete(arrayList);
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
    public void execute(IWebSocket iWebSocket, List<InternalCloudFile> list, CloudFileConfig cloudFileConfig, final IWorkListener iWorkListener) {
        ITask iTask = this.mUploadTask;
        if (iTask != null && iTask.isRunning()) {
            this.mUploadTask.stop();
            this.mUploadTask = null;
        }
        UploadTask uploadTask = new UploadTask(iWebSocket, cloudFileConfig);
        this.mUploadTask = uploadTask;
        uploadTask.start(list, new IWorkListener() { // from class: com.haima.hmcp.cloud.UploadWork.2
            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onError(InternalCloudFile internalCloudFile, String str) {
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onError(internalCloudFile, str);
                }
                UploadWork.this.setWorkStatus(WorkStatus.IDLE);
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onFinish(ArrayList<InternalCloudFile> arrayList) {
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onFinish(arrayList);
                }
                UploadWork.this.setWorkStatus(WorkStatus.IDLE);
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public boolean onHangUp() {
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    return iWorkListener2.onHangUp();
                }
                return false;
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onStop(int i10, String str, List<InternalCloudFile> list2) {
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onStop(i10, str, list2);
                }
                UploadWork.this.setWorkStatus(WorkStatus.IDLE);
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onSuccess(InternalCloudFile internalCloudFile) {
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onSuccess(internalCloudFile);
                }
            }
        });
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public WorkStatus getStatus() {
        ITask iTask = this.mCheckTask;
        if (iTask != null) {
            iTask.getStatus();
        }
        ITask iTask2 = this.mUploadTask;
        if (iTask2 != null) {
            iTask2.getStatus();
        }
        return this.mWorkStatus;
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void interrupt() {
        setWorkStatus(WorkStatus.IDLE);
        ITask iTask = this.mUploadTask;
        if (iTask != null) {
            iTask.stop();
            this.mUploadTask = null;
        }
        ITask iTask2 = this.mCheckTask;
        if (iTask2 != null) {
            iTask2.stop();
            this.mCheckTask = null;
        }
    }

    @Override // com.haima.hmcp.listeners.OrderListener
    public void onMessage(String str) {
        ITask iTask;
        if (TextUtils.isEmpty(str) || !str.contains(AckOrderBean.TYPE_NAME_UPLOAD) || (iTask = this.mUploadTask) == null || iTask.isRunning()) {
            return;
        }
        ((UploadTask) this.mUploadTask).orderAckDispatcher(str);
    }
}
