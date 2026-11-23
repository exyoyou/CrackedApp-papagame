package com.facebook.fresco.animation.bitmap.wrapper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b implements u3.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Class<?> f27443e = b.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u3.a f27444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.imagepipeline.animated.base.a f27445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AnimatedImageCompositor f27446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AnimatedImageCompositor.b f27447d;

    class a implements AnimatedImageCompositor.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        @Nullable
        public CloseableReference<Bitmap> b(int frameNumber) {
            return b.this.f27444a.f(frameNumber);
        }
    }

    public b(u3.a bitmapFrameCache, com.facebook.imagepipeline.animated.base.a animatedDrawableBackend) {
        a aVar = new a();
        this.f27447d = aVar;
        this.f27444a = bitmapFrameCache;
        this.f27445b = animatedDrawableBackend;
        this.f27446c = new AnimatedImageCompositor(animatedDrawableBackend, aVar);
    }

    @Override // u3.b
    public boolean a(int frameNumber, Bitmap targetBitmap) {
        try {
            this.f27446c.g(frameNumber, targetBitmap);
            return true;
        } catch (IllegalStateException e10) {
            i3.a.t(f27443e, e10, "Rendering of frame unsuccessful. Frame number: %d", Integer.valueOf(frameNumber));
            return false;
        }
    }

    @Override // u3.b
    public int d() {
        return this.f27445b.getWidth();
    }

    @Override // u3.b
    public int e() {
        return this.f27445b.getHeight();
    }

    @Override // u3.b
    public void f(@Nullable Rect bounds) {
        com.facebook.imagepipeline.animated.base.a aVarM = this.f27445b.m(bounds);
        if (aVarM != this.f27445b) {
            this.f27445b = aVarM;
            this.f27446c = new AnimatedImageCompositor(aVarM, this.f27447d);
        }
    }
}
