package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface e {
    void a(int width, int height, Bitmap bitmap);

    int d();

    void dispose();

    int getHeight();

    int getWidth();

    int getXOffset();

    int getYOffset();
}
