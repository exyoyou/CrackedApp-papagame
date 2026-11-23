package com.google.zxing;

import external.org.apache.commons.lang3.d;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    protected LuminanceSource(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    public LuminanceSource crop(int i10, int i11, int i12, int i13) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public final int getHeight() {
        return this.height;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i10, byte[] bArr);

    public final int getWidth() {
        return this.width;
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation.");
    }

    public String toString() {
        char c10;
        int i10 = this.width;
        byte[] row = new byte[i10];
        StringBuilder sb2 = new StringBuilder(this.height * (i10 + 1));
        for (int i11 = 0; i11 < this.height; i11++) {
            row = getRow(i11, row);
            for (int i12 = 0; i12 < this.width; i12++) {
                int i13 = row[i12] & 255;
                if (i13 < 64) {
                    c10 = '#';
                } else if (i13 < 128) {
                    c10 = '+';
                } else {
                    c10 = i13 < 192 ? d.f90941a : ' ';
                }
                sb2.append(c10);
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
