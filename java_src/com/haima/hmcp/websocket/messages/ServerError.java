package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class ServerError extends Message {
    public String mStatusMessage;

    public ServerError(String str) {
        this.mStatusMessage = str;
    }
}
