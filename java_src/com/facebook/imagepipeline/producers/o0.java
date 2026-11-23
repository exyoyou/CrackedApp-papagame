package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class o0 implements q0<CloseableReference<com.facebook.imagepipeline.image.c>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28553d = "PostprocessorProducer";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    static final String f28554e = "Postprocessor";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<CloseableReference<com.facebook.imagepipeline.image.c>> f28555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f28556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f28557c;

    private class b extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final t0 f28558i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final ProducerContext f28559j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final com.facebook.imagepipeline.request.d f28560k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f28561l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        @Nullable
        private CloseableReference<com.facebook.imagepipeline.image.c> f28562m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private int f28563n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f28564o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f28565p;

        class a extends e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ o0 f28567a;

            a(final o0 val$this$0) {
                this.f28567a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void b() {
                b.this.C();
            }
        }

        /* JADX INFO: renamed from: com.facebook.imagepipeline.producers.o0$b$b, reason: collision with other inner class name */
        class RunnableC0578b implements Runnable {
            RunnableC0578b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CloseableReference closeableReference;
                int i10;
                synchronized (b.this) {
                    closeableReference = b.this.f28562m;
                    i10 = b.this.f28563n;
                    b.this.f28562m = null;
                    b.this.f28564o = false;
                }
                if (CloseableReference.p(closeableReference)) {
                    try {
                        b.this.z(closeableReference, i10);
                        CloseableReference.h(closeableReference);
                    } catch (Throwable th) {
                        CloseableReference.h(closeableReference);
                        throw th;
                    }
                }
                b.this.x();
            }
        }

        public b(Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, t0 listener, com.facebook.imagepipeline.request.d postprocessor, ProducerContext producerContext) {
            super(consumer);
            this.f28562m = null;
            this.f28563n = 0;
            this.f28564o = false;
            this.f28565p = false;
            this.f28558i = listener;
            this.f28560k = postprocessor;
            this.f28559j = producerContext;
            producerContext.i(new a(o0.this));
        }

        @Nullable
        private Map<String, String> A(t0 listener, ProducerContext producerContext, com.facebook.imagepipeline.request.d postprocessor) {
            if (listener.f(producerContext, o0.f28553d)) {
                return ImmutableMap.of(o0.f28554e, postprocessor.getName());
            }
            return null;
        }

        private synchronized boolean B() {
            return this.f28561l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C() {
            if (y()) {
                p().a();
            }
        }

        private void D(Throwable throwable) {
            if (y()) {
                p().onFailure(throwable);
            }
        }

        private void E(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newRef, int status) {
            boolean zD = com.facebook.imagepipeline.producers.b.d(status);
            if ((zD || B()) && !(zD && y())) {
                return;
            }
            p().b(newRef, status);
        }

        private CloseableReference<com.facebook.imagepipeline.image.c> G(com.facebook.imagepipeline.image.c sourceImage) {
            com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) sourceImage;
            CloseableReference<Bitmap> closeableReferenceB = this.f28560k.b(dVar.h(), o0.this.f28556b);
            try {
                com.facebook.imagepipeline.image.d dVar2 = new com.facebook.imagepipeline.image.d(closeableReferenceB, sourceImage.b(), dVar.p(), dVar.o());
                dVar2.g(dVar.getExtras());
                return CloseableReference.q(dVar2);
            } finally {
                CloseableReference.h(closeableReferenceB);
            }
        }

        private synchronized boolean H() {
            if (this.f28561l || !this.f28564o || this.f28565p || !CloseableReference.p(this.f28562m)) {
                return false;
            }
            this.f28565p = true;
            return true;
        }

        private boolean I(com.facebook.imagepipeline.image.c sourceImage) {
            return sourceImage instanceof com.facebook.imagepipeline.image.d;
        }

        private void J() {
            o0.this.f28557c.execute(new RunnableC0578b());
        }

        private void K(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> sourceImageRef, int status) {
            synchronized (this) {
                if (this.f28561l) {
                    return;
                }
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f28562m;
                this.f28562m = CloseableReference.f(sourceImageRef);
                this.f28563n = status;
                this.f28564o = true;
                boolean zH = H();
                CloseableReference.h(closeableReference);
                if (zH) {
                    J();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x() {
            boolean zH;
            synchronized (this) {
                this.f28565p = false;
                zH = H();
            }
            if (zH) {
                J();
            }
        }

        private boolean y() {
            synchronized (this) {
                if (this.f28561l) {
                    return false;
                }
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f28562m;
                this.f28562m = null;
                this.f28561l = true;
                CloseableReference.h(closeableReference);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(CloseableReference<com.facebook.imagepipeline.image.c> sourceImageRef, int status) {
            com.facebook.common.internal.i.d(Boolean.valueOf(CloseableReference.p(sourceImageRef)));
            if (!I(sourceImageRef.j())) {
                E(sourceImageRef, status);
                return;
            }
            this.f28558i.b(this.f28559j, o0.f28553d);
            try {
                try {
                    CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceG = G(sourceImageRef.j());
                    t0 t0Var = this.f28558i;
                    ProducerContext producerContext = this.f28559j;
                    t0Var.j(producerContext, o0.f28553d, A(t0Var, producerContext, this.f28560k));
                    E(closeableReferenceG, status);
                    CloseableReference.h(closeableReferenceG);
                } catch (Exception e10) {
                    t0 t0Var2 = this.f28558i;
                    ProducerContext producerContext2 = this.f28559j;
                    t0Var2.k(producerContext2, o0.f28553d, e10, A(t0Var2, producerContext2, this.f28560k));
                    D(e10);
                    CloseableReference.h(null);
                }
            } catch (Throwable th) {
                CloseableReference.h(null);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public void h(@Nullable CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (CloseableReference.p(newResult)) {
                K(newResult, status);
            } else if (com.facebook.imagepipeline.producers.b.d(status)) {
                E(null, status);
            }
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void f() {
            C();
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void g(Throwable t10) {
            D(t10);
        }
    }

    class c extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> implements com.facebook.imagepipeline.request.f {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @GuardedBy("RepeatedPostprocessorConsumer.this")
        private boolean f28570i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @GuardedBy("RepeatedPostprocessorConsumer.this")
        @Nullable
        private CloseableReference<com.facebook.imagepipeline.image.c> f28571j;

        class a extends e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ o0 f28573a;

            a(final o0 val$this$0) {
                this.f28573a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void b() {
                if (c.this.r()) {
                    c.this.p().a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean r() {
            synchronized (this) {
                if (this.f28570i) {
                    return false;
                }
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f28571j;
                this.f28571j = null;
                this.f28570i = true;
                CloseableReference.h(closeableReference);
                return true;
            }
        }

        private void t(CloseableReference<com.facebook.imagepipeline.image.c> sourceImageRef) {
            synchronized (this) {
                if (this.f28570i) {
                    return;
                }
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReference = this.f28571j;
                this.f28571j = CloseableReference.f(sourceImageRef);
                CloseableReference.h(closeableReference);
            }
        }

        private void u() {
            synchronized (this) {
                if (this.f28570i) {
                    return;
                }
                CloseableReference<com.facebook.imagepipeline.image.c> closeableReferenceF = CloseableReference.f(this.f28571j);
                try {
                    p().b(closeableReferenceF, 0);
                } finally {
                    CloseableReference.h(closeableReferenceF);
                }
            }
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void f() {
            if (r()) {
                p().a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void g(Throwable throwable) {
            if (r()) {
                p().onFailure(throwable);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void h(CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.e(status)) {
                return;
            }
            t(newResult);
            u();
        }

        @Override // com.facebook.imagepipeline.request.f
        public synchronized void update() {
            u();
        }

        private c(b postprocessorConsumer, com.facebook.imagepipeline.request.e repeatedPostprocessor, ProducerContext context) {
            super(postprocessorConsumer);
            this.f28570i = false;
            this.f28571j = null;
            repeatedPostprocessor.c(this);
            context.i(new a(o0.this));
        }
    }

    class d extends o<CloseableReference<com.facebook.imagepipeline.image.c>, CloseableReference<com.facebook.imagepipeline.image.c>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void h(final CloseableReference<com.facebook.imagepipeline.image.c> newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.e(status)) {
                return;
            }
            p().b(newResult, status);
        }

        private d(b postprocessorConsumer) {
            super(postprocessorConsumer);
        }
    }

    public o0(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, Executor executor) {
        this.f28555a = (q0) com.facebook.common.internal.i.i(inputProducer);
        this.f28556b = platformBitmapFactory;
        this.f28557c = (Executor) com.facebook.common.internal.i.i(executor);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<CloseableReference<com.facebook.imagepipeline.image.c>> consumer, ProducerContext context) {
        t0 t0VarD = context.d();
        com.facebook.imagepipeline.request.d dVarM = context.a().m();
        com.facebook.common.internal.i.i(dVarM);
        b bVar = new b(consumer, t0VarD, dVarM, context);
        this.f28555a.a(dVarM instanceof com.facebook.imagepipeline.request.e ? new c(bVar, (com.facebook.imagepipeline.request.e) dVarM, context) : new d(bVar), context);
    }
}
