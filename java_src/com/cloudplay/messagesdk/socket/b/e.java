package com.cloudplay.messagesdk.socket.b;

import com.cloudplay.messagesdk.socket.SocketType;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler;

/* JADX INFO: loaded from: classes9.dex */
public class e implements IWebSocketConnectionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f24164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SocketType f24165b;

    public e(SocketType socketType) {
        this.f24165b = socketType;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void onConnect(com.cloudplay.messagesdk.socket.b.h.a aVar) {
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void onPing() {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnectionHandler", "onPing() " + this.f24165b);
        this.f24164a.sendPong();
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void onPong() {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnectionHandler", "onPone() " + this.f24165b);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void setConnection(d dVar) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnectionHandler", "setConnection() " + this.f24165b);
        this.f24164a = dVar;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void onPong(byte[] bArr) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnectionHandler", "onPong(byte[] payload)" + this.f24165b);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IWebSocketConnectionHandler
    public void onPing(byte[] bArr) {
        com.cloudplay.messagesdk.a.e.a("WebSocketConnectionHandler", "onPine(byte[] payload)" + this.f24165b);
        this.f24164a.sendPong(bArr);
    }
}
