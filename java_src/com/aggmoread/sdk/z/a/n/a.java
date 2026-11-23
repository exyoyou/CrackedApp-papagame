package com.aggmoread.sdk.z.a.n;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f3739a;

    private a() {
    }

    private int a(int i10, int i11, int i12, int i13) {
        double dMin = Math.min(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > dMin) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    private int a(int i10, int i11, int i12, int i13, ImageView.ScaleType scaleType) {
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

    public Bitmap a(int i10, int i11, Bitmap.Config config, ImageView.ScaleType scaleType, byte[] bArr) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (i10 != 0 || i11 != 0) {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i12 = options.outWidth;
            int i13 = options.outHeight;
            int iA = a(i10, i11, i12, i13, scaleType);
            int iA2 = a(i11, i10, i13, i12, scaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i12, i13, iA, iA2);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray == null) {
                return bitmapDecodeByteArray;
            }
            if (bitmapDecodeByteArray.getWidth() <= iA && bitmapDecodeByteArray.getHeight() <= iA2) {
                return bitmapDecodeByteArray;
            }
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
            bitmapDecodeByteArray.recycle();
            return bitmapCreateScaledBitmap;
        }
        options.inPreferredConfig = config;
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static synchronized a a() {
        if (f3739a == null) {
            synchronized (a.class) {
                if (f3739a == null) {
                    f3739a = new a();
                }
            }
        }
        return f3739a;
    }
}
