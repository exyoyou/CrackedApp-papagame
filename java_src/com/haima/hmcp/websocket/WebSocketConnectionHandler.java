package com.haima.hmcp.websocket;

import com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler;
import com.haima.hmcp.websocket.types.ConnectionResponse;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketConnectionHandler implements IWebSocketConnectionHandler {
    private WebSocketConnection mConnection;

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onClose(int i10, String str) {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onConnect(ConnectionResponse connectionResponse) {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onHeartBeat(IWebSocketConnectionHandler.HeartBeatState heartBeatState, String str) {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onMessage(String str) {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onOpen() {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onPing() {
        this.mConnection.sendPong();
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onPong() {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void setConnection(WebSocketConnection webSocketConnection) {
        this.mConnection = webSocketConnection;
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onMessage(byte[] bArr, boolean z10) {
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onPing(byte[] bArr) {
        this.mConnection.sendPong(bArr);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
    public void onPong(byte[] bArr) {
    }
}
