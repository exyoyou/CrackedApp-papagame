package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class x0 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f28678f = "ResizeAndRotateProducer";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f28679g = "Image format";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f28680h = "Original size";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f28681i = "Requested size";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f28682j = "Transcoding result";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f28683k = "Transcoder id";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    static final int f28684l = 100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.g f28686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f28688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l4.d f28689e;

    private class a extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f28690i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final l4.d f28691j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final ProducerContext f28692k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f28693l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final JobScheduler f28694m;

        /* JADX INFO: renamed from: com.facebook.imagepipeline.producers.x0$a$a, reason: collision with other inner class name */
        class C0579a implements JobScheduler.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ x0 f28696a;

            C0579a(final x0 val$this$0) {
                this.f28696a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.JobScheduler.d
            public void a(com.facebook.imagepipeline.image.e encodedImage, int status) throws Throwable {
                a aVar = a.this;
                aVar.w(encodedImage, status, (l4.c) com.facebook.common.internal.i.i(aVar.f28691j.createImageTranscoder(encodedImage.o(), a.this.f28690i)));
            }
        }

        class b extends e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ x0 f28698a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Consumer f28699b;

            b(final x0 val$consumer, final Consumer val$this$0) {
                this.f28698a = val$consumer;
                this.f28699b = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void a() {
                if (a.this.f28692k.m()) {
                    a.this.f28694m.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void b() {
                a.this.f28694m.c();
                a.this.f28693l = true;
                this.f28699b.a();
            }
        }

        a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext, final boolean isResizingEnabled, final l4.d imageTranscoderFactory) {
            super(consumer);
            this.f28693l = false;
            this.f28692k = producerContext;
            Boolean boolT = producerContext.a().t();
            this.f28690i = boolT != null ? boolT.booleanValue() : isResizingEnabled;
            this.f28691j = imageTranscoderFactory;
            this.f28694m = new JobScheduler(x0.this.f28685a, new C0579a(x0.this), 100);
            producerContext.i(new b(x0.this, consumer));
        }

        @Nullable
        private com.facebook.imagepipeline.image.e A(com.facebook.imagepipeline.image.e encodedImage) {
            RotationOptions rotationOptionsU = this.f28692k.a().u();
            return (rotationOptionsU.h() || !rotationOptionsU.g()) ? encodedImage : y(encodedImage, rotationOptionsU.f());
        }

        @Nullable
        private com.facebook.imagepipeline.image.e B(com.facebook.imagepipeline.image.e encodedImage) {
            return (this.f28692k.a().u().c() || encodedImage.s() == 0 || encodedImage.s() == -1) ? encodedImage : y(encodedImage, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(com.facebook.imagepipeline.image.e encodedImage, int status, l4.c imageTranscoder) throws Throwable {
            this.f28692k.d().b(this.f28692k, x0.f28678f);
            ImageRequest imageRequestA = this.f28692k.a();
            com.facebook.common.memory.i iVarB = x0.this.f28686b.b();
            try {
                try {
                    l4.b bVarA = imageTranscoder.a(encodedImage, iVarB, imageRequestA.u(), imageRequestA.s(), null, 85);
                    if (bVarA.a() == 2) {
                        throw new RuntimeException("Error while transcoding the image");
                    }
                    Map<String, String> mapZ = z(encodedImage, imageRequestA.s(), bVarA, imageTranscoder.getIdentifier());
                    CloseableReference closeableReferenceQ = CloseableReference.q(iVarB.b());
                    try {
                        com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
                        eVar.g0(com.facebook.imageformat.b.f27532a);
                        try {
                            eVar.Q();
                            this.f28692k.d().j(this.f28692k, x0.f28678f, mapZ);
                            if (bVarA.a() != 1) {
                                status |= 16;
                            }
                            p().b(eVar, status);
                            com.facebook.imagepipeline.image.e.d(eVar);
                            CloseableReference.h(closeableReferenceQ);
                            iVarB.close();
                        } catch (Throwable th) {
                            com.facebook.imagepipeline.image.e.d(eVar);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        CloseableReference.h(closeableReferenceQ);
                        throw th2;
                    }
                } catch (Throwable th3) {
                    iVarB.close();
                    throw th3;
                }
            } catch (Exception e10) {
                this.f28692k.d().k(this.f28692k, x0.f28678f, e10, null);
                if (com.facebook.imagepipeline.producers.b.d(status)) {
                    p().onFailure(e10);
                }
                iVarB.close();
            }
        }

        private void x(com.facebook.imagepipeline.image.e newResult, int status, com.facebook.imageformat.c imageFormat) {
            p().b((imageFormat == com.facebook.imageformat.b.f27532a || imageFormat == com.facebook.imageformat.b.f27542k) ? B(newResult) : A(newResult), status);
        }

        @Nullable
        private com.facebook.imagepipeline.image.e y(com.facebook.imagepipeline.image.e encodedImage, int angle) {
            com.facebook.imagepipeline.image.e eVarC = com.facebook.imagepipeline.image.e.c(encodedImage);
            if (eVarC != null) {
                eVarC.i0(angle);
            }
            return eVarC;
        }

        @Nullable
        private Map<String, String> z(com.facebook.imagepipeline.image.e encodedImage, @Nullable com.facebook.imagepipeline.common.e resizeOptions, @Nullable l4.b transcodeResult, @Nullable String transcoderId) {
            String str;
            if (!this.f28692k.d().f(this.f28692k, x0.f28678f)) {
                return null;
            }
            String str2 = encodedImage.I() + "x" + encodedImage.l();
            if (resizeOptions != null) {
                str = resizeOptions.f27798a + "x" + resizeOptions.f27799b;
            } else {
                str = "Unspecified";
            }
            HashMap map = new HashMap();
            map.put(x0.f28679g, String.valueOf(encodedImage.o()));
            map.put(x0.f28680h, str2);
            map.put(x0.f28681i, str);
            map.put("queueTime", String.valueOf(this.f28694m.f()));
            map.put(x0.f28683k, transcoderId);
            map.put(x0.f28682j, String.valueOf(transcodeResult));
            return ImmutableMap.copyOf((Map) map);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            if (this.f28693l) {
                return;
            }
            boolean zD = com.facebook.imagepipeline.producers.b.d(status);
            if (newResult == null) {
                if (zD) {
                    p().b(null, 1);
                    return;
                }
                return;
            }
            com.facebook.imageformat.c cVarO = newResult.o();
            TriState triStateH = x0.h(this.f28692k.a(), newResult, (l4.c) com.facebook.common.internal.i.i(this.f28691j.createImageTranscoder(cVarO, this.f28690i)));
            if (zD || triStateH != TriState.UNSET) {
                if (triStateH != TriState.YES) {
                    x(newResult, status, cVarO);
                } else if (this.f28694m.k(newResult, status)) {
                    if (zD || this.f28692k.m()) {
                        this.f28694m.h();
                    }
                }
            }
        }
    }

    public x0(final Executor executor, final com.facebook.common.memory.g pooledByteBufferFactory, final q0<com.facebook.imagepipeline.image.e> inputProducer, final boolean isResizingEnabled, final l4.d imageTranscoderFactory) {
        this.f28685a = (Executor) com.facebook.common.internal.i.i(executor);
        this.f28686b = (com.facebook.common.memory.g) com.facebook.common.internal.i.i(pooledByteBufferFactory);
        this.f28687c = (q0) com.facebook.common.internal.i.i(inputProducer);
        this.f28689e = (l4.d) com.facebook.common.internal.i.i(imageTranscoderFactory);
        this.f28688d = isResizingEnabled;
    }

    private static boolean f(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        return !rotationOptions.c() && (l4.e.e(rotationOptions, encodedImage) != 0 || g(rotationOptions, encodedImage));
    }

    private static boolean g(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        if (rotationOptions.g() && !rotationOptions.c()) {
            return l4.e.f93924g.contains(Integer.valueOf(encodedImage.j()));
        }
        encodedImage.e0(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(ImageRequest request, com.facebook.imagepipeline.image.e encodedImage, l4.c imageTranscoder) {
        if (encodedImage == null || encodedImage.o() == com.facebook.imageformat.c.f27545c) {
            return TriState.UNSET;
        }
        if (imageTranscoder.b(encodedImage.o())) {
            return TriState.valueOf(f(request.u(), encodedImage) || imageTranscoder.c(encodedImage, request.u(), request.s()));
        }
        return TriState.NO;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext context) {
        this.f28687c.a(new a(consumer, context, this.f28688d, this.f28689e), context);
    }
}
