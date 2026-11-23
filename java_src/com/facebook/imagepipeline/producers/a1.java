package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a1<T> implements q0<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<T> f28311a;

    class a extends o<T, Void> {
        a(Consumer consumer) {
            super(consumer);
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h(@Nullable T newResult, int status) {
            if (b.d(status)) {
                p().b(null, status);
            }
        }
    }

    public a1(q0<T> inputProducer) {
        this.f28311a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<Void> consumer, ProducerContext producerContext) {
        this.f28311a.a(new a(consumer), producerContext);
    }
}
