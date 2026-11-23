package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes5.dex */
final class DecodedInformation extends DecodedObject {
    private final String newString;
    private final boolean remaining;
    private final int remainingValue;

    DecodedInformation(int i10, String str) {
        super(i10);
        this.newString = str;
        this.remaining = false;
        this.remainingValue = 0;
    }

    String getNewString() {
        return this.newString;
    }

    int getRemainingValue() {
        return this.remainingValue;
    }

    boolean isRemaining() {
        return this.remaining;
    }

    DecodedInformation(int i10, String str, int i11) {
        super(i10);
        this.remaining = true;
        this.remainingValue = i11;
        this.newString = str;
    }
}
