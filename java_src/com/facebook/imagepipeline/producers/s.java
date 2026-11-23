package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class s implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28621d = "EncodedMemoryCacheProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28622e = "cached_value_found";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> f28623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28625c;

    private static class a extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> f28626i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.facebook.cache.common.c f28627j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final boolean f28628k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final boolean f28629l;

        public a(Consumer<com.facebook.imagepipeline.image.e> consumer, com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> memoryCache, com.facebook.cache.common.c requestedCacheKey, boolean isEncodedCacheEnabledForWrite, boolean encodedCacheEnabled) {
            super(consumer);
            this.f28626i = memoryCache;
            this.f28627j = requestedCacheKey;
            this.f28628k = isEncodedCacheEnabledForWrite;
            this.f28629l = encodedCacheEnabled;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#onNewResultImpl");
                }
                if (!b.e(status) && newResult != null && !b.l(status, 10) && newResult.o() != com.facebook.imageformat.c.f27545c) {
                    CloseableReference<PooledByteBuffer> closeableReferenceF = newResult.f();
                    if (closeableReferenceF != null) {
                        try {
                            CloseableReference<PooledByteBuffer> closeableReferenceC = (this.f28629l && this.f28628k) ? this.f28626i.c(this.f28627j, closeableReferenceF) : null;
                            CloseableReference.h(closeableReferenceF);
                            if (closeableReferenceC != null) {
                                try {
                                    com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(closeableReferenceC);
                                    eVar.e(newResult);
                                    CloseableReference.h(closeableReferenceC);
                                    try {
                                        p().c(1.0f);
                                        p().b(eVar, status);
                                        com.facebook.imagepipeline.image.e.d(eVar);
                                        if (com.facebook.imagepipeline.systrace.b.e()) {
                                            com.facebook.imagepipeline.systrace.b.c();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th) {
                                        com.facebook.imagepipeline.image.e.d(eVar);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    CloseableReference.h(closeableReferenceC);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            CloseableReference.h(closeableReferenceF);
                            throw th3;
                        }
                    }
                    p().b(newResult, status);
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                p().b(newResult, status);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } catch (Throwable th4) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                throw th4;
            }
        }
    }

    public s(com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, PooledByteBuffer> memoryCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28623a = memoryCache;
        this.f28624b = cacheKeyFactory;
        this.f28625c = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("EncodedMemoryCacheProducer#produceResults");
            }
            t0 t0VarD = producerContext.d();
            t0VarD.b(producerContext, f28621d);
            com.facebook.cache.common.c cVarB = this.f28624b.b(producerContext.a(), producerContext.b());
            CloseableReference<PooledByteBuffer> closeableReference = producerContext.a().z(4) ? this.f28623a.get(cVarB) : null;
            try {
                if (closeableReference != null) {
                    com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(closeableReference);
                    try {
                        t0VarD.j(producerContext, f28621d, t0VarD.f(producerContext, f28621d) ? ImmutableMap.of("cached_value_found", "true") : null);
                        t0VarD.a(producerContext, f28621d, true);
                        producerContext.l("memory_encoded");
                        consumer.c(1.0f);
                        consumer.b(eVar, 1);
                        com.facebook.imagepipeline.image.e.d(eVar);
                        CloseableReference.h(closeableReference);
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        com.facebook.imagepipeline.image.e.d(eVar);
                        throw th;
                    }
                }
                if (producerContext.p().getValue() < ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                    a aVar = new a(consumer, this.f28623a, cVarB, producerContext.a().z(8), producerContext.c().getExperiments().r());
                    t0VarD.j(producerContext, f28621d, t0VarD.f(producerContext, f28621d) ? ImmutableMap.of("cached_value_found", "false") : null);
                    this.f28625c.a(aVar, producerContext);
                    CloseableReference.h(closeableReference);
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                t0VarD.j(producerContext, f28621d, t0VarD.f(producerContext, f28621d) ? ImmutableMap.of("cached_value_found", "false") : null);
                t0VarD.a(producerContext, f28621d, false);
                producerContext.j("memory_encoded", "nil-result");
                consumer.b(null, 1);
                CloseableReference.h(closeableReference);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } catch (Throwable th2) {
                CloseableReference.h(closeableReference);
                throw th2;
            }
        } catch (Throwable th3) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th3;
        }
    }
}
