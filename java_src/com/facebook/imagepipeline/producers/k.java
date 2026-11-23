package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class k implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28461b;

    private class b extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ProducerContext f28462i;

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void g(@Nullable Throwable t10) {
            k.this.f28461b.a(p(), this.f28462i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            ImageRequest imageRequestA = this.f28462i.a();
            boolean zD = com.facebook.imagepipeline.producers.b.d(status);
            boolean zC = h1.c(newResult, imageRequestA.s());
            if (newResult != null && (zC || imageRequestA.k())) {
                if (zD && zC) {
                    p().b(newResult, status);
                } else {
                    p().b(newResult, com.facebook.imagepipeline.producers.b.n(status, 1));
                }
            }
            if (!zD || zC || imageRequestA.j()) {
                return;
            }
            com.facebook.imagepipeline.image.e.d(newResult);
            k.this.f28461b.a(p(), this.f28462i);
        }

        private b(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext) {
            super(consumer);
            this.f28462i = producerContext;
        }
    }

    public k(q0<com.facebook.imagepipeline.image.e> inputProducer1, q0<com.facebook.imagepipeline.image.e> inputProducer2) {
        this.f28460a = inputProducer1;
        this.f28461b = inputProducer2;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        this.f28460a.a(new b(consumer, context), context);
    }
}
