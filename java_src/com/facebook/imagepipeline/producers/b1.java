package com.facebook.imagepipeline.producers;

import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b1<T> implements q0<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28322c = "BackgroundThreadHandoffProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<T> f28323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c1 f28324b;

    class a extends z0<T> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ t0 f28325l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ ProducerContext f28326m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ Consumer f28327n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final t0 val$consumer, final ProducerContext val$context, final Consumer val$producerListener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28325l = val$consumer;
            this.f28326m = val$context;
            this.f28327n = val$producerListener;
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void b(@Nullable T ignored) {
        }

        @Override // com.facebook.common.executors.h
        @Nullable
        protected T c() throws Exception {
            return null;
        }

        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        protected void g(@Nullable T ignored) {
            this.f28325l.j(this.f28326m, b1.f28322c, null);
            b1.this.f28323a.a(this.f28327n, this.f28326m);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z0 f28329a;

        b(final z0 val$statefulRunnable) {
            this.f28329a = val$statefulRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28329a.a();
            b1.this.f28324b.remove(this.f28329a);
        }
    }

    public b1(final q0<T> inputProducer, final c1 inputThreadHandoffProducerQueue) {
        this.f28323a = (q0) com.facebook.common.internal.i.i(inputProducer);
        this.f28324b = inputThreadHandoffProducerQueue;
    }

    @Nullable
    private static String e(ProducerContext context) {
        if (!i4.a.b()) {
            return null;
        }
        return "ThreadHandoffProducer_produceResults_" + context.getId();
    }

    private static boolean f(ProducerContext context) {
        return context.c().getExperiments().o() && Looper.getMainLooper().getThread() != Thread.currentThread();
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<T> consumer, final ProducerContext context) {
        boolean zE;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ThreadHandoffProducer#produceResults");
            }
            t0 t0VarD = context.d();
            if (f(context)) {
                t0VarD.b(context, f28322c);
                t0VarD.j(context, f28322c, null);
                this.f28323a.a(consumer, context);
                if (zE) {
                    return;
                } else {
                    return;
                }
            }
            a aVar = new a(consumer, t0VarD, context, f28322c, t0VarD, context, consumer);
            context.i(new b(aVar));
            this.f28324b.b(i4.a.a(aVar, e(context)));
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
