package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class q implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    static final String f28601e = "DiskCacheWriteProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.e f28603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f28604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28605d;

    private static class b extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ProducerContext f28606i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28607j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.e f28608k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f28609l;

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            this.f28606i.d().b(this.f28606i, q.f28601e);
            if (com.facebook.imagepipeline.producers.b.e(status) || newResult == null || com.facebook.imagepipeline.producers.b.l(status, 10) || newResult.o() == com.facebook.imageformat.c.f27545c) {
                this.f28606i.d().j(this.f28606i, q.f28601e, null);
                p().b(newResult, status);
                return;
            }
            ImageRequest imageRequestA = this.f28606i.a();
            com.facebook.cache.common.c cVarB = this.f28609l.b(imageRequestA, this.f28606i.b());
            if (imageRequestA.f() == ImageRequest.CacheChoice.SMALL) {
                this.f28608k.u(cVarB, newResult);
            } else {
                this.f28607j.u(cVarB, newResult);
            }
            this.f28606i.d().j(this.f28606i, q.f28601e, null);
            p().b(newResult, status);
        }

        private b(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext, final com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, final com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, final com.facebook.imagepipeline.cache.f cacheKeyFactory) {
            super(consumer);
            this.f28606i = producerContext;
            this.f28607j = defaultBufferedDiskCache;
            this.f28608k = smallImageBufferedDiskCache;
            this.f28609l = cacheKeyFactory;
        }
    }

    public q(com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28602a = defaultBufferedDiskCache;
        this.f28603b = smallImageBufferedDiskCache;
        this.f28604c = cacheKeyFactory;
        this.f28605d = inputProducer;
    }

    private void c(Consumer<com.facebook.imagepipeline.image.e> consumerOfDiskCacheWriteProducer, ProducerContext producerContext) {
        if (producerContext.p().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            producerContext.j("disk", "nil-result_write");
            consumerOfDiskCacheWriteProducer.b(null, 1);
        } else {
            if (producerContext.a().z(32)) {
                consumerOfDiskCacheWriteProducer = new b(consumerOfDiskCacheWriteProducer, producerContext, this.f28602a, this.f28603b, this.f28604c);
            }
            this.f28605d.a(consumerOfDiskCacheWriteProducer, producerContext);
        }
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        c(consumer, producerContext);
    }
}
