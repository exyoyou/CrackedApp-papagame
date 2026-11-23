package com.cloudplay.messagesdk.entity;

import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class HMBinaryMessage extends HMMessage {
    public String mid;
    private byte[] payload;

    public String getMid() {
        return this.mid;
    }

    public byte[] getPayload() {
        return this.payload;
    }

    public void setMid(String str) {
        this.mid = str;
    }

    public void setPayload(byte[] bArr) {
        this.payload = bArr;
    }

    public String toString() {
        return "HMBinaryMessage{payload=" + Arrays.toString(this.payload) + ", mid='" + this.mid + "'}";
    }
}
