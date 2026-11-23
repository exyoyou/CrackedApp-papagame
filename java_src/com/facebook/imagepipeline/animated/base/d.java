package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f27568a = 0;

    int a();

    int b();

    int c();

    void dispose();

    AnimatedDrawableFrameInfo e(int frameNumber);

    boolean f();

    int getDuration();

    int getHeight();

    int getWidth();

    e h(int frameNumber);

    @Nullable
    Bitmap.Config i();

    int[] j();
}
