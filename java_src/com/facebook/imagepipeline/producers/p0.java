package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class p0<T> implements q0<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28589f = "PriorityStarvingThrottlingProducer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0<T> f28590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f28591b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f28593d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private final Queue<b<T>> f28592c = new PriorityQueue(11, new c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private int f28594e = 0;

    static class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Consumer<T> f28595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ProducerContext f28596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f28597c;

        b(Consumer<T> consumer, ProducerContext producerContext, long time) {
            this.f28595a = consumer;
            this.f28596b = producerContext;
            this.f28597c = time;
        }
    }

    static class c<T> implements Comparator<b<T>> {
        c() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b<T> o10, b<T> o11) {
            Priority priority = o10.f28596b.getPriority();
            Priority priority2 = o11.f28596b.getPriority();
            if (priority == priority2) {
                return Double.compare(o10.f28597c, o11.f28597c);
            }
            return priority.ordinal() > priority2.ordinal() ? -1 : 1;
        }
    }

    private class d extends o<T, T> {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ b f28599b;

            a(final b val$nextRequest) {
                this.f28599b = val$nextRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                p0.this.g(this.f28599b);
            }
        }

        private void q() {
            b bVar;
            synchronized (p0.this) {
                bVar = (b) p0.this.f28592c.poll();
                if (bVar == null) {
                    p0.d(p0.this);
                }
            }
            if (bVar != null) {
                p0.this.f28593d.execute(new a(bVar));
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

        private d(Consumer<T> consumer) {
            super(consumer);
        }
    }

    public p0(int maxSimultaneousRequests, Executor executor, final q0<T> inputProducer) {
        this.f28591b = maxSimultaneousRequests;
        this.f28593d = (Executor) com.facebook.common.internal.i.i(executor);
        this.f28590a = (q0) com.facebook.common.internal.i.i(inputProducer);
    }

    static /* synthetic */ int d(p0 p0Var) {
        int i10 = p0Var.f28594e;
        p0Var.f28594e = i10 - 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(b<T> item) {
        item.f28596b.d().j(item.f28596b, f28589f, null);
        this.f28590a.a(new d(item.f28595a), item.f28596b);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<T> consumer, final ProducerContext producerContext) {
        boolean z10;
        long jNanoTime = System.nanoTime();
        producerContext.d().b(producerContext, f28589f);
        synchronized (this) {
            int i10 = this.f28594e;
            z10 = true;
            if (i10 >= this.f28591b) {
                this.f28592c.add(new b<>(consumer, producerContext, jNanoTime));
            } else {
                this.f28594e = i10 + 1;
                z10 = false;
            }
        }
        if (z10) {
            return;
        }
        g(new b<>(consumer, producerContext, jNanoTime));
    }
}
