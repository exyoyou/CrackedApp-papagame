package com.haima.hmcp.websocket.interfaces;

import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.websocket.types.ConnectionResponse;

/* JADX INFO: loaded from: classes5.dex */
public interface IWebSocketConnectionHandler {
    public static final int CLOSE_CANNOT_CONNECT = 2;
    public static final int CLOSE_CONNECTION_LOST = 3;
    public static final int CLOSE_INTERNAL_ERROR = 5;
    public static final int CLOSE_NORMAL = 1;
    public static final int CLOSE_PROTOCOL_ERROR = 4;
    public static final int CLOSE_RECONNECT = 7;
    public static final int CLOSE_SERVER_ERROR = 6;

    public enum HeartBeatState {
        SEND_PING_SUCCESS,
        SEND_PING_FAIL,
        RECEIVE_PANG_SUCCESS
    }

    void onClose(int i10, String str);

    void onConnect(ConnectionResponse connectionResponse);

    void onHeartBeat(HeartBeatState heartBeatState, String str);

    void onMessage(String str);

    void onMessage(byte[] bArr, boolean z10);

    void onOpen();

    void onPing();

    void onPing(byte[] bArr);

    void onPong();

    void onPong(byte[] bArr);

    void setConnection(WebSocketConnection webSocketConnection);
}
