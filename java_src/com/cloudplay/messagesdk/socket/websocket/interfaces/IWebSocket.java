package com.cloudplay.messagesdk.socket.websocket.interfaces;

import com.cloudplay.messagesdk.socket.b.h.b;
import com.cloudplay.messagesdk.socket.websocket.exceptions.WebSocketException;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface IWebSocket {
    void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException;

    void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler, b bVar) throws WebSocketException;

    void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException;

    void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler, b bVar, Map<String, String> map) throws WebSocketException;

    boolean isConnected();

    void sendClose();

    void sendClose(int i10);

    void sendClose(int i10, String str);

    void sendMessage(String str);

    void sendMessage(byte[] bArr, boolean z10);

    void sendPing();

    void sendPing(byte[] bArr);

    void sendPong();

    void sendPong(byte[] bArr);
}
