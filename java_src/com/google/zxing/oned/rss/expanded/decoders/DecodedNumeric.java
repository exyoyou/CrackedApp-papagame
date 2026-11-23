package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes5.dex */
final class DecodedNumeric extends DecodedObject {
    static final int FNC1 = 10;
    private final int firstDigit;
    private final int secondDigit;

    DecodedNumeric(int i10, int i11, int i12) {
        super(i10);
        this.firstDigit = i11;
        this.secondDigit = i12;
        if (i11 < 0 || i11 > 10) {
            throw new IllegalArgumentException("Invalid firstDigit: " + i11);
        }
        if (i12 < 0 || i12 > 10) {
            throw new IllegalArgumentException("Invalid secondDigit: " + i12);
        }
    }

    int getFirstDigit() {
        return this.firstDigit;
    }

    int getSecondDigit() {
        return this.secondDigit;
    }

    int getValue() {
        return (this.firstDigit * 10) + this.secondDigit;
    }

    boolean isAnyFNC1() {
        return this.firstDigit == 10 || this.secondDigit == 10;
    }

    boolean isFirstDigitFNC1() {
        return this.firstDigit == 10;
    }

    boolean isSecondDigitFNC1() {
        return this.secondDigit == 10;
    }
}
