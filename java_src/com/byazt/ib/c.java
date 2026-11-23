package com.byazt.ib;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1659, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ImageView.ScaleType f15291c = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config tt = Bitmap.Config.ARGB_4444;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15292a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15295n;
    public final int sp;
    public int uj;
    public final Bitmap.Config ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ImageView.ScaleType f15296x;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15294i = 3840;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f15293da = 104857600;

    public c(int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, int i12, int i13) {
        this.ve = config;
        this.uj = i10;
        this.f15295n = i11;
        this.f15296x = scaleType;
        this.f15292a = i12;
        this.sp = i13;
        c(i10, i11);
    }

    public static int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        double dMin = Math.min(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        if (i14 > 0 && i15 > 0) {
            dMin = Math.max(dMin, Math.min(((double) Math.max(i10, i11)) / ((double) Math.max(i14, i15)), ((double) Math.min(i10, i11)) / ((double) Math.min(i14, i15))));
        }
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > dMin) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    private static int c(int i10, int i11, int i12, int i13, ImageView.ScaleType scaleType) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i10 == 0 ? i12 : i10;
        }
        if (i10 == 0) {
            return (int) (((double) i12) * (((double) i11) / ((double) i13)));
        }
        if (i11 == 0) {
            return i10;
        }
        double d10 = ((double) i13) / ((double) i12);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d11 = i11;
            return ((double) i10) * d10 < d11 ? (int) (d11 / d10) : i10;
        }
        double d12 = i11;
        return ((double) i10) * d10 > d12 ? (int) (d12 / d10) : i10;
    }

    public Bitmap c(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.uj == 0 && this.f15295n == 0) {
            options.inPreferredConfig = this.ve;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int iC = c(this.uj, this.f15295n, i10, i11, this.f15296x);
            int iC2 = c(this.f15295n, this.uj, i11, i10, this.f15296x);
            options.inJustDecodeBounds = false;
            options.inSampleSize = c(i10, i11, iC, iC2, this.f15292a, this.sp);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iC || bitmapDecodeByteArray.getHeight() > iC2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iC, iC2, true);
                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (bitmapDecodeByteArray != null && bitmapDecodeByteArray.getByteCount() > 104857600) {
            int width = bitmapDecodeByteArray.getWidth() / 2;
            int height = bitmapDecodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeByteArray, width, height, true);
                if (bitmapCreateScaledBitmap2 != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                return bitmapCreateScaledBitmap2;
            }
        }
        return bitmapDecodeByteArray;
    }

    private void c(int i10, int i11) {
        if (i10 > 3840 && i11 > 3840) {
            if (i10 > i11) {
                this.uj = 3840;
                this.f15295n = (i11 * 3840) / i10;
                return;
            } else {
                this.uj = (i10 * 3840) / i11;
                this.f15295n = 3840;
                return;
            }
        }
        if (i10 > 3840) {
            this.uj = 3840;
            this.f15295n = (i11 * 3840) / i10;
        } else if (i11 > 3840) {
            this.uj = (i10 * 3840) / i11;
            this.f15295n = 3840;
        }
    }
}
