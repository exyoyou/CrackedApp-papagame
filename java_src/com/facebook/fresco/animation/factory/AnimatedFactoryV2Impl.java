package com.facebook.fresco.animation.factory;

import android.content.Context;
import android.graphics.Rect;
import com.facebook.common.executors.g;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.l;
import com.facebook.common.internal.m;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.cache.i;
import com.facebook.imagepipeline.image.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class AnimatedFactoryV2Impl implements com.facebook.imagepipeline.animated.factory.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f27477j = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f27478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.f f27479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f27481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.animated.factory.d f27482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.animated.impl.b f27483f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private e4.a f27484g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private g4.a f27485h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private g f27486i;

    class a implements com.facebook.imagepipeline.decoder.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.c options) {
            return AnimatedFactoryV2Impl.this.k().a(encodedImage, options, options.f27780h);
        }
    }

    class b implements com.facebook.imagepipeline.decoder.b {
        b() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.c options) {
            return AnimatedFactoryV2Impl.this.k().b(encodedImage, options, options.f27780h);
        }
    }

    class c implements l<Integer> {
        c() {
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get() {
            return 2;
        }
    }

    class d implements l<Integer> {
        d() {
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get() {
            return 3;
        }
    }

    class e implements com.facebook.imagepipeline.animated.impl.b {
        e() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f animatedImageResult, @Nullable Rect bounds) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.j(), animatedImageResult, bounds, AnimatedFactoryV2Impl.this.f27481d);
        }
    }

    class f implements com.facebook.imagepipeline.animated.impl.b {
        f() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f imageResult, @Nullable Rect bounds) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.j(), imageResult, bounds, AnimatedFactoryV2Impl.this.f27481d);
        }
    }

    @DoNotStrip
    public AnimatedFactoryV2Impl(com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, com.facebook.imagepipeline.core.f executorSupplier, i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, boolean downscaleFrameToDrawableDimensions, g serialExecutorServiceForFramePreparing) {
        this.f27478a = platformBitmapFactory;
        this.f27479b = executorSupplier;
        this.f27480c = backingCache;
        this.f27481d = downscaleFrameToDrawableDimensions;
        this.f27486i = serialExecutorServiceForFramePreparing;
    }

    private com.facebook.imagepipeline.animated.factory.d g() {
        return new com.facebook.imagepipeline.animated.factory.e(new f(), this.f27478a);
    }

    private com.facebook.fresco.animation.factory.a h() {
        c cVar = new c();
        ExecutorService cVar2 = this.f27486i;
        if (cVar2 == null) {
            cVar2 = new com.facebook.common.executors.c(this.f27479b.g());
        }
        d dVar = new d();
        l<Boolean> lVar = m.f26885b;
        return new com.facebook.fresco.animation.factory.a(i(), com.facebook.common.executors.i.f(), cVar2, RealtimeSinceBootClock.get(), this.f27478a, this.f27480c, cVar, dVar, lVar);
    }

    private com.facebook.imagepipeline.animated.impl.b i() {
        if (this.f27483f == null) {
            this.f27483f = new e();
        }
        return this.f27483f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e4.a j() {
        if (this.f27484g == null) {
            this.f27484g = new e4.a();
        }
        return this.f27484g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.animated.factory.d k() {
        if (this.f27482e == null) {
            this.f27482e = g();
        }
        return this.f27482e;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    @Nullable
    public g4.a a(@Nullable Context context) {
        if (this.f27485h == null) {
            this.f27485h = h();
        }
        return this.f27485h;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b b() {
        return new b();
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b c() {
        return new a();
    }
}
