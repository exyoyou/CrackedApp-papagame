package com.kwad.sdk.core.threads.a;

import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends ThreadPoolExecutor implements c {
    public static volatile boolean aYQ;
    private final ConcurrentHashMap<Runnable, Long> aYR;
    private long aYS;
    private int aYT;

    public b(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory);
        this.aYR = new ConcurrentHashMap<>();
        this.aYS = 0L;
        this.aYT = 0;
    }

    @Override // com.kwad.sdk.core.threads.a.c
    public final long Ou() {
        return this.aYS;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        if (aYQ && this.aYR.containsKey(runnable) && this.aYR.get(runnable) != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.aYR.get(runnable).longValue();
            if (jElapsedRealtime >= 0 && jElapsedRealtime < 1800000) {
                long j10 = this.aYS;
                int i10 = this.aYT;
                this.aYS = ((j10 * ((long) i10)) + jElapsedRealtime) / ((long) (i10 + 1));
                this.aYT = i10 + 1;
            }
            this.aYR.remove(runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (aYQ) {
            this.aYR.put(runnable, Long.valueOf(SystemClock.elapsedRealtime()));
        }
        super.execute(runnable);
    }

    public b(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.aYR = new ConcurrentHashMap<>();
        this.aYS = 0L;
        this.aYT = 0;
    }
}
