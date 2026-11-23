package com.haima.hmcp.cloud;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.listeners.OrderListener;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class DownloadWork implements ICloudFile, OrderListener {
    private static final String TAG = "DownloadWork";
    private Context mContext;
    private ITask mDownloadTask;
    private WorkStatus mWorkStatus = WorkStatus.IDLE;

    public DownloadWork(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWorkStatus(WorkStatus workStatus) {
        LogUtils.d(TAG, "cloud-file: setWorkStatus: " + workStatus);
        this.mWorkStatus = workStatus;
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void check(List<CloudFile> list, IBaseCheckListener iBaseCheckListener) {
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void execute(IWebSocket iWebSocket, List<InternalCloudFile> list, CloudFileConfig cloudFileConfig, final IWorkListener iWorkListener) {
        setWorkStatus(WorkStatus.RUNNING);
        LogUtils.d(TAG, "cloud-file: source files size: " + list.size());
        ITask iTask = this.mDownloadTask;
        if (iTask != null && iTask.isRunning()) {
            this.mDownloadTask.stop();
            this.mDownloadTask = null;
        }
        DownloadTask downloadTask = new DownloadTask(this.mContext, iWebSocket, cloudFileConfig);
        this.mDownloadTask = downloadTask;
        downloadTask.start(list, new IWorkListener() { // from class: com.haima.hmcp.cloud.DownloadWork.1
            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onError(InternalCloudFile internalCloudFile, String str) {
                DownloadWork.this.setWorkStatus(WorkStatus.IDLE);
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onError(internalCloudFile, str);
                }
            }

            @Override // com.haima.hmcp.cloud.IWorkListener
            public void onFinish(ArrayList<InternalCloudFile> arrayList) {
                DownloadWork.this.setWorkStatus(WorkStatus.IDLE);
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onFinish(arrayList);
                }
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
                DownloadWork.this.setWorkStatus(WorkStatus.IDLE);
                IWorkListener iWorkListener2 = iWorkListener;
                if (iWorkListener2 != null) {
                    iWorkListener2.onStop(i10, str, list2);
                }
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
        ITask iTask = this.mDownloadTask;
        if (iTask != null) {
            iTask.getStatus();
        }
        return this.mWorkStatus;
    }

    @Override // com.haima.hmcp.cloud.ICloudFile
    public void interrupt() {
        setWorkStatus(WorkStatus.IDLE);
        ITask iTask = this.mDownloadTask;
        if (iTask != null) {
            iTask.stop();
            this.mDownloadTask = null;
        }
    }

    @Override // com.haima.hmcp.listeners.OrderListener
    public void onMessage(String str) {
        ITask iTask;
        if (TextUtils.isEmpty(str) || !str.contains(AckOrderBean.TYPE_NAME_DOWNLOAD) || (iTask = this.mDownloadTask) == null || iTask.isRunning()) {
            return;
        }
        ((DownloadTask) this.mDownloadTask).orderAckDispatcher(str);
    }
}
