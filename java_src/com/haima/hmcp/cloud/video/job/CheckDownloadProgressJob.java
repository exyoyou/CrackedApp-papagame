package com.haima.hmcp.cloud.video.job;

import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class CheckDownloadProgressJob implements Runnable {
    private static final String TAG = "CheckDownloadProgressJob";
    private boolean cancel = false;
    private InnerDownloadCallback mCallback;
    private long mCheckedProgress;
    private int mFreezeCountMax;
    private int mProgressFreezeCount;

    public CheckDownloadProgressJob(DownloadConfig downloadConfig, InnerDownloadCallback innerDownloadCallback) {
        this.mCallback = innerDownloadCallback;
        if (downloadConfig != null) {
            this.mFreezeCountMax = downloadConfig.progressFreezeCounts;
        } else {
            this.mFreezeCountMax = 10;
        }
    }

    public void cancel() {
        LogUtils.d(TAG, "download-file: file download progress checker canceled");
        this.cancel = true;
        this.mProgressFreezeCount = 0;
        this.mCallback = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        InnerDownloadCallback innerDownloadCallback;
        if (this.cancel || (innerDownloadCallback = this.mCallback) == null) {
            LogUtils.d(TAG, "download-file: file download progress checker is canceled when running");
            return;
        }
        long jOnProgressCheck = innerDownloadCallback.onProgressCheck();
        if (jOnProgressCheck == -1) {
            LogUtils.d(TAG, "download-file: file download progress checker error: progress == -1");
            cancel();
            return;
        }
        if (jOnProgressCheck > this.mCheckedProgress) {
            this.mProgressFreezeCount = 0;
        } else {
            this.mProgressFreezeCount++;
        }
        LogUtils.d(TAG, "download-file: file download progress checker: lastProgress=" + this.mCheckedProgress + ", currentProgress=" + jOnProgressCheck + ", progressFreezeCount=" + this.mProgressFreezeCount);
        this.mCheckedProgress = jOnProgressCheck;
        if (this.mProgressFreezeCount == this.mFreezeCountMax) {
            InnerDownloadCallback innerDownloadCallback2 = this.mCallback;
            if (innerDownloadCallback2 != null) {
                innerDownloadCallback2.onProgressFreeze();
            }
            this.mProgressFreezeCount = 0;
        }
    }
}
