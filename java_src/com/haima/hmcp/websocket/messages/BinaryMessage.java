package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class BinaryMessage extends Message {
    public byte[] mPayload;

    public BinaryMessage(byte[] bArr) {
        this.mPayload = bArr;
    }
}
