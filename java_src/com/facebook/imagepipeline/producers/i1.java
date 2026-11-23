package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i1 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28418d = "WebpTranscodeProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f28419e = 80;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.g f28421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f28422c;

    class a extends z0<com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f28423l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final com.facebook.imagepipeline.image.e val$encodedImageCopy) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28423l = val$encodedImageCopy;
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void d() {
            com.facebook.imagepipeline.image.e.d(this.f28423l);
            super.d();
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void e(Exception e10) {
            com.facebook.imagepipeline.image.e.d(this.f28423l);
            super.e(e10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void b(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.common.memory.i iVarB = i1.this.f28421b.b();
            try {
                i1.g(this.f28423l, iVarB);
                CloseableReference closeableReferenceQ = CloseableReference.q(iVarB.b());
                try {
                    com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
                    eVar.e(this.f28423l);
                    CloseableReference.h(closeableReferenceQ);
                    iVarB.close();
                    return eVar;
                } catch (Throwable th) {
                    CloseableReference.h(closeableReferenceQ);
                    throw th;
                }
            } catch (Throwable th2) {
                iVarB.close();
                throw th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void g(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(this.f28423l);
            super.g(result);
        }
    }

    private class b extends o<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ProducerContext f28425i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TriState f28426j;

        public b(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext context) {
            super(consumer);
            this.f28425i = context;
            this.f28426j = TriState.UNSET;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable com.facebook.imagepipeline.image.e newResult, int status) {
            if (this.f28426j == TriState.UNSET && newResult != null) {
                this.f28426j = i1.h(newResult);
            }
            if (this.f28426j == TriState.NO) {
                p().b(newResult, status);
                return;
            }
            if (com.facebook.imagepipeline.producers.b.d(status)) {
                if (this.f28426j != TriState.YES || newResult == null) {
                    p().b(newResult, status);
                } else {
                    i1.this.i(newResult, p(), this.f28425i);
                }
            }
        }
    }

    public i1(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f28420a = (Executor) com.facebook.common.internal.i.i(executor);
        this.f28421b = (com.facebook.common.memory.g) com.facebook.common.internal.i.i(pooledByteBufferFactory);
        this.f28422c = (q0) com.facebook.common.internal.i.i(inputProducer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.common.memory.i outputStream) throws Exception {
        InputStream inputStream = (InputStream) com.facebook.common.internal.i.i(encodedImage.p());
        com.facebook.imageformat.c cVarD = com.facebook.imageformat.d.d(inputStream);
        if (cVarD == com.facebook.imageformat.b.f27537f || cVarD == com.facebook.imageformat.b.f27539h) {
            com.facebook.imagepipeline.nativecode.h.a().b(inputStream, outputStream, 80);
            encodedImage.g0(com.facebook.imageformat.b.f27532a);
        } else {
            if (cVarD != com.facebook.imageformat.b.f27538g && cVarD != com.facebook.imageformat.b.f27540i) {
                throw new IllegalArgumentException("Wrong image format");
            }
            com.facebook.imagepipeline.nativecode.h.a().c(inputStream, outputStream);
            encodedImage.g0(com.facebook.imageformat.b.f27533b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.i.i(encodedImage);
        com.facebook.imageformat.c cVarD = com.facebook.imageformat.d.d((InputStream) com.facebook.common.internal.i.i(encodedImage.p()));
        if (!com.facebook.imageformat.b.b(cVarD)) {
            return cVarD == com.facebook.imageformat.c.f27545c ? TriState.UNSET : TriState.NO;
        }
        com.facebook.imagepipeline.nativecode.g gVarA = com.facebook.imagepipeline.nativecode.h.a();
        return gVarA == null ? TriState.NO : TriState.valueOf(!gVarA.a(cVarD));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final com.facebook.imagepipeline.image.e originalResult, final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        com.facebook.common.internal.i.i(originalResult);
        this.f28420a.execute(new a(consumer, producerContext.d(), producerContext, f28418d, com.facebook.imagepipeline.image.e.c(originalResult)));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext context) {
        this.f28422c.a(new b(consumer, context), context);
    }
}
