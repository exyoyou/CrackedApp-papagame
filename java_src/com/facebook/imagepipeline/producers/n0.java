package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class n0 implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28543d = "PostprocessedBitmapMemoryCacheProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    static final String f28544e = "cached_value_found";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f28545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28547c;

    public static class a extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final com.facebook.cache.common.c f28548i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f28549j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f28550k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final boolean f28551l;

        public a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, final boolean isRepeatedProcessor, final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, boolean isBitmapCacheEnabledForWrite) {
            super(consumer);
            this.f28548i = cacheKey;
            this.f28549j = isRepeatedProcessor;
            this.f28550k = memoryCache;
            this.f28551l = isBitmapCacheEnabledForWrite;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (newResult == null) {
                if (b.d(status)) {
                    p().b(null, status);
                }
            } else if (!b.e(status) || this.f28549j) {
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceC = this.f28551l ? this.f28550k.c(this.f28548i, newResult) : null;
                try {
                    p().c(1.0f);
                    Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumerP = p();
                    if (closeableReferenceC != null) {
                        newResult = closeableReferenceC;
                    }
                    consumerP.b(newResult, status);
                } finally {
                    CloseableReference.h(closeableReferenceC);
                }
            }
        }
    }

    public n0(com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f28545a = memoryCache;
        this.f28546b = cacheKeyFactory;
        this.f28547c = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        t0 t0VarD = producerContext.d();
        ImageRequest imageRequestA = producerContext.a();
        Object objB = producerContext.b();
        com.facebook.imagepipeline.request.d dVarM = imageRequestA.m();
        if (dVarM == null || dVarM.a() == null) {
            this.f28547c.a(consumer, producerContext);
            return;
        }
        t0VarD.b(producerContext, c());
        com.facebook.cache.common.c cVarA = this.f28546b.a(imageRequestA, objB);
        CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = producerContext.a().z(1) ? this.f28545a.get(cVarA) : null;
        if (closeableReference == null) {
            a aVar = new a(consumer, cVarA, dVarM instanceof com.facebook.imagepipeline.request.e, this.f28545a, producerContext.a().z(2));
            t0VarD.j(producerContext, c(), t0VarD.f(producerContext, c()) ? ImmutableMap.of("cached_value_found", "false") : null);
            this.f28547c.a(aVar, producerContext);
        } else {
            t0VarD.j(producerContext, c(), t0VarD.f(producerContext, c()) ? ImmutableMap.of("cached_value_found", "true") : null);
            t0VarD.a(producerContext, f28543d, true);
            producerContext.j("memory_bitmap", "postprocessed");
            consumer.c(1.0f);
            consumer.b(closeableReference, 1);
            closeableReference.close();
        }
    }

    protected String c() {
        return f28543d;
    }
}
