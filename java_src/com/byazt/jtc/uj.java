package com.byazt.jtc;

import com.byazt.bwm.i;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 728, 15})
public class uj extends c {
    public uj(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i10, i11, j10, timeUnit, new com.byazt.mc.c(blockingQueue), new com.byazt.mc.uj(threadFactory, 2));
        c();
    }

    private void c() {
        if (i.tt.n()) {
            if (!allowsCoreThreadTimeOut()) {
                setKeepAliveTime(c(20L), TimeUnit.SECONDS);
                try {
                    super.allowCoreThreadTimeOut(true);
                } catch (Throwable unused) {
                }
            }
            com.byazt.bwm.ve.f12134c.c(this);
        }
    }

    private ExecutorService tt() {
        com.byazt.bwm.ve veVar = com.byazt.bwm.ve.f12134c;
        return veVar.c("PThreadPoolExecutor", veVar.c(getQueue()));
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.ThreadPoolExecutor, com.byazt.bwm.c
    public void allowCoreThreadTimeOut(boolean z10) {
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor, com.byazt.bwm.c
    public void execute(Runnable runnable) {
        if (!i.tt.n()) {
            super.execute(runnable);
            return;
        }
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e10) {
            ExecutorService executorServiceTt = tt();
            if (executorServiceTt == null) {
                throw e10;
            }
            executorServiceTt.execute(runnable);
        }
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.ThreadPoolExecutor, com.byazt.bwm.c
    public void setThreadFactory(ThreadFactory threadFactory) {
        super.setThreadFactory(new com.byazt.mc.uj(threadFactory, 2));
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.bwm.c
    public <T> Future<T> submit(Callable<T> callable) {
        if (!i.tt.n()) {
            return super.submit(callable);
        }
        try {
            return super.submit(callable);
        } catch (OutOfMemoryError e10) {
            ExecutorService executorServiceTt = tt();
            if (executorServiceTt != null) {
                return executorServiceTt.submit(callable);
            }
            throw e10;
        }
    }

    public uj(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i11, j10, timeUnit, new com.byazt.mc.c(blockingQueue), new com.byazt.mc.uj(threadFactory, 2), rejectedExecutionHandler);
        c();
    }

    private long c(long j10) {
        long jMin = Math.min(j10, getKeepAliveTime(TimeUnit.SECONDS));
        if (jMin > 1) {
            return jMin;
        }
        return 1L;
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.bwm.c
    public <T> Future<T> submit(Runnable runnable, T t10) {
        if (i.tt.n()) {
            try {
                return super.submit(runnable, t10);
            } catch (OutOfMemoryError e10) {
                ExecutorService executorServiceTt = tt();
                if (executorServiceTt != null) {
                    return executorServiceTt.submit(runnable, t10);
                }
                throw e10;
            }
        }
        return super.submit(runnable, t10);
    }

    @Override // com.byazt.jtc.c, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.bwm.c
    public Future submit(Runnable runnable) {
        if (i.tt.n()) {
            try {
                return super.submit(runnable);
            } catch (OutOfMemoryError e10) {
                ExecutorService executorServiceTt = tt();
                if (executorServiceTt != null) {
                    return executorServiceTt.submit(runnable);
                }
                throw e10;
            }
        }
        return super.submit(runnable);
    }
}
