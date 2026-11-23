package com.haima.hmcp.cloud.video.job;

import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketOpenTimerJob implements Runnable {
    private static final String TAG = "WebSocketOpenTimerJob";
    private boolean cancel;
    private WebSocketOpenTimerCallback mWebSocketOpenTimerCallback;

    public interface WebSocketOpenTimerCallback {
        void onTimeOut();
    }

    public WebSocketOpenTimerJob(WebSocketOpenTimerCallback webSocketOpenTimerCallback) {
        this.mWebSocketOpenTimerCallback = webSocketOpenTimerCallback;
    }

    public void cancel() {
        this.cancel = true;
        this.mWebSocketOpenTimerCallback = null;
        LogUtils.d(TAG, "download-file: web-socket open timer job cancel");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.cancel) {
            return;
        }
        WebSocketOpenTimerCallback webSocketOpenTimerCallback = this.mWebSocketOpenTimerCallback;
        if (webSocketOpenTimerCallback != null) {
            webSocketOpenTimerCallback.onTimeOut();
        }
        LogUtils.d(TAG, "download-file: web-socket open timer time out");
    }
}
