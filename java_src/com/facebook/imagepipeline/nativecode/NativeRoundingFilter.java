package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeRoundingFilter {
    static {
        d.a();
    }

    public static void a(Bitmap bitmap, int radiusTopLeft, int radiusTopRight, int radiusBottomRight, int radiusBottomLeft) {
        nativeAddRoundedCornersFilter(bitmap, radiusTopLeft, radiusTopRight, radiusBottomRight, radiusBottomLeft);
    }

    public static void b(Bitmap bitmap) {
        toCircle(bitmap, false);
    }

    public static void c(Bitmap bitmap) {
        toCircleFast(bitmap, false);
    }

    public static void d(Bitmap bitmap, int colorARGB, int borderWidthPx, boolean antiAliased) {
        i.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleWithBorderFilter(bitmap, colorARGB, borderWidthPx, antiAliased);
    }

    @DoNotStrip
    private static native void nativeAddRoundedCornersFilter(Bitmap bitmap, int radiusTopLeft, int radiusTopRight, int radiusBottomRight, int radiusBottomLeft);

    @DoNotStrip
    private static native void nativeToCircleFastFilter(Bitmap bitmap, boolean antiAliased);

    @DoNotStrip
    private static native void nativeToCircleFilter(Bitmap bitmap, boolean antiAliased);

    @DoNotStrip
    private static native void nativeToCircleWithBorderFilter(Bitmap bitmap, int colorARGB, int borderWidthPx, boolean antiAliased);

    @DoNotStrip
    public static void toCircle(Bitmap bitmap, boolean antiAliased) {
        i.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleFilter(bitmap, antiAliased);
    }

    @DoNotStrip
    public static void toCircleFast(Bitmap bitmap, boolean antiAliased) {
        i.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleFastFilter(bitmap, antiAliased);
    }
}
