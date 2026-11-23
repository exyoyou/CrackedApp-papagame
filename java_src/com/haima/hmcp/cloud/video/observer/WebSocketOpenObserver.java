package com.haima.hmcp.cloud.video.observer;

import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.listeners.WebSocketObserver;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketOpenObserver implements WebSocketObserver {
    private WebSocketStateCallback mWebSocketStateCallback;

    public interface WebSocketStateCallback {
        void onClose();

        void onOpen();
    }

    public WebSocketOpenObserver(WebSocketStateCallback webSocketStateCallback) {
        this.mWebSocketStateCallback = webSocketStateCallback;
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onMessage(WebSocketManager.WebSocketType webSocketType, String str) {
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onObserver(WebSocketManager.WebSocketType webSocketType, int i10) {
        WebSocketStateCallback webSocketStateCallback = this.mWebSocketStateCallback;
        if (webSocketStateCallback != null) {
            if (i10 == 1) {
                webSocketStateCallback.onOpen();
            } else {
                webSocketStateCallback.onClose();
            }
        }
    }

    public void release() {
        this.mWebSocketStateCallback = null;
    }
}
