package com.facebook.common.executors;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class f<V> implements RunnableFuture<V>, ScheduledFuture<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f26865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FutureTask<V> f26866c;

    public f(Handler handler, Callable<V> callable) {
        this.f26865b = handler;
        this.f26866c = new FutureTask<>(callable);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed other) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        return this.f26866c.cancel(mayInterruptIfRunning);
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return this.f26866c.get();
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f26866c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f26866c.isDone();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.f26866c.run();
    }

    @Override // java.util.concurrent.Future
    public V get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f26866c.get(timeout, unit);
    }

    public f(Handler handler, Runnable runnable, @Nullable V result) {
        this.f26865b = handler;
        this.f26866c = new FutureTask<>(runnable, result);
    }
}
