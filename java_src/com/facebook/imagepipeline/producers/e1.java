package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e1<T> implements q0<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28359f = "ThrottlingProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<T> f28360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28361b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f28364e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final ConcurrentLinkedQueue<Pair<Consumer<T>, ProducerContext>> f28363d = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f28362c = 0;

    private class b extends o<T, T> {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Pair f28366b;

            a(final Pair val$nextRequestPair) {
                this.f28366b = val$nextRequestPair;
            }

            @Override // java.lang.Runnable
            public void run() {
                e1 e1Var = e1.this;
                Pair pair = this.f28366b;
                e1Var.f((Consumer) pair.first, (ProducerContext) pair.second);
            }
        }

        private void q() {
            Pair pair;
            synchronized (e1.this) {
                pair = (Pair) e1.this.f28363d.poll();
                if (pair == null) {
                    e1.d(e1.this);
                }
            }
            if (pair != null) {
                e1.this.f28364e.execute(new a(pair));
            }
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void f() {
            p().a();
            q();
        }

        @Override // com.facebook.imagepipeline.producers.o, com.facebook.imagepipeline.producers.b
        protected void g(Throwable t10) {
            p().onFailure(t10);
            q();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void h(@Nullable T newResult, int status) {
            p().b(newResult, status);
            if (com.facebook.imagepipeline.producers.b.d(status)) {
                q();
            }
        }

        private b(Consumer<T> consumer) {
            super(consumer);
        }
    }

    public e1(int maxSimultaneousRequests, Executor executor, final q0<T> inputProducer) {
        this.f28361b = maxSimultaneousRequests;
        this.f28364e = (Executor) com.facebook.common.internal.i.i(executor);
        this.f28360a = (q0) com.facebook.common.internal.i.i(inputProducer);
    }

    static /* synthetic */ int d(e1 e1Var) {
        int i10 = e1Var.f28362c;
        e1Var.f28362c = i10 - 1;
        return i10;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<T> consumer, final ProducerContext producerContext) {
        boolean z10;
        producerContext.d().b(producerContext, f28359f);
        synchronized (this) {
            int i10 = this.f28362c;
            z10 = true;
            if (i10 >= this.f28361b) {
                this.f28363d.add(Pair.create(consumer, producerContext));
            } else {
                this.f28362c = i10 + 1;
                z10 = false;
            }
        }
        if (z10) {
            return;
        }
        f(consumer, producerContext);
    }

    void f(Consumer<T> consumer, ProducerContext producerContext) {
        producerContext.d().j(producerContext, f28359f, null);
        this.f28360a.a(new b(consumer), producerContext);
    }
}
