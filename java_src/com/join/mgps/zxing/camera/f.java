package com.join.mgps.zxing.camera;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends LuminanceSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f73448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f73449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f73450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f73451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f73452e;

    public f(byte[] yuvData, int dataWidth, int dataHeight, int left, int top, int width, int height) {
        super(width, height);
        if (width + left <= dataWidth) {
            int i10 = height + top;
        }
        this.f73448a = yuvData;
        this.f73449b = dataWidth;
        this.f73450c = dataHeight;
        this.f73451d = left;
        this.f73452e = top;
    }

    public int a() {
        return this.f73450c;
    }

    public int b() {
        return this.f73449b;
    }

    public Bitmap c() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        byte[] bArr = this.f73448a;
        int i10 = (this.f73452e * this.f73449b) + this.f73451d;
        for (int i11 = 0; i11 < height; i11++) {
            int i12 = i11 * width;
            for (int i13 = 0; i13 < width; i13++) {
                iArr[i12 + i13] = ((bArr[i10 + i13] & 255) * 65793) | (-16777216);
            }
            i10 += this.f73449b;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmapCreateBitmap;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i10 = this.f73449b;
        if (width == i10 && height == this.f73450c) {
            return this.f73448a;
        }
        int i11 = width * height;
        byte[] bArr = new byte[i11];
        int i12 = (this.f73452e * i10) + this.f73451d;
        if (width == i10) {
            System.arraycopy(this.f73448a, i12, bArr, 0, i11);
            return bArr;
        }
        byte[] bArr2 = this.f73448a;
        for (int i13 = 0; i13 < height; i13++) {
            System.arraycopy(bArr2, i12, bArr, i13 * width, width);
            i12 += this.f73449b;
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
        System.arraycopy(this.f73448a, ((y10 + this.f73452e) * this.f73449b) + this.f73451d, row, 0, width);
        return row;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }
}
