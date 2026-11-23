package com.haima.hmcp.websocket.interfaces;

import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface IWebSocket {
    void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException;

    void connect(String str, IWebSocketConnectionHandler iWebSocketConnectionHandler, WebSocketOptions webSocketOptions) throws WebSocketException;

    void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler) throws WebSocketException;

    void connect(String str, String[] strArr, IWebSocketConnectionHandler iWebSocketConnectionHandler, WebSocketOptions webSocketOptions, Map<String, String> map) throws WebSocketException;

    void cutOff();

    void cutOff(boolean z10);

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
