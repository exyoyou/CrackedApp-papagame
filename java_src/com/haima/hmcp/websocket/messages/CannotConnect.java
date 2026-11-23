package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class CannotConnect extends Message {
    public final String reason;

    public CannotConnect(String str) {
        this.reason = str;
    }
}
