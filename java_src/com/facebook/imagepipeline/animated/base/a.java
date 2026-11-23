package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface a {
    void a();

    int b();

    int c();

    int d();

    AnimatedDrawableFrameInfo e(int frameNumber);

    int f(int timestampMs);

    int g(int frameNumber);

    int getHeight();

    int getWidth();

    int h(int frameNumber);

    int i();

    int j();

    f k();

    void l(int frameNumber, Canvas canvas);

    a m(@Nullable Rect bounds);

    boolean n(int frameNumber);

    @Nullable
    CloseableReference<Bitmap> o(int frameNumber);

    int p();

    int q();
}
