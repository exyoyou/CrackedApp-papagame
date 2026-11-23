package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class j implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f28428h = "BitmapProbeProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> f28429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28435g;

    private static class a extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ProducerContext f28436i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> f28437j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28438k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28439l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f28440m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28441n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28442o;

        public a(Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, ProducerContext producerContext, com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> diskCacheHistory) {
            super(consumer);
            this.f28436i = producerContext;
            this.f28437j = encodedMemoryCache;
            this.f28438k = defaultBufferedDiskCache;
            this.f28439l = smallImageBufferedDiskCache;
            this.f28440m = cacheKeyFactory;
            this.f28441n = encodedMemoryCacheHistory;
            this.f28442o = diskCacheHistory;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            boolean zE;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BitmapProbeProducer#onNewResultImpl");
                }
                if (!b.e(status) && newResult != null && !b.l(status, 8)) {
                    ImageRequest imageRequestA = this.f28436i.a();
                    com.facebook.cache.common.c cVarB = this.f28440m.b(imageRequestA, this.f28436i.b());
                    String str = (String) this.f28436i.getExtra("origin");
                    if (str != null && str.equals("memory_bitmap")) {
                        if (this.f28436i.c().getExperiments().s() && !this.f28441n.b(cVarB)) {
                            this.f28437j.b(cVarB);
                            this.f28441n.a(cVarB);
                        }
                        if (this.f28436i.c().getExperiments().q() && !this.f28442o.b(cVarB)) {
                            (imageRequestA.f() == ImageRequest.CacheChoice.SMALL ? this.f28439l : this.f28438k).i(cVarB);
                            this.f28442o.a(cVarB);
                        }
                    }
                    p().b(newResult, status);
                    if (zE) {
                        return;
                    } else {
                        return;
                    }
                }
                p().b(newResult, status);
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
    }

    public j(com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> diskCacheHistory, q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f28429a = encodedMemoryCache;
        this.f28430b = defaultBufferedDiskCache;
        this.f28431c = smallImageBufferedDiskCache;
        this.f28432d = cacheKeyFactory;
        this.f28434f = encodedMemoryCacheHistory;
        this.f28435g = diskCacheHistory;
        this.f28433e = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BitmapProbeProducer#produceResults");
            }
            t0 t0VarD = producerContext.d();
            t0VarD.b(producerContext, c());
            a aVar = new a(consumer, producerContext, this.f28429a, this.f28430b, this.f28431c, this.f28432d, this.f28434f, this.f28435g);
            t0VarD.j(producerContext, f28428h, null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f28433e.a(aVar, producerContext);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected String c() {
        return f28428h;
    }
}
