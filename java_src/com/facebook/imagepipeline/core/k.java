package com.facebook.imagepipeline.core;

import android.content.Context;
import android.os.Build;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.q;
import com.facebook.imagepipeline.cache.r;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.d1;
import com.facebook.imagepipeline.producers.u;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
public class k {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Class<?> f27907t = k.class;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static k f27908u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f27909v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static h f27910w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c1 f27911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f27912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f27913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.imagepipeline.cache.i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private q<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.facebook.imagepipeline.cache.i<com.facebook.cache.common.c, PooledByteBuffer> f27916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private q<com.facebook.cache.common.c, PooledByteBuffer> f27917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.cache.e f27918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.disk.h f27919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.decoder.b f27920j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private h f27921k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private l4.d f27922l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private n f27923m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private o f27924n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.cache.e f27925o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.disk.h f27926p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.bitmaps.f f27927q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.platform.g f27928r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.animated.factory.a f27929s;

    public k(i config) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        i iVar = (i) com.facebook.common.internal.i.i(config);
        this.f27912b = iVar;
        this.f27911a = iVar.getExperiments().u() ? new u(config.getExecutorSupplier().a()) : new d1(config.getExecutorSupplier().a());
        CloseableReference.y(config.getExperiments().b());
        this.f27913c = new a(config.getCloseableReferenceLeakTracker());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static synchronized void A() {
        k kVar = f27908u;
        if (kVar != null) {
            kVar.e().i(com.facebook.common.internal.a.b());
            f27908u.h().i(com.facebook.common.internal.a.b());
            f27908u = null;
        }
    }

    private h a() {
        return new h(r(), this.f27912b.getRequestListeners(), this.f27912b.getRequestListener2s(), this.f27912b.getIsPrefetchEnabledSupplier(), e(), h(), m(), s(), this.f27912b.getCacheKeyFactory(), this.f27911a, this.f27912b.getExperiments().i(), this.f27912b.getExperiments().w(), this.f27912b.getCallerContextVerifier(), this.f27912b);
    }

    @Nullable
    private com.facebook.imagepipeline.animated.factory.a c() {
        if (this.f27929s == null) {
            this.f27929s = com.facebook.imagepipeline.animated.factory.b.a(o(), this.f27912b.getExecutorSupplier(), d(), this.f27912b.getExperiments().C(), this.f27912b.getExecutorServiceForAnimatedImages());
        }
        return this.f27929s;
    }

    private com.facebook.imagepipeline.decoder.b i() {
        com.facebook.imagepipeline.decoder.b bVarC;
        com.facebook.imagepipeline.decoder.b bVarB;
        if (this.f27920j == null) {
            if (this.f27912b.getImageDecoder() != null) {
                this.f27920j = this.f27912b.getImageDecoder();
            } else {
                com.facebook.imagepipeline.animated.factory.a aVarC = c();
                if (aVarC != null) {
                    bVarC = aVarC.c();
                    bVarB = aVarC.b();
                } else {
                    bVarC = null;
                    bVarB = null;
                }
                if (this.f27912b.getImageDecoderConfig() == null) {
                    this.f27920j = new com.facebook.imagepipeline.decoder.a(bVarC, bVarB, p());
                } else {
                    this.f27920j = new com.facebook.imagepipeline.decoder.a(bVarC, bVarB, p(), this.f27912b.getImageDecoderConfig().a());
                    com.facebook.imageformat.d.e().g(this.f27912b.getImageDecoderConfig().b());
                }
            }
        }
        return this.f27920j;
    }

    private l4.d k() {
        if (this.f27922l == null) {
            if (this.f27912b.getImageTranscoderFactory() == null && this.f27912b.getImageTranscoderType() == null && this.f27912b.getExperiments().x()) {
                this.f27922l = new l4.h(this.f27912b.getExperiments().f());
            } else {
                this.f27922l = new l4.f(this.f27912b.getExperiments().f(), this.f27912b.getExperiments().l(), this.f27912b.getImageTranscoderFactory(), this.f27912b.getImageTranscoderType(), this.f27912b.getExperiments().t());
            }
        }
        return this.f27922l;
    }

    public static k l() {
        return (k) com.facebook.common.internal.i.j(f27908u, "ImagePipelineFactory was not initialized!");
    }

    private n q() {
        if (this.f27923m == null) {
            this.f27923m = this.f27912b.getExperiments().h().a(this.f27912b.getContext(), this.f27912b.getPoolFactory().l(), i(), this.f27912b.getProgressiveJpegConfig(), this.f27912b.isDownsampleEnabled(), this.f27912b.isResizeAndRotateEnabledForNetwork(), this.f27912b.getExperiments().p(), this.f27912b.getExecutorSupplier(), this.f27912b.getPoolFactory().i(this.f27912b.getMemoryChunkType()), this.f27912b.getPoolFactory().j(), e(), h(), m(), s(), this.f27912b.getCacheKeyFactory(), o(), this.f27912b.getExperiments().e(), this.f27912b.getExperiments().d(), this.f27912b.getExperiments().c(), this.f27912b.getExperiments().f(), f(), this.f27912b.getExperiments().E(), this.f27912b.getExperiments().j());
        }
        return this.f27923m;
    }

    private o r() {
        boolean z10 = Build.VERSION.SDK_INT >= 24 && this.f27912b.getExperiments().k();
        if (this.f27924n == null) {
            this.f27924n = new o(this.f27912b.getContext().getApplicationContext().getContentResolver(), q(), this.f27912b.getNetworkFetcher(), this.f27912b.isResizeAndRotateEnabledForNetwork(), this.f27912b.getExperiments().z(), this.f27911a, this.f27912b.isDownsampleEnabled(), z10, this.f27912b.getExperiments().y(), this.f27912b.isDiskCacheEnabled(), k(), this.f27912b.getExperiments().s(), this.f27912b.getExperiments().q(), this.f27912b.getExperiments().a());
        }
        return this.f27924n;
    }

    private com.facebook.imagepipeline.cache.e s() {
        if (this.f27925o == null) {
            this.f27925o = new com.facebook.imagepipeline.cache.e(t(), this.f27912b.getPoolFactory().i(this.f27912b.getMemoryChunkType()), this.f27912b.getPoolFactory().j(), this.f27912b.getExecutorSupplier().c(), this.f27912b.getExecutorSupplier().e(), this.f27912b.getImageCacheStatsTracker());
        }
        return this.f27925o;
    }

    public static synchronized boolean u() {
        return f27908u != null;
    }

    public static synchronized void v(Context context) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineFactory#initialize");
        }
        w(ImagePipelineConfig.newBuilder(context).build());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static synchronized void w(i imagePipelineConfig) {
        if (f27908u != null) {
            i3.a.k0(f27907t, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
        }
        f27908u = new k(imagePipelineConfig);
    }

    public static synchronized void x(i imagePipelineConfig, boolean forceSinglePipelineInstance) {
        if (f27908u != null) {
            i3.a.k0(f27907t, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
        }
        f27909v = forceSinglePipelineInstance;
        f27908u = new k(imagePipelineConfig);
    }

    public static void z(k newInstance) {
        f27908u = newInstance;
    }

    @Nullable
    public g4.a b(@Nullable Context context) {
        com.facebook.imagepipeline.animated.factory.a aVarC = c();
        if (aVarC == null) {
            return null;
        }
        return aVarC.a(context);
    }

    public com.facebook.imagepipeline.cache.i<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> d() {
        if (this.f27914d == null) {
            this.f27914d = this.f27912b.getBitmapMemoryCacheFactory().a(this.f27912b.getBitmapMemoryCacheParamsSupplier(), this.f27912b.getMemoryTrimmableRegistry(), this.f27912b.getBitmapMemoryCacheTrimStrategy(), this.f27912b.getExperiments().F(), this.f27912b.getExperiments().D(), this.f27912b.getBitmapMemoryCacheEntryStateObserver());
        }
        return this.f27914d;
    }

    public q<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> e() {
        if (this.f27915e == null) {
            this.f27915e = r.a(d(), this.f27912b.getImageCacheStatsTracker());
        }
        return this.f27915e;
    }

    public a f() {
        return this.f27913c;
    }

    public com.facebook.imagepipeline.cache.i<com.facebook.cache.common.c, PooledByteBuffer> g() {
        if (this.f27916f == null) {
            this.f27916f = com.facebook.imagepipeline.cache.n.a(this.f27912b.getEncodedMemoryCacheParamsSupplier(), this.f27912b.getMemoryTrimmableRegistry());
        }
        return this.f27916f;
    }

    public q<com.facebook.cache.common.c, PooledByteBuffer> h() {
        if (this.f27917g == null) {
            this.f27917g = com.facebook.imagepipeline.cache.o.a(this.f27912b.getEncodedMemoryCacheOverride() != null ? this.f27912b.getEncodedMemoryCacheOverride() : g(), this.f27912b.getImageCacheStatsTracker());
        }
        return this.f27917g;
    }

    public h j() {
        if (!f27909v) {
            if (this.f27921k == null) {
                this.f27921k = a();
            }
            return this.f27921k;
        }
        if (f27910w == null) {
            h hVarA = a();
            f27910w = hVarA;
            this.f27921k = hVarA;
        }
        return f27910w;
    }

    public com.facebook.imagepipeline.cache.e m() {
        if (this.f27918h == null) {
            this.f27918h = new com.facebook.imagepipeline.cache.e(n(), this.f27912b.getPoolFactory().i(this.f27912b.getMemoryChunkType()), this.f27912b.getPoolFactory().j(), this.f27912b.getExecutorSupplier().c(), this.f27912b.getExecutorSupplier().e(), this.f27912b.getImageCacheStatsTracker());
        }
        return this.f27918h;
    }

    public com.facebook.cache.disk.h n() {
        if (this.f27919i == null) {
            this.f27919i = this.f27912b.getFileCacheFactory().a(this.f27912b.getMainDiskCacheConfig());
        }
        return this.f27919i;
    }

    public com.facebook.imagepipeline.bitmaps.f o() {
        if (this.f27927q == null) {
            this.f27927q = com.facebook.imagepipeline.bitmaps.g.a(this.f27912b.getPoolFactory(), p(), f());
        }
        return this.f27927q;
    }

    public com.facebook.imagepipeline.platform.g p() {
        if (this.f27928r == null) {
            this.f27928r = com.facebook.imagepipeline.platform.h.a(this.f27912b.getPoolFactory(), this.f27912b.getExperiments().v());
        }
        return this.f27928r;
    }

    public com.facebook.cache.disk.h t() {
        if (this.f27926p == null) {
            this.f27926p = this.f27912b.getFileCacheFactory().a(this.f27912b.getSmallImageDiskCacheConfig());
        }
        return this.f27926p;
    }

    @Nullable
    public String y() {
        return com.facebook.common.internal.h.f("ImagePipelineFactory").f("bitmapCountingMemoryCache", this.f27914d.g()).f("encodedCountingMemoryCache", this.f27916f.g()).toString();
    }
}
