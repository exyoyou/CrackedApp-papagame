package com.switfpass.pay.activity.zxing.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends LuminanceSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f82582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f82583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f82584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f82585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f82586e;

    public b(byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        super(i14, i15);
        if (i14 + i12 > i10 || i15 + i13 > i11) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f82582a = bArr;
        this.f82583b = i10;
        this.f82584c = i11;
        this.f82585d = i12;
        this.f82586e = i13;
    }

    public final int a() {
        return this.f82584c;
    }

    public final int b() {
        return this.f82583b;
    }

    public final Bitmap c() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f82582a;
        int i10 = (this.f82586e * this.f82583b) + this.f82585d;
        for (int i11 = 0; i11 < height; i11++) {
            int i12 = i11 * width;
            for (int i13 = 0; i13 < width; i13++) {
                iArr[i12 + i13] = ((bArr[i10 + i13] & 255) * 65793) | (-16777216);
            }
            i10 += this.f82583b;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmapCreateBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public final byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i10 = this.f82583b;
        if (width == i10 && height == this.f82584c) {
            return this.f82582a;
        }
        int i11 = width * height;
        byte[] bArr = new byte[i11];
        int i12 = (this.f82586e * i10) + this.f82585d;
        if (width == i10) {
            System.arraycopy(this.f82582a, i12, bArr, 0, i11);
            return bArr;
        }
        byte[] bArr2 = this.f82582a;
        for (int i13 = 0; i13 < height; i13++) {
            System.arraycopy(bArr2, i12, bArr, i13 * width, width);
            i12 += this.f82583b;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public final byte[] getRow(int i10, byte[] bArr) {
        if (i10 < 0 || i10 >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i10);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.f82582a, ((i10 + this.f82586e) * this.f82583b) + this.f82585d, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public final boolean isCropSupported() {
        return true;
    }
}
