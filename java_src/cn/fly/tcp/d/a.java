package cn.fly.tcp.d;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public class a implements Future<cn.fly.tcp.b.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final CountDownLatch f1597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicReference<cn.fly.tcp.b.a> f1598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f1599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f1600d;

    public a() {
        this(null);
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public cn.fly.tcp.b.a get() throws ExecutionException, InterruptedException {
        this.f1597a.await();
        if (isCancelled()) {
            throw new CancellationException("tcp get msg canceled");
        }
        return this.f1598b.get();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        if (isDone() || !this.f1599c.compareAndSet(false, true)) {
            return false;
        }
        Runnable runnable = this.f1600d;
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable unused) {
            }
        }
        this.f1597a.countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f1599c.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f1597a.getCount() == 0;
    }

    public a(Runnable runnable) {
        this.f1597a = new CountDownLatch(1);
        this.f1598b = new AtomicReference<>();
        this.f1599c = new AtomicBoolean(false);
        this.f1600d = runnable;
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public cn.fly.tcp.b.a get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (!this.f1597a.await(j10, timeUnit)) {
            Runnable runnable = this.f1600d;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable unused) {
                }
            }
            throw new TimeoutException("tcp get msg timeout");
        }
        if (!isCancelled()) {
            return this.f1598b.get();
        }
        throw new CancellationException("tcp get msg canceled");
    }

    public void a(cn.fly.tcp.b.a aVar) {
        if (isCancelled() || isDone()) {
            return;
        }
        synchronized (this.f1597a) {
            if (!isCancelled() && !isDone()) {
                this.f1598b.set(aVar);
                this.f1597a.countDown();
            }
        }
    }
}
