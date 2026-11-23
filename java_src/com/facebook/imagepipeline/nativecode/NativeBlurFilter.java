package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeBlurFilter {
    static {
        d.a();
    }

    public static void a(Bitmap bitmap, int iterations, int blurRadius) {
        i.i(bitmap);
        i.d(Boolean.valueOf(iterations > 0));
        i.d(Boolean.valueOf(blurRadius > 0));
        nativeIterativeBoxBlur(bitmap, iterations, blurRadius);
    }

    @DoNotStrip
    private static native void nativeIterativeBoxBlur(Bitmap bitmap, int iterations, int blurRadius);
}
