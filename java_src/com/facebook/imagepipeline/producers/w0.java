package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class w0 implements q0<CloseableReference<PooledByteBuffer>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28674a;

    private class b extends o<com.facebook.imagepipeline.image.e, CloseableReference<PooledByteBuffer>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            CloseableReference<PooledByteBuffer> closeableReferenceF = null;
            try {
                closeableReferenceF = com.facebook.imagepipeline.image.e.P(newResult) ? newResult.f() : null;
                p().b(closeableReferenceF, status);
            } finally {
                CloseableReference.h(closeableReferenceF);
            }
        }

        private b(Consumer<CloseableReference<PooledByteBuffer>> consumer) {
            super(consumer);
        }
    }

    public w0(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28674a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<CloseableReference<PooledByteBuffer>> consumer, ProducerContext context) {
        this.f28674a.a(new b(consumer), context);
    }
}
