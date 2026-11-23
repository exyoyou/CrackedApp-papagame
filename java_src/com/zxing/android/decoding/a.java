package com.zxing.android.decoding;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;

/* JADX INFO: loaded from: classes8.dex */
public class a extends LuminanceSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f90475a;

    public a(Bitmap bitmap) {
        super(bitmap.getWidth(), bitmap.getHeight());
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        this.f90475a = new byte[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, getWidth(), 0, 0, getWidth(), getHeight());
        for (int i10 = 0; i10 < width; i10++) {
            this.f90475a[i10] = (byte) iArr[i10];
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        return this.f90475a;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int y10, byte[] row) {
        System.arraycopy(this.f90475a, y10 * getWidth(), row, 0, getWidth());
        return row;
    }
}
