package com.cloudplay.messagesdk.socket;

/* JADX INFO: loaded from: classes9.dex */
public interface OnWebSocketListener {
    void onConnect(SocketType socketType);

    void onDisConnect(SocketType socketType, int i10, String str);

    void onMessage(SocketType socketType, String str);

    void onMessage(SocketType socketType, byte[] bArr, boolean z10);
}
