package com.facebook.fresco.animation.factory;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.internal.l;
import com.facebook.fresco.animation.bitmap.BitmapAnimationBackend;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.impl.b;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.cache.i;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;
import l3.c;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a implements g4.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f27493j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f27494k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f27495l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f27496m = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f27497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f27498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f27499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f27500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f27501e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27502f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l<Integer> f27503g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final l<Integer> f27504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final l<Boolean> f27505i;

    public a(b animatedDrawableBackendProvider, ScheduledExecutorService scheduledExecutorServiceForUiThread, ExecutorService executorServiceForFramePreparing, c monotonicClock, f platformBitmapFactory, i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, l<Integer> cachingStrategySupplier, l<Integer> numberOfFramesToPrepareSupplier, l<Boolean> useDeepEqualsForCacheKey) {
        this.f27497a = animatedDrawableBackendProvider;
        this.f27498b = scheduledExecutorServiceForUiThread;
        this.f27499c = executorServiceForFramePreparing;
        this.f27500d = monotonicClock;
        this.f27501e = platformBitmapFactory;
        this.f27502f = backingCache;
        this.f27503g = cachingStrategySupplier;
        this.f27504h = numberOfFramesToPrepareSupplier;
        this.f27505i = useDeepEqualsForCacheKey;
    }

    private com.facebook.imagepipeline.animated.base.a c(com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        d dVarF = animatedImageResult.f();
        return this.f27497a.a(animatedImageResult, new Rect(0, 0, dVarF.getWidth(), dVarF.getHeight()));
    }

    private com.facebook.imagepipeline.animated.impl.c d(final com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        return new com.facebook.imagepipeline.animated.impl.c(new com.facebook.fresco.animation.bitmap.cache.a(animatedImageResult.hashCode(), this.f27505i.get().booleanValue()), this.f27502f);
    }

    private com.facebook.fresco.animation.backend.a e(com.facebook.imagepipeline.animated.base.f animatedImageResult, @Nullable Bitmap.Config animatedBitmapConig) {
        com.facebook.fresco.animation.bitmap.preparation.d dVar;
        com.facebook.fresco.animation.bitmap.preparation.b bVarG;
        com.facebook.imagepipeline.animated.base.a aVarC = c(animatedImageResult);
        u3.a aVarF = f(animatedImageResult);
        com.facebook.fresco.animation.bitmap.wrapper.b bVar = new com.facebook.fresco.animation.bitmap.wrapper.b(aVarF, aVarC);
        int iIntValue = this.f27504h.get().intValue();
        if (iIntValue > 0) {
            com.facebook.fresco.animation.bitmap.preparation.d dVar2 = new com.facebook.fresco.animation.bitmap.preparation.d(iIntValue);
            bVarG = g(bVar, animatedBitmapConig);
            dVar = dVar2;
        } else {
            dVar = null;
            bVarG = null;
        }
        return com.facebook.fresco.animation.backend.c.s(new BitmapAnimationBackend(this.f27501e, aVarF, new com.facebook.fresco.animation.bitmap.wrapper.a(aVarC), bVar, dVar, bVarG), this.f27500d, this.f27498b);
    }

    private u3.a f(com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        int iIntValue = this.f27503g.get().intValue();
        if (iIntValue == 1) {
            return new com.facebook.fresco.animation.bitmap.cache.b(d(animatedImageResult), true);
        }
        if (iIntValue != 2) {
            return iIntValue != 3 ? new com.facebook.fresco.animation.bitmap.cache.d() : new com.facebook.fresco.animation.bitmap.cache.c();
        }
        return new com.facebook.fresco.animation.bitmap.cache.b(d(animatedImageResult), false);
    }

    private com.facebook.fresco.animation.bitmap.preparation.b g(u3.b bitmapFrameRenderer, @Nullable Bitmap.Config animatedBitmapConig) {
        f fVar = this.f27501e;
        if (animatedBitmapConig == null) {
            animatedBitmapConig = Bitmap.Config.ARGB_8888;
        }
        return new com.facebook.fresco.animation.bitmap.preparation.c(fVar, bitmapFrameRenderer, animatedBitmapConig, this.f27499c);
    }

    @Override // g4.a
    public boolean b(com.facebook.imagepipeline.image.c image) {
        return image instanceof com.facebook.imagepipeline.image.a;
    }

    @Override // g4.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public com.facebook.fresco.animation.drawable.a a(com.facebook.imagepipeline.image.c image) {
        com.facebook.imagepipeline.image.a aVar = (com.facebook.imagepipeline.image.a) image;
        d dVarH = aVar.h();
        return new com.facebook.fresco.animation.drawable.a(e((com.facebook.imagepipeline.animated.base.f) com.facebook.common.internal.i.i(aVar.j()), dVarH != null ? dVarH.i() : null));
    }
}
