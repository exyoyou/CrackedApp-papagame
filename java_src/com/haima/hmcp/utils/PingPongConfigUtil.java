package com.haima.hmcp.utils;

import com.haima.hmcp.beans.WebSocketConfig;

/* JADX INFO: loaded from: classes5.dex */
public class PingPongConfigUtil {
    public static final String KEY_COLON = ":";
    private static final int PING_DEFAULT_DELAY = 100;
    private static final int PING_DEFAULT_INTERVAL = 60000;
    private static final String TAG = "PingPongConfigUtil";
    private static volatile PingPongConfigUtil mInstance;
    private WebSocketConfig mWebSocketConfig;

    private PingPongConfigUtil() {
    }

    public static PingPongConfigUtil getInstance() {
        if (mInstance == null) {
            synchronized (PingPongConfigUtil.class) {
                if (mInstance == null) {
                    mInstance = new PingPongConfigUtil();
                }
            }
        }
        return mInstance;
    }

    public WebSocketConfig getWebSocketConfig() {
        if (this.mWebSocketConfig == null) {
            LogUtils.d(TAG, "WebSocketConfig: is null");
            this.mWebSocketConfig = new WebSocketConfig();
        }
        if (this.mWebSocketConfig.getPing2Interval() <= 0) {
            this.mWebSocketConfig.setPing2Interval(60000);
        }
        if (this.mWebSocketConfig.getInstancePingPongCost() <= 0) {
            this.mWebSocketConfig.setInstancePingPongCost(100);
        }
        return this.mWebSocketConfig;
    }

    public void setWebSocketConfig(WebSocketConfig webSocketConfig) {
        this.mWebSocketConfig = webSocketConfig;
        LogUtils.d(TAG, "WebSocketConfig:" + webSocketConfig);
    }
}
