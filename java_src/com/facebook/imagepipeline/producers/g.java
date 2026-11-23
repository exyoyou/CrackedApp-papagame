package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class g extends j0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28377g;

    public g(com.facebook.imagepipeline.cache.f cacheKeyFactory, q0 inputProducer) {
        super(inputProducer, "BitmapMemoryCacheKeyMultiplexProducer", ProducerContext.ExtraKeys.MULTIPLEX_BITMAP_COUNT);
        this.f28377g = cacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    @Nullable
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public CloseableReference<com.facebook.imagepipeline.image.c> g(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> closeableImage) {
        return CloseableReference.f(closeableImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.j0
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> j(ProducerContext producerContext) {
        return Pair.create(this.f28377g.c(producerContext.a(), producerContext.b()), producerContext.p());
    }
}
