package com.facebook.imagepipeline.producers;

import com.baidu.mobads.sdk.internal.ax;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class d0 implements q0<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.g f28348b;

    class a extends z0<com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ ImageRequest f28349l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ t0 f28350m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28351n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final ImageRequest val$producerContext, final t0 val$listener, final ProducerContext val$imageRequest) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28349l = val$producerContext;
            this.f28350m = val$listener;
            this.f28351n = val$imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void b(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.imagepipeline.image.e eVarD = d0.this.d(this.f28349l);
            if (eVarD == null) {
                this.f28350m.a(this.f28351n, d0.this.f(), false);
                this.f28351n.l(ax.f7484a);
                return null;
            }
            eVarD.Q();
            this.f28350m.a(this.f28351n, d0.this.f(), true);
            this.f28351n.l(ax.f7484a);
            return eVarD;
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z0 f28353a;

        b(final z0 val$cancellableProducerRunnable) {
            this.f28353a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28353a.a();
        }
    }

    protected d0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory) {
        this.f28347a = executor;
        this.f28348b = pooledByteBufferFactory;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        t0 t0VarD = producerContext.d();
        ImageRequest imageRequestA = producerContext.a();
        producerContext.j(ax.f7484a, "fetch");
        a aVar = new a(consumer, t0VarD, producerContext, f(), imageRequestA, t0VarD, producerContext);
        producerContext.i(new b(aVar));
        this.f28347a.execute(aVar);
    }

    protected com.facebook.imagepipeline.image.e c(InputStream inputStream, int length) throws IOException {
        CloseableReference closeableReferenceQ = null;
        try {
            closeableReferenceQ = length <= 0 ? CloseableReference.q(this.f28348b.a(inputStream)) : CloseableReference.q(this.f28348b.e(inputStream, length));
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
            com.facebook.common.internal.c.b(inputStream);
            CloseableReference.h(closeableReferenceQ);
            return eVar;
        } catch (Throwable th) {
            com.facebook.common.internal.c.b(inputStream);
            CloseableReference.h(closeableReferenceQ);
            throw th;
        }
    }

    @Nullable
    protected abstract com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException;

    protected com.facebook.imagepipeline.image.e e(InputStream inputStream, int length) throws IOException {
        return c(inputStream, length);
    }

    protected abstract String f();
}
