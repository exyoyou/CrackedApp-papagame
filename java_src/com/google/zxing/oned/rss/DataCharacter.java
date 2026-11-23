package com.google.zxing.oned.rss;

/* JADX INFO: loaded from: classes5.dex */
public class DataCharacter {
    private final int checksumPortion;
    private final int value;

    public DataCharacter(int i10, int i11) {
        this.value = i10;
        this.checksumPortion = i11;
    }

    public int getChecksumPortion() {
        return this.checksumPortion;
    }

    public int getValue() {
        return this.value;
    }
}
