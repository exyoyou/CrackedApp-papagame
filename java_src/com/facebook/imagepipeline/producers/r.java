package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class r extends j0<Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel>, com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28610g;

    public r(com.facebook.imagepipeline.cache.f cacheKeyFactory, boolean keepCancelledFetchAsLowPriority, q0 inputProducer) {
        super(inputProducer, "EncodedCacheKeyMultiplexProducer", ProducerContext.ExtraKeys.MULTIPLEX_ENCODED_COUNT, keepCancelledFetchAsLowPriority);
        this.f28610g = cacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.producers.j0
    @Nullable
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.image.e g(@Nullable com.facebook.imagepipeline.image.e encodedImage) {
        return com.facebook.imagepipeline.image.e.c(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.j0
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Pair<com.facebook.cache.common.c, ImageRequest.RequestLevel> j(ProducerContext producerContext) {
        return Pair.create(this.f28610g.b(producerContext.a(), producerContext.b()), producerContext.p());
    }
}
