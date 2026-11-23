package io.netty.handler.codec.http.websocketx.extensions;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocketClientExtensionHandshaker {
    WebSocketClientExtension handshakeExtension(WebSocketExtensionData webSocketExtensionData);

    WebSocketExtensionData newRequestData();
}
