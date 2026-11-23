package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class Pong extends Message {
    public byte[] mPayload;

    public Pong() {
        this.mPayload = null;
    }

    public Pong(byte[] bArr) {
        this.mPayload = bArr;
    }
}
