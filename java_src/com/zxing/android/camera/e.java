package com.zxing.android.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;

/* JADX INFO: loaded from: classes8.dex */
public final class e extends LuminanceSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f90458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f90459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f90460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f90461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f90462e;

    public e(byte[] yuvData, int dataWidth, int dataHeight, int left, int top, int width, int height, boolean reverseHorizontal) {
        super(width, height);
        if (left + width > dataWidth || top + height > dataHeight) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f90458a = yuvData;
        this.f90459b = dataWidth;
        this.f90460c = dataHeight;
        this.f90461d = left;
        this.f90462e = top;
        if (reverseHorizontal) {
            b(width, height);
        }
    }

    private void b(int width, int height) {
        byte[] bArr = this.f90458a;
        int i10 = (this.f90462e * this.f90459b) + this.f90461d;
        int i11 = 0;
        while (i11 < height) {
            int i12 = (width / 2) + i10;
            int i13 = (i10 + width) - 1;
            int i14 = i10;
            while (i14 < i12) {
                byte b10 = bArr[i14];
                bArr[i14] = bArr[i13];
                bArr[i13] = b10;
                i14++;
                i13--;
            }
            i11++;
            i10 += this.f90459b;
        }
    }

    public Bitmap a() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f90458a;
        int i10 = (this.f90462e * this.f90459b) + this.f90461d;
        for (int i11 = 0; i11 < height; i11++) {
            int i12 = i11 * width;
            for (int i13 = 0; i13 < width; i13++) {
                iArr[i12 + i13] = ((bArr[i10 + i13] & 255) * 65793) | (-16777216);
            }
            i10 += this.f90459b;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmapCreateBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i10 = this.f90459b;
        if (width == i10 && height == this.f90460c) {
            return this.f90458a;
        }
        int i11 = width * height;
        byte[] bArr = new byte[i11];
        int i12 = (this.f90462e * i10) + this.f90461d;
        if (width == i10) {
            System.arraycopy(this.f90458a, i12, bArr, 0, i11);
            return bArr;
        }
        byte[] bArr2 = this.f90458a;
        for (int i13 = 0; i13 < height; i13++) {
            System.arraycopy(bArr2, i12, bArr, i13 * width, width);
            i12 += this.f90459b;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int y10, byte[] row) {
        if (y10 < 0 || y10 >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + y10);
        }
        int width = getWidth();
        if (row == null || row.length < width) {
            row = new byte[width];
        }
        try {
            System.arraycopy(this.f90458a, ((y10 + this.f90462e) * this.f90459b) + this.f90461d, row, 0, width);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return row;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }
}
