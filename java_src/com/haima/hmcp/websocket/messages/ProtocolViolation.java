package com.haima.hmcp.websocket.messages;

import com.haima.hmcp.websocket.exceptions.WebSocketException;

/* JADX INFO: loaded from: classes5.dex */
public class ProtocolViolation extends Message {
    public WebSocketException mException;

    public ProtocolViolation(WebSocketException webSocketException) {
        this.mException = webSocketException;
    }
}
