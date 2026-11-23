package com.cloudplay.messagesdk.socket.websocket.interfaces;

import com.cloudplay.messagesdk.socket.b.d;
import com.cloudplay.messagesdk.socket.b.h.a;

/* JADX INFO: loaded from: classes9.dex */
public interface IWebSocketConnectionHandler {
    public static final int CLOSE_CANNOT_CONNECT = 2;
    public static final int CLOSE_CONNECTION_LOST = 3;
    public static final int CLOSE_INTERNAL_ERROR = 5;
    public static final int CLOSE_NORMAL = 1;
    public static final int CLOSE_PROTOCOL_ERROR = 4;
    public static final int CLOSE_RECONNECT = 7;
    public static final int CLOSE_SERVER_ERROR = 6;

    void onClose(int i10, String str);

    void onConnect(a aVar);

    void onMessage(String str);

    void onMessage(byte[] bArr, boolean z10);

    void onOpen();

    void onPing();

    void onPing(byte[] bArr);

    void onPong();

    void onPong(byte[] bArr);

    void setConnection(d dVar);
}
