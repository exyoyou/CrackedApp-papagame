package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
final class BarcodeMatrix {
    private int currentRow;
    private final int height;
    private final BarcodeRow[] matrix;
    private final int width;

    BarcodeMatrix(int i10, int i11) {
        int i12 = i10 + 2;
        BarcodeRow[] barcodeRowArr = new BarcodeRow[i12];
        this.matrix = barcodeRowArr;
        int length = barcodeRowArr.length;
        for (int i13 = 0; i13 < length; i13++) {
            this.matrix[i13] = new BarcodeRow(((i11 + 4) * 17) + 1);
        }
        this.width = i11 * 17;
        this.height = i12;
        this.currentRow = 0;
    }

    BarcodeRow getCurrentRow() {
        return this.matrix[this.currentRow];
    }

    byte[][] getMatrix() {
        return getScaledMatrix(1, 1);
    }

    byte[][] getScaledMatrix(int i10) {
        return getScaledMatrix(i10, i10);
    }

    void set(int i10, int i11, byte b10) {
        this.matrix[i11].set(i10, b10);
    }

    void setMatrix(int i10, int i11, boolean z10) {
        set(i10, i11, z10 ? (byte) 1 : (byte) 0);
    }

    void startRow() {
        this.currentRow++;
    }

    byte[][] getScaledMatrix(int i10, int i11) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.height * i11, this.width * i10);
        int i12 = this.height * i11;
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[(i12 - i13) - 1] = this.matrix[i13 / i11].getScaledRow(i10);
        }
        return bArr;
    }
}
