package com.haima.hmcp.cloud.video.job;

import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.cloud.video.strategy.KeepAliveWaitStrategy;

/* JADX INFO: loaded from: classes5.dex */
public class KeepAliveTimerJob implements Runnable {
    private boolean cancel;
    private InnerCloudFile mInnerCloudFile;
    private KeepAliveTimerCallback mKeepAliveTimerCallback;
    private KeepAliveWaitStrategy mWaitStrategy;

    public interface KeepAliveTimerCallback {
        void onTimeOut(InnerCloudFile innerCloudFile, KeepAliveWaitStrategy keepAliveWaitStrategy);
    }

    public KeepAliveTimerJob(InnerCloudFile innerCloudFile, KeepAliveTimerCallback keepAliveTimerCallback) {
        this.mInnerCloudFile = innerCloudFile;
        this.mKeepAliveTimerCallback = keepAliveTimerCallback;
    }

    public void cancel() {
        this.cancel = true;
        this.mKeepAliveTimerCallback = null;
        this.mInnerCloudFile = null;
        this.mWaitStrategy = null;
    }

    public InnerCloudFile getInnerCloudFile() {
        return this.mInnerCloudFile;
    }

    public KeepAliveWaitStrategy getStrategy() {
        return this.mWaitStrategy;
    }

    @Override // java.lang.Runnable
    public void run() {
        KeepAliveTimerCallback keepAliveTimerCallback;
        if (this.cancel || (keepAliveTimerCallback = this.mKeepAliveTimerCallback) == null) {
            return;
        }
        keepAliveTimerCallback.onTimeOut(this.mInnerCloudFile, this.mWaitStrategy);
    }

    public void setStrategy(KeepAliveWaitStrategy keepAliveWaitStrategy) {
        this.mWaitStrategy = keepAliveWaitStrategy;
    }
}
