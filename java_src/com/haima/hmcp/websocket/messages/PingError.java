package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class PingError {
    public final String reason;

    public PingError(String str) {
        if (str == null) {
            this.reason = "WebSockets connection lost";
        } else {
            this.reason = str;
        }
    }
}
