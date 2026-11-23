package com.haima.hmcp.listeners;

import com.haima.hmcp.business.WebSocketManager;

/* JADX INFO: loaded from: classes5.dex */
public interface WebSocketObserver {
    public static final int CLOSE = 2;
    public static final int OPEN = 1;

    void onMessage(WebSocketManager.WebSocketType webSocketType, String str);

    void onObserver(WebSocketManager.WebSocketType webSocketType, int i10);
}
