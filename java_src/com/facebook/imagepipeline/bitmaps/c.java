package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c extends f {
    @Override // com.facebook.imagepipeline.bitmaps.f
    public CloseableReference<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) {
        return CloseableReference.t(Bitmap.createBitmap(width, height, bitmapConfig), h.a());
    }
}
