package com.byazt.bwm;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 13})
public final class tt {

    @com.byazt.zqa.c(c = {0, 1, 33, 194})
    protected static class c extends AbstractExecutorService {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ExecutorService f12132c;

        public c(ExecutorService executorService) {
            this.f12132c = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f12132c.awaitTermination(j10, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f12132c.execute(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.f12132c.invokeAll(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
            return (T) this.f12132c.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.f12132c.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.f12132c.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.f12132c.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return this.f12132c.shutdownNow();
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.f12132c.submit(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.f12132c.invokeAll(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (T) this.f12132c.invokeAny(collection, j10, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.f12132c.submit(callable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t10) {
            return this.f12132c.submit(runnable, t10);
        }
    }

    /* JADX INFO: renamed from: com.byazt.bwm.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 33, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    protected static class ScheduledExecutorServiceC0262tt extends c implements ScheduledExecutorService {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ScheduledExecutorService f12133c;

        public ScheduledExecutorServiceC0262tt(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f12133c = scheduledExecutorService;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
            return this.f12133c.schedule(runnable, j10, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            return this.f12133c.scheduleAtFixedRate(runnable, j10, j11, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            return this.f12133c.scheduleWithFixedDelay(runnable, j10, j11, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
            return this.f12133c.schedule(callable, j10, timeUnit);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 33, 519})
    protected static class ve extends c {
        public ve(ExecutorService executorService) {
            super(executorService);
        }

        public void finalize() throws Throwable {
            super.shutdown();
            super.finalize();
        }
    }

    public static ExecutorService c(ThreadFactory threadFactory) {
        return new ve(new com.byazt.jtc.uj(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory));
    }

    public static ExecutorService tt(ThreadFactory threadFactory) {
        return new com.byazt.jtc.uj(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
    }

    public static ScheduledExecutorService ve(ThreadFactory threadFactory) {
        return new ScheduledExecutorServiceC0262tt(new ScheduledThreadPoolExecutor(1, threadFactory));
    }

    public static ScheduledExecutorService c(int i10, ThreadFactory threadFactory) {
        return new com.byazt.jtc.n(i10, threadFactory);
    }
}
