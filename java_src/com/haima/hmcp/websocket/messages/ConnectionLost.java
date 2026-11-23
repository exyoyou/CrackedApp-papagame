package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class ConnectionLost extends Message {
    public final String reason;

    public ConnectionLost(String str) {
        if (str == null) {
            this.reason = "WebSockets connection lost";
        } else {
            this.reason = str;
        }
    }
}
