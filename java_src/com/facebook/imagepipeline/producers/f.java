package com.facebook.imagepipeline.producers;

import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28368g = "BitmapMemoryCacheGetProducer";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f28369h = "pipe_ui";

    public f(com.facebook.imagepipeline.cache.t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        super(memoryCache, cacheKeyFactory, inputProducer);
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String d() {
        return f28369h;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String e() {
        return f28368g;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> g(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final com.facebook.cache.common.c cacheKey, boolean isMemoryCacheEnabled) {
        return consumer;
    }
}
