package com.haima.hmcp.cloud.video.job;

import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class QueryTimerJob implements Runnable {
    private static final String TAG = "QueryTimerJob";
    private boolean cancel;
    private InnerDownloadCallback mCallback;

    public QueryTimerJob(InnerDownloadCallback innerDownloadCallback) {
        this.mCallback = innerDownloadCallback;
    }

    public void cancel() {
        this.cancel = true;
        this.mCallback = null;
        LogUtils.d(TAG, "download-file: query file job cancel");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.cancel) {
            return;
        }
        InnerDownloadCallback innerDownloadCallback = this.mCallback;
        if (innerDownloadCallback != null) {
            innerDownloadCallback.onQueryTimeOut();
        }
        LogUtils.d(TAG, "download-file: query file job time out");
    }
}
