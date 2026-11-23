package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class t implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28630g = "EncodedProbeProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28636f;

    private static class a extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ProducerContext f28637i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28638j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28639k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f28640l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28641m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f28642n;

        public a(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> diskCacheHistory) {
            super(consumer);
            this.f28637i = producerContext;
            this.f28638j = defaultBufferedDiskCache;
            this.f28639k = smallImageBufferedDiskCache;
            this.f28640l = cacheKeyFactory;
            this.f28641m = encodedMemoryCacheHistory;
            this.f28642n = diskCacheHistory;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            boolean zE;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("EncodedProbeProducer#onNewResultImpl");
                }
                if (!b.e(status) && newResult != null && !b.l(status, 10) && newResult.o() != com.facebook.imageformat.c.f27545c) {
                    ImageRequest imageRequestA = this.f28637i.a();
                    com.facebook.cache.common.c cVarB = this.f28640l.b(imageRequestA, this.f28637i.b());
                    this.f28641m.a(cVarB);
                    if ("memory_encoded".equals(this.f28637i.getExtra("origin"))) {
                        if (!this.f28642n.b(cVarB)) {
                            (imageRequestA.f() == ImageRequest.CacheChoice.SMALL ? this.f28639k : this.f28638j).i(cVarB);
                            this.f28642n.a(cVarB);
                        }
                    } else if ("disk".equals(this.f28637i.getExtra("origin"))) {
                        this.f28642n.a(cVarB);
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

    public t(com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.cache.d encodedMemoryCacheHistory, com.facebook.imagepipeline.cache.d diskCacheHistory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28631a = defaultBufferedDiskCache;
        this.f28632b = smallImageBufferedDiskCache;
        this.f28633c = cacheKeyFactory;
        this.f28635e = encodedMemoryCacheHistory;
        this.f28636f = diskCacheHistory;
        this.f28634d = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("EncodedProbeProducer#produceResults");
            }
            t0 t0VarD = producerContext.d();
            t0VarD.b(producerContext, c());
            a aVar = new a(consumer, producerContext, this.f28631a, this.f28632b, this.f28633c, this.f28635e, this.f28636f);
            t0VarD.j(producerContext, f28630g, null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f28634d.a(aVar, producerContext);
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
        return f28630g;
    }
}
