package com.google.zxing.pdf417.encoder;

/* JADX INFO: loaded from: classes5.dex */
final class BarcodeRow {
    private int currentLocation = 0;
    private final byte[] row;

    BarcodeRow(int i10) {
        this.row = new byte[i10];
    }

    void addBar(boolean z10, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.currentLocation;
            this.currentLocation = i12 + 1;
            set(i12, z10);
        }
    }

    byte[] getRow() {
        return this.row;
    }

    byte[] getScaledRow(int i10) {
        int length = this.row.length * i10;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            bArr[i11] = this.row[i11 / i10];
        }
        return bArr;
    }

    void set(int i10, byte b10) {
        this.row[i10] = b10;
    }

    void set(int i10, boolean z10) {
        this.row[i10] = z10 ? (byte) 1 : (byte) 0;
    }
}
