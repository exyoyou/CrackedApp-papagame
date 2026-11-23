package com.haima.hmcp.cloud.video.job;

import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadRetryJob implements Runnable {
    private static final String TAG = "DownloadRetryJob";
    private boolean cancel;
    private DownloadRetryCallback mCallback;
    private InnerCloudFile mInnerCloudFile;

    public interface DownloadRetryCallback {
        void onDownloadRetry(InnerCloudFile innerCloudFile);
    }

    public DownloadRetryJob(InnerCloudFile innerCloudFile, DownloadRetryCallback downloadRetryCallback) {
        this.mInnerCloudFile = innerCloudFile;
        this.mCallback = downloadRetryCallback;
    }

    public void cancel() {
        this.cancel = true;
        this.mCallback = null;
        LogUtils.d(TAG, "download-file: download retry job cancel");
    }

    public InnerCloudFile getFile() {
        return this.mInnerCloudFile;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.cancel) {
            return;
        }
        DownloadRetryCallback downloadRetryCallback = this.mCallback;
        if (downloadRetryCallback != null) {
            downloadRetryCallback.onDownloadRetry(this.mInnerCloudFile);
        }
        LogUtils.d(TAG, "download-file: download retry job is execute");
    }
}
