package com.facebook.imagepipeline.request;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface d {
    @Nullable
    com.facebook.cache.common.c a();

    CloseableReference<Bitmap> b(Bitmap sourceBitmap, com.facebook.imagepipeline.bitmaps.f bitmapFactory);

    String getName();
}
