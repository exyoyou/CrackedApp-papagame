package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum StreamType {
    RTMP(0),
    WEBRTC(1);

    private int type;

    StreamType(int i10) {
        this.type = i10;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "StreamType{type=" + this.type + '}';
    }
}
