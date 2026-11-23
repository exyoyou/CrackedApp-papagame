package org.webrtc.haima.beans;

import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
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
            Logging.d(TAG, "WebSocketConfig: is null");
            this.mWebSocketConfig = new WebSocketConfig();
        }
        if (this.mWebSocketConfig.getInterval() <= 0) {
            this.mWebSocketConfig.setInterval(60000);
        }
        if (this.mWebSocketConfig.getDelay() <= 0) {
            this.mWebSocketConfig.setDelay(100);
        }
        return this.mWebSocketConfig;
    }

    public void setWebSocketConfig(WebSocketConfig webSocketConfig) {
        this.mWebSocketConfig = webSocketConfig;
        Logging.d(TAG, "WebSocketConfig:" + webSocketConfig);
    }
}
