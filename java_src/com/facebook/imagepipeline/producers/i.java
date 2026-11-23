package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class i implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28401e = "BitmapPrepareProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f28405d;

    private static class a extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f28406i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f28407j;

        a(Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, int minBitmapSizeBytes, int maxBitmapSizeBytes) {
            super(consumer);
            this.f28406i = minBitmapSizeBytes;
            this.f28407j = maxBitmapSizeBytes;
        }

        private void q(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult) {
            com.facebook.imagepipeline.image.c cVarJ;
            Bitmap bitmapH;
            int rowBytes;
            if (newResult == null || !newResult.o() || (cVarJ = newResult.j()) == null || cVarJ.isClosed() || !(cVarJ instanceof com.facebook.imagepipeline.image.d) || (bitmapH = ((com.facebook.imagepipeline.image.d) cVarJ).h()) == null || (rowBytes = bitmapH.getRowBytes() * bitmapH.getHeight()) < this.f28406i || rowBytes > this.f28407j) {
                return;
            }
            bitmapH.prepareToDraw();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            q(newResult);
            p().b(newResult, status);
        }
    }

    public i(final q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer, int minBitmapSizeBytes, int maxBitmapSizeBytes, boolean preparePrefetch) {
        com.facebook.common.internal.i.d(Boolean.valueOf(minBitmapSizeBytes <= maxBitmapSizeBytes));
        this.f28402a = (q0) com.facebook.common.internal.i.i(inputProducer);
        this.f28403b = minBitmapSizeBytes;
        this.f28404c = maxBitmapSizeBytes;
        this.f28405d = preparePrefetch;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        if (!producerContext.o() || this.f28405d) {
            this.f28402a.a(new a(consumer, this.f28403b, this.f28404c), producerContext);
        } else {
            this.f28402a.a(consumer, producerContext);
        }
    }
}
