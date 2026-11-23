package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.ExceptionWithNoStacktrace;
import com.facebook.imagepipeline.decoder.DecodeException;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class m implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f28474m = "DecodeProducer";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f28475n = 104857600;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f28476o = "bitmapSize";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f28477p = "hasGoodQuality";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f28478q = "isFinal";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f28479r = "imageFormat";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f28480s = "byteCount";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f28481t = "encodedImageSize";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f28482u = "requestedImageSize";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f28483v = "sampleSize";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.common.memory.a f28484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f28485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.b f28486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.d f28487d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f28489f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f28490g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f28491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f28492i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f28493j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final Runnable f28494k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.facebook.common.internal.l<Boolean> f28495l;

    private class a extends c {
        public a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer, producerContext, decodeCancellationEnabled, maxBitmapSize);
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected synchronized boolean I(@Nullable com.facebook.imagepipeline.image.e encodedImage, int status) {
            if (com.facebook.imagepipeline.producers.b.e(status)) {
                return false;
            }
            return super.I(encodedImage, status);
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected int x(com.facebook.imagepipeline.image.e encodedImage) {
            return encodedImage.y();
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected com.facebook.imagepipeline.image.j y() {
            return com.facebook.imagepipeline.image.h.d(0, false, false);
        }
    }

    private class b extends c {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.e f28497q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.d f28498r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f28499s;

        public b(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext, final com.facebook.imagepipeline.decoder.e progressiveJpegParser, final com.facebook.imagepipeline.decoder.d progressiveJpegConfig, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer, producerContext, decodeCancellationEnabled, maxBitmapSize);
            this.f28497q = (com.facebook.imagepipeline.decoder.e) com.facebook.common.internal.i.i(progressiveJpegParser);
            this.f28498r = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.i.i(progressiveJpegConfig);
            this.f28499s = 0;
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected synchronized boolean I(@Nullable com.facebook.imagepipeline.image.e encodedImage, int status) {
            boolean zI = super.I(encodedImage, status);
            if ((com.facebook.imagepipeline.producers.b.e(status) || com.facebook.imagepipeline.producers.b.m(status, 8)) && !com.facebook.imagepipeline.producers.b.m(status, 4) && com.facebook.imagepipeline.image.e.P(encodedImage) && encodedImage.o() == com.facebook.imageformat.b.f27532a) {
                if (!this.f28497q.h(encodedImage)) {
                    return false;
                }
                int iD = this.f28497q.d();
                int i10 = this.f28499s;
                if (iD <= i10) {
                    return false;
                }
                if (iD < this.f28498r.a(i10) && !this.f28497q.e()) {
                    return false;
                }
                this.f28499s = iD;
            }
            return zI;
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected int x(com.facebook.imagepipeline.image.e encodedImage) {
            return this.f28497q.c();
        }

        @Override // com.facebook.imagepipeline.producers.m.c
        protected com.facebook.imagepipeline.image.j y() {
            return this.f28498r.b(this.f28497q.d());
        }
    }

    private abstract class c extends o<com.facebook.imagepipeline.image.e, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final int f28501p = 10;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final String f28502i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final ProducerContext f28503j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final t0 f28504k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final com.facebook.imagepipeline.common.c f28505l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @GuardedBy("this")
        private boolean f28506m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final JobScheduler f28507n;

        class a implements JobScheduler.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ m f28509a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ProducerContext f28510b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f28511c;

            a(final m val$maxBitmapSize, final ProducerContext val$producerContext, final int val$this$0) {
                this.f28509a = val$maxBitmapSize;
                this.f28510b = val$producerContext;
                this.f28511c = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.JobScheduler.d
            public void a(com.facebook.imagepipeline.image.e encodedImage, int status) {
                if (encodedImage != null) {
                    c.this.f28503j.h(ProducerContext.ExtraKeys.IMAGE_FORMAT, encodedImage.o().b());
                    if (m.this.f28489f || !com.facebook.imagepipeline.producers.b.m(status, 16)) {
                        ImageRequest imageRequestA = this.f28510b.a();
                        if (m.this.f28490g || !com.facebook.common.util.f.n(imageRequestA.w())) {
                            encodedImage.j0(l4.a.b(imageRequestA.u(), imageRequestA.s(), encodedImage, this.f28511c));
                        }
                    }
                    if (this.f28510b.c().getExperiments().B()) {
                        c.this.F(encodedImage);
                    }
                    c.this.v(encodedImage, status);
                }
            }
        }

        class b extends e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ m f28513a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f28514b;

            b(final m val$decodeCancellationEnabled, final boolean val$this$0) {
                this.f28513a = val$decodeCancellationEnabled;
                this.f28514b = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void a() {
                if (c.this.f28503j.m()) {
                    c.this.f28507n.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void b() {
                if (this.f28514b) {
                    c.this.z();
                }
            }
        }

        public c(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer);
            this.f28502i = "ProgressiveDecoder";
            this.f28503j = producerContext;
            this.f28504k = producerContext.d();
            com.facebook.imagepipeline.common.c cVarI = producerContext.a().i();
            this.f28505l = cVarI;
            this.f28506m = false;
            this.f28507n = new JobScheduler(m.this.f28485b, new a(m.this, producerContext, maxBitmapSize), cVarI.f27773a);
            producerContext.i(new b(m.this, decodeCancellationEnabled));
        }

        private void A(Throwable t10) {
            E(true);
            p().onFailure(t10);
        }

        private void B(final com.facebook.imagepipeline.image.c decodedImage, final int status) {
            CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceB = m.this.f28493j.b(decodedImage);
            try {
                E(com.facebook.imagepipeline.producers.b.d(status));
                p().b(closeableReferenceB, status);
            } finally {
                CloseableReference.h(closeableReferenceB);
            }
        }

        private com.facebook.imagepipeline.image.c C(com.facebook.imagepipeline.image.e encodedImage, int length, com.facebook.imagepipeline.image.j quality) {
            boolean z10 = m.this.f28494k != null && ((Boolean) m.this.f28495l.get()).booleanValue();
            try {
                return m.this.f28486c.a(encodedImage, length, quality, this.f28505l);
            } catch (OutOfMemoryError e10) {
                if (!z10) {
                    throw e10;
                }
                m.this.f28494k.run();
                System.gc();
                return m.this.f28486c.a(encodedImage, length, quality, this.f28505l);
            }
        }

        private synchronized boolean D() {
            return this.f28506m;
        }

        private void E(boolean shouldFinish) {
            synchronized (this) {
                if (shouldFinish) {
                    if (!this.f28506m) {
                        p().c(1.0f);
                        this.f28506m = true;
                        this.f28507n.c();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void F(final com.facebook.imagepipeline.image.e encodedImage) {
            if (encodedImage.o() != com.facebook.imageformat.b.f27532a) {
                return;
            }
            encodedImage.j0(l4.a.c(encodedImage, com.facebook.imageutils.a.e(this.f28505l.f27779g), m.f28475n));
        }

        private void H(com.facebook.imagepipeline.image.e encodedImage, com.facebook.imagepipeline.image.c image) {
            this.f28503j.h(ProducerContext.ExtraKeys.ENCODED_WIDTH, Integer.valueOf(encodedImage.I()));
            this.f28503j.h(ProducerContext.ExtraKeys.ENCODED_HEIGHT, Integer.valueOf(encodedImage.l()));
            this.f28503j.h(ProducerContext.ExtraKeys.ENCODED_SIZE, Integer.valueOf(encodedImage.y()));
            if (image instanceof com.facebook.imagepipeline.image.b) {
                Bitmap bitmapH = ((com.facebook.imagepipeline.image.b) image).h();
                this.f28503j.h("bitmap_config", String.valueOf(bitmapH == null ? null : bitmapH.getConfig()));
            }
            if (image != null) {
                image.g(this.f28503j.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(com.facebook.imagepipeline.image.e encodedImage, int status) {
            String str;
            com.facebook.imagepipeline.image.c cVar;
            int i10 = status;
            if ((encodedImage.o() != com.facebook.imageformat.b.f27532a && com.facebook.imagepipeline.producers.b.e(status)) || D() || !com.facebook.imagepipeline.image.e.P(encodedImage)) {
                return;
            }
            com.facebook.imageformat.c cVarO = encodedImage.o();
            String strB = cVarO != null ? cVarO.b() : "unknown";
            String str2 = encodedImage.I() + "x" + encodedImage.l();
            String strValueOf = String.valueOf(encodedImage.v());
            boolean zD = com.facebook.imagepipeline.producers.b.d(status);
            boolean z10 = zD && !com.facebook.imagepipeline.producers.b.m(i10, 8);
            boolean zM = com.facebook.imagepipeline.producers.b.m(i10, 4);
            com.facebook.imagepipeline.common.e eVarS = this.f28503j.a().s();
            if (eVarS != null) {
                str = eVarS.f27798a + "x" + eVarS.f27799b;
            } else {
                str = "unknown";
            }
            try {
                long jF = this.f28507n.f();
                String strValueOf2 = String.valueOf(this.f28503j.a().w());
                int iY = (z10 || zM) ? encodedImage.y() : x(encodedImage);
                com.facebook.imagepipeline.image.j jVarY = (z10 || zM) ? com.facebook.imagepipeline.image.h.f28051d : y();
                this.f28504k.b(this.f28503j, m.f28474m);
                try {
                    try {
                        com.facebook.imagepipeline.image.c cVarC = C(encodedImage, iY, jVarY);
                        try {
                            if (encodedImage.v() != 1) {
                                i10 |= 16;
                            }
                            this.f28504k.j(this.f28503j, m.f28474m, w(cVarC, jF, jVarY, zD, strB, str2, str, strValueOf));
                            H(encodedImage, cVarC);
                            B(cVarC, i10);
                        } catch (Exception e10) {
                            e = e10;
                            cVar = cVarC;
                            this.f28504k.k(this.f28503j, m.f28474m, e, w(cVar, jF, jVarY, zD, strB, str2, str, strValueOf));
                            A(e);
                        }
                    } catch (DecodeException e11) {
                        com.facebook.imagepipeline.image.e encodedImage2 = e11.getEncodedImage();
                        i3.a.q0("ProgressiveDecoder", "%s, {uri: %s, firstEncodedBytes: %s, length: %d}", e11.getMessage(), strValueOf2, encodedImage2.k(10), Integer.valueOf(encodedImage2.y()));
                        throw e11;
                    }
                } catch (Exception e12) {
                    e = e12;
                    cVar = null;
                }
            } finally {
                com.facebook.imagepipeline.image.e.d(encodedImage);
            }
        }

        @Nullable
        private Map<String, String> w(@Nullable com.facebook.imagepipeline.image.c image, long queueTime, com.facebook.imagepipeline.image.j quality, boolean isFinal, String imageFormatName, String encodedImageSize, String requestImageSize, String sampleSize) {
            if (!this.f28504k.f(this.f28503j, m.f28474m)) {
                return null;
            }
            String strValueOf = String.valueOf(queueTime);
            String strValueOf2 = String.valueOf(quality.b());
            String strValueOf3 = String.valueOf(isFinal);
            if (!(image instanceof com.facebook.imagepipeline.image.d)) {
                HashMap map = new HashMap(7);
                map.put("queueTime", strValueOf);
                map.put(m.f28477p, strValueOf2);
                map.put(m.f28478q, strValueOf3);
                map.put("encodedImageSize", encodedImageSize);
                map.put(m.f28479r, imageFormatName);
                map.put(m.f28482u, requestImageSize);
                map.put(m.f28483v, sampleSize);
                return ImmutableMap.copyOf((Map) map);
            }
            Bitmap bitmapH = ((com.facebook.imagepipeline.image.d) image).h();
            com.facebook.common.internal.i.i(bitmapH);
            String str = bitmapH.getWidth() + "x" + bitmapH.getHeight();
            HashMap map2 = new HashMap(8);
            map2.put(m.f28476o, str);
            map2.put("queueTime", strValueOf);
            map2.put(m.f28477p, strValueOf2);
            map2.put(m.f28478q, strValueOf3);
            map2.put("encodedImageSize", encodedImageSize);
            map2.put(m.f28479r, imageFormatName);
            map2.put(m.f28482u, requestImageSize);
            map2.put(m.f28483v, sampleSize);
            map2.put(m.f28480s, bitmapH.getByteCount() + "");
            return ImmutableMap.copyOf((Map) map2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z() {
            E(true);
            p().a();
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            boolean zE;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("DecodeProducer#onNewResultImpl");
                }
                boolean zD = com.facebook.imagepipeline.producers.b.d(status);
                if (zD) {
                    if (newResult == null) {
                        A(new ExceptionWithNoStacktrace("Encoded image is null."));
                        if (zE) {
                            return;
                        } else {
                            return;
                        }
                    } else if (!newResult.O()) {
                        A(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                        if (zE) {
                            return;
                        } else {
                            return;
                        }
                    }
                }
                if (!I(newResult, status)) {
                    if (zE) {
                        return;
                    } else {
                        return;
                    }
                }
                boolean zM = com.facebook.imagepipeline.producers.b.m(status, 4);
                if (zD || zM || this.f28503j.m()) {
                    this.f28507n.h();
                }
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }

        protected boolean I(@Nullable com.facebook.imagepipeline.image.e ref, int status) {
            return this.f28507n.k(ref, status);
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        public void f() {
            z();
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        public void g(Throwable t10) {
            A(t10);
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void i(float progress) {
            super.i(progress * 0.99f);
        }

        protected abstract int x(com.facebook.imagepipeline.image.e encodedImage);

        protected abstract com.facebook.imagepipeline.image.j y();
    }

    public m(final com.facebook.common.memory.a byteArrayPool, final Executor executor, final com.facebook.imagepipeline.decoder.b imageDecoder, final com.facebook.imagepipeline.decoder.d progressiveJpegConfig, final boolean downsampleEnabled, final boolean downsampleEnabledForNetwork, final boolean decodeCancellationEnabled, final q0<com.facebook.imagepipeline.image.e> inputProducer, final int maxBitmapSize, final com.facebook.imagepipeline.core.a closeableReferenceFactory, @Nullable final Runnable reclaimMemoryRunnable, com.facebook.common.internal.l<Boolean> recoverFromDecoderOOM) {
        this.f28484a = (com.facebook.common.memory.a) com.facebook.common.internal.i.i(byteArrayPool);
        this.f28485b = (Executor) com.facebook.common.internal.i.i(executor);
        this.f28486c = (com.facebook.imagepipeline.decoder.b) com.facebook.common.internal.i.i(imageDecoder);
        this.f28487d = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.i.i(progressiveJpegConfig);
        this.f28489f = downsampleEnabled;
        this.f28490g = downsampleEnabledForNetwork;
        this.f28488e = (q0) com.facebook.common.internal.i.i(inputProducer);
        this.f28491h = decodeCancellationEnabled;
        this.f28492i = maxBitmapSize;
        this.f28493j = closeableReferenceFactory;
        this.f28494k = reclaimMemoryRunnable;
        this.f28495l = recoverFromDecoderOOM;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, final ProducerContext producerContext) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DecodeProducer#produceResults");
            }
            this.f28488e.a(!com.facebook.common.util.f.n(producerContext.a().w()) ? new a(consumer, producerContext, this.f28491h, this.f28492i) : new b(consumer, producerContext, new com.facebook.imagepipeline.decoder.e(this.f28484a), this.f28487d, this.f28491h, this.f28492i), producerContext);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
