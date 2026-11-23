package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class Bitmaps {
    static {
        c.a();
    }

    @DoNotStrip
    public static void copyBitmap(Bitmap dest, Bitmap src) {
        i.d(Boolean.valueOf(src.getConfig() == dest.getConfig()));
        i.d(Boolean.valueOf(dest.isMutable()));
        i.d(Boolean.valueOf(dest.getWidth() == src.getWidth()));
        i.d(Boolean.valueOf(dest.getHeight() == src.getHeight()));
        nativeCopyBitmap(dest, dest.getRowBytes(), src, src.getRowBytes(), dest.getHeight());
    }

    @DoNotStrip
    private static native void nativeCopyBitmap(Bitmap dest, int destStride, Bitmap src, int srcStride, int rows);
}
