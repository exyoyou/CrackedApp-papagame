package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface g {
    CloseableReference<Bitmap> a(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode);

    CloseableReference<Bitmap> b(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length, @Nullable final ColorSpace colorSpace);

    CloseableReference<Bitmap> c(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, @Nullable final ColorSpace colorSpace);

    CloseableReference<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @Nullable Rect regionToDecode, int length);
}
