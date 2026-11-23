package com.haima.hmcp.beans;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class PlayNotification implements Serializable {
    public static final int AVAILABLE_BANDWIDTH = 2;
    private static final long serialVersionUID = 1;
    public byte[] data;
    public Object payload;
    public int type = -1;
    public long value;

    public byte[] getData() {
        return this.data;
    }

    public Object getPayload() {
        return this.payload;
    }

    public int getType() {
        return this.type;
    }

    public long getValue() {
        return this.value;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public void setPayload(Object obj) {
        this.payload = obj;
    }

    public void setType(int i10) {
        this.type = i10;
    }

    public void setValue(long j10) {
        this.value = j10;
    }

    public String toString() {
        return "PlayNotification{type=" + this.type + ", value=" + this.value + ", data=" + Arrays.toString(this.data) + ", payload=" + this.payload + '}';
    }
}
