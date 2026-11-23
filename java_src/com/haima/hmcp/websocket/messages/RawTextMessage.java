package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class RawTextMessage extends Message {
    public byte[] mPayload;

    public RawTextMessage(byte[] bArr) {
        this.mPayload = bArr;
    }
}
