package com.facebook.common.executors;

import android.os.Handler;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e extends AbstractExecutorService implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f26864b;

    public e(Handler handler) {
        this.f26864b = handler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public <T> f<T> newTaskFor(Runnable runnable, @Nullable T value) {
        return new f<>(this.f26864b, runnable, value);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public <T> f<T> newTaskFor(Callable<T> callable) {
        return new f<>(this.f26864b, callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ScheduledFuture<?> submit(Runnable task) {
        return submit(task, null);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public <T> ScheduledFuture<T> submit(Runnable task, @Nullable T result) {
        task.getClass();
        f<T> fVarNewTaskFor = newTaskFor(task, result);
        execute(fVarNewTaskFor);
        return fVarNewTaskFor;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public <T> ScheduledFuture<T> submit(Callable<T> task) {
        task.getClass();
        f<T> fVarNewTaskFor = newTaskFor(task);
        execute(fVarNewTaskFor);
        return fVarNewTaskFor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        this.f26864b.post(command);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable command, long delay, TimeUnit unit) {
        f fVarNewTaskFor = newTaskFor(command, null);
        this.f26864b.postDelayed(fVarNewTaskFor, unit.toMillis(delay));
        return fVarNewTaskFor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable command, long initialDelay, long period, TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable command, long initialDelay, long delay, TimeUnit unit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.common.executors.d
    public void v() {
        this.f26864b.getLooper().quit();
    }

    @Override // com.facebook.common.executors.d
    public boolean y() {
        return Thread.currentThread() == this.f26864b.getLooper().getThread();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long delay, TimeUnit unit) {
        f fVarNewTaskFor = newTaskFor(callable);
        this.f26864b.postDelayed(fVarNewTaskFor, unit.toMillis(delay));
        return fVarNewTaskFor;
    }
}
