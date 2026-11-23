package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28378d = "BitmapMemoryCacheProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28379e = "cached_value_found";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f28380f = "pipe_bg";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f28381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28383c;

    class a extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f28384i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ boolean f28385j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, final com.facebook.cache.common.c val$isBitmapCacheEnabledForWrite, final boolean val$cacheKey) {
            super(consumer);
            this.f28384i = val$isBitmapCacheEnabledForWrite;
            this.f28385j = val$cacheKey;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            CloseableReference<com.facebook.imagepipeline.image.c> closeableReference;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#onNewResultImpl");
                }
                boolean zD = b.d(status);
                if (newResult == null) {
                    if (zD) {
                        p().b(null, status);
                    }
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                if (!newResult.j().e() && !b.m(status, 8)) {
                    if (!zD && (closeableReference = h.this.f28381a.get(this.f28384i)) != null) {
                        try {
                            com.facebook.imagepipeline.image.j jVarB = newResult.j().b();
                            com.facebook.imagepipeline.image.j jVarB2 = closeableReference.j().b();
                            if (jVarB2.a() || jVarB2.c() >= jVarB.c()) {
                                p().b(closeableReference, status);
                                CloseableReference.h(closeableReference);
                                if (com.facebook.imagepipeline.systrace.b.e()) {
                                    com.facebook.imagepipeline.systrace.b.c();
                                    return;
                                }
                                return;
                            }
                            CloseableReference.h(closeableReference);
                        } catch (Throwable th) {
                            CloseableReference.h(closeableReference);
                            throw th;
                        }
                    }
                    CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceC = this.f28385j ? h.this.f28381a.c(this.f28384i, newResult) : null;
                    if (zD) {
                        try {
                            p().c(1.0f);
                        } catch (Throwable th2) {
                            CloseableReference.h(closeableReferenceC);
                            throw th2;
                        }
                    }
                    Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumerP = p();
                    if (closeableReferenceC != null) {
                        newResult = closeableReferenceC;
                    }
                    consumerP.b(newResult, status);
                    CloseableReference.h(closeableReferenceC);
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
            } catch (Throwable th3) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                throw th3;
            }
        }
    }

    public h(com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        this.f28381a = memoryCache;
        this.f28382b = cacheKeyFactory;
        this.f28383c = inputProducer;
    }

    private static void f(com.facebook.imagepipeline.image.f imageWithMeta, ProducerContext producerContext) {
        producerContext.g(imageWithMeta.getExtras());
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        boolean zE;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BitmapMemoryCacheProducer#produceResults");
            }
            t0 t0VarD = producerContext.d();
            t0VarD.b(producerContext, e());
            com.facebook.cache.common.c cVarC = this.f28382b.c(producerContext.a(), producerContext.b());
            CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = producerContext.a().z(1) ? this.f28381a.get(cVarC) : null;
            if (closeableReference != null) {
                f(closeableReference.j(), producerContext);
                boolean zA = closeableReference.j().b().a();
                if (zA) {
                    t0VarD.j(producerContext, e(), t0VarD.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "true") : null);
                    t0VarD.a(producerContext, e(), true);
                    producerContext.j("memory_bitmap", d());
                    consumer.c(1.0f);
                }
                consumer.b(closeableReference, b.k(zA));
                closeableReference.close();
                if (zA) {
                    if (zE) {
                        return;
                    } else {
                        return;
                    }
                }
            }
            if (producerContext.p().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
                t0VarD.j(producerContext, e(), t0VarD.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "false") : null);
                t0VarD.a(producerContext, e(), false);
                producerContext.j("memory_bitmap", d());
                consumer.b(null, 1);
                if (zE) {
                    return;
                } else {
                    return;
                }
            }
            Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumerG = g(consumer, cVarC, producerContext.a().z(2));
            t0VarD.j(producerContext, e(), t0VarD.f(producerContext, e()) ? ImmutableMap.of("cached_value_found", "false") : null);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("mInputProducer.produceResult");
            }
            this.f28383c.a(consumerG, producerContext);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected String d() {
        return f28380f;
    }

    protected String e() {
        return f28378d;
    }

    protected Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> g(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, final boolean isBitmapCacheEnabledForWrite) {
        return new a(consumer, cacheKey, isBitmapCacheEnabledForWrite);
    }
}
