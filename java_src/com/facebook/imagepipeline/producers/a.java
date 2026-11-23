package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28307a;

    private static class b extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            if (newResult == null) {
                p().b(null, status);
                return;
            }
            if (!com.facebook.imagepipeline.image.e.M(newResult)) {
                newResult.Q();
            }
            p().b(newResult, status);
        }

        private b(Consumer<com.facebook.imagepipeline.image.e> consumer) {
            super(consumer);
        }
    }

    public a(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28307a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        this.f28307a.a(new b(consumer), context);
    }
}
