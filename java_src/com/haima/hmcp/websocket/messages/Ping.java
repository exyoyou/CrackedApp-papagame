package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class Ping extends Message {
    public byte[] mPayload;

    public Ping() {
        this.mPayload = null;
    }

    public Ping(byte[] bArr) {
        this.mPayload = bArr;
    }
}
