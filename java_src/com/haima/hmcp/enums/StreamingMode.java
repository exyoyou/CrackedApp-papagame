package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum StreamingMode {
    FLUENCY_FIRST(0),
    IMAGE_QUALITY_FIRST(1);

    private final int value;

    StreamingMode(int i10) {
        this.value = i10;
    }

    public int getValue() {
        return this.value;
    }
}
