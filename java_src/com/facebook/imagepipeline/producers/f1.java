package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f1 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g1<com.facebook.imagepipeline.image.e>[] f28372a;

    private class a extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ProducerContext f28373i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f28374j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Nullable
        private final com.facebook.imagepipeline.common.e f28375k;

        public a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext, int producerIndex) {
            super(consumer);
            this.f28373i = producerContext;
            this.f28374j = producerIndex;
            this.f28375k = producerContext.a().s();
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void g(Throwable t10) {
            if (f1.this.e(this.f28374j + 1, p(), this.f28373i)) {
                return;
            }
            p().onFailure(t10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            if (newResult != null && (b.e(status) || h1.c(newResult, this.f28375k))) {
                p().b(newResult, status);
            } else if (b.d(status)) {
                com.facebook.imagepipeline.image.e.d(newResult);
                if (f1.this.e(this.f28374j + 1, p(), this.f28373i)) {
                    return;
                }
                p().b(null, 1);
            }
        }
    }

    public f1(g1<com.facebook.imagepipeline.image.e>... thumbnailProducers) {
        g1<com.facebook.imagepipeline.image.e>[] g1VarArr = (g1[]) com.facebook.common.internal.i.i(thumbnailProducers);
        this.f28372a = g1VarArr;
        com.facebook.common.internal.i.g(0, g1VarArr.length);
    }

    private int d(int startIndex, @Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        while (true) {
            g1<com.facebook.imagepipeline.image.e>[] g1VarArr = this.f28372a;
            if (startIndex >= g1VarArr.length) {
                return -1;
            }
            if (g1VarArr[startIndex].b(resizeOptions)) {
                return startIndex;
            }
            startIndex++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(int startIndex, Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        int iD = d(startIndex, context.a().s());
        if (iD == -1) {
            return false;
        }
        this.f28372a[iD].a(new a(consumer, context, iD), context);
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext context) {
        if (context.a().s() == null) {
            consumer.b(null, 1);
        } else {
            if (e(0, consumer, context)) {
                return;
            }
            consumer.b(null, 1);
        }
    }
}
