package com.facebook.common.executors;

import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b extends AbstractExecutorService {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Class<?> f26855i = b.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f26857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f26858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue<Runnable> f26859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RunnableC0557b f26860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f26861g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicInteger f26862h;

    /* JADX INFO: renamed from: com.facebook.common.executors.b$b, reason: collision with other inner class name */
    private class RunnableC0557b implements Runnable {
        private RunnableC0557b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable runnable = (Runnable) b.this.f26859e.poll();
                if (runnable != null) {
                    runnable.run();
                } else {
                    i3.a.V(b.f26855i, "%s: Worker has nothing to run", b.this.f26856b);
                }
            } finally {
                int iDecrementAndGet = b.this.f26861g.decrementAndGet();
                if (b.this.f26859e.isEmpty()) {
                    i3.a.W(b.f26855i, "%s: worker finished; %d workers left", b.this.f26856b, Integer.valueOf(iDecrementAndGet));
                } else {
                    b.this.h();
                }
            }
        }
    }

    public b(String name, int maxConcurrency, Executor executor, BlockingQueue<Runnable> workQueue) {
        if (maxConcurrency <= 0) {
            throw new IllegalArgumentException("max concurrency must be > 0");
        }
        this.f26856b = name;
        this.f26857c = executor;
        this.f26858d = maxConcurrency;
        this.f26859e = workQueue;
        this.f26860f = new RunnableC0557b();
        this.f26861g = new AtomicInteger(0);
        this.f26862h = new AtomicInteger(0);
    }

    public static b g(String name, int maxConcurrency, int queueSize, Executor executor) {
        return new b(name, maxConcurrency, executor, new LinkedBlockingQueue(queueSize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        int i10 = this.f26861g.get();
        while (i10 < this.f26858d) {
            int i11 = i10 + 1;
            if (this.f26861g.compareAndSet(i10, i11)) {
                i3.a.X(f26855i, "%s: starting worker %d of %d", this.f26856b, Integer.valueOf(i11), Integer.valueOf(this.f26858d));
                this.f26857c.execute(this.f26860f);
                return;
            } else {
                i3.a.V(f26855i, "%s: race in startWorkerIfNeeded; retrying", this.f26856b);
                i10 = this.f26861g.get();
            }
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("runnable parameter is null");
        }
        if (!this.f26859e.offer(runnable)) {
            throw new RejectedExecutionException(this.f26856b + " queue is full, size=" + this.f26859e.size());
        }
        int size = this.f26859e.size();
        int i10 = this.f26862h.get();
        if (size > i10 && this.f26862h.compareAndSet(i10, size)) {
            i3.a.W(f26855i, "%s: max pending work in queue = %d", this.f26856b, Integer.valueOf(size));
        }
        h();
    }

    public boolean f() {
        return this.f26859e.isEmpty() && this.f26861g.get() == 0;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
