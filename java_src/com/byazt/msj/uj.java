package com.byazt.msj;

import com.byazt.bwm.i;
import com.byazt.nr.m;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1898, 15})
public class uj extends c {
    public uj(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory);
    }

    private boolean n() {
        BlockingQueue<Runnable> queue = getQueue();
        int corePoolSize = getCorePoolSize();
        int i10 = corePoolSize * 2;
        int iMin = Math.min(corePoolSize + 4, i.f12115c);
        if (corePoolSize >= iMin || queue == null || queue.size() < i10) {
            return false;
        }
        try {
            setCorePoolSize(iMin);
            return true;
        } catch (Exception e10) {
            m.c("BizCoreThreadPool", e10.getMessage());
            return false;
        }
    }

    private void uj() {
        BlockingQueue<Runnable> queue = getQueue();
        int iX = i.tt.x();
        if (getCorePoolSize() == iX || queue == null || queue.size() != 0) {
            return;
        }
        setCorePoolSize(iX);
    }

    public static boolean ve() {
        ThreadPoolExecutor threadPoolExecutorI = i.tt.i();
        if (threadPoolExecutorI.getQueue().size() != 0 || threadPoolExecutorI.isShutdown() || threadPoolExecutorI.isTerminated()) {
            return false;
        }
        int activeCount = threadPoolExecutorI.getActiveCount();
        int corePoolSize = threadPoolExecutorI.getCorePoolSize();
        return activeCount < corePoolSize + (-1) && com.byazt.mc.ve.f16858c.get() < corePoolSize / 2;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (i.uj) {
            uj();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0020 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    @Override // com.byazt.msj.c
    public void c(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        boolean zOffer;
        super.c(runnable, outOfMemoryError);
        boolean z10 = false;
        if (runnable != null) {
            try {
                zOffer = getQueue().offer(runnable);
                try {
                    allowCoreThreadTimeOut(false);
                } catch (Throwable unused) {
                    z10 = zOffer;
                    zOffer = z10;
                }
            } catch (Throwable unused2) {
                zOffer = z10;
                if (!zOffer) {
                    throw outOfMemoryError;
                }
            }
        } else {
            zOffer = true;
            try {
                i.uj = false;
                allowCoreThreadTimeOut(false);
            } catch (Throwable unused3) {
                z10 = true;
                zOffer = z10;
                if (!zOffer) {
                    throw outOfMemoryError;
                }
            }
        }
        if (!zOffer) {
            throw outOfMemoryError;
        }
    }

    @Override // com.byazt.msj.c, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (i.uj) {
            n();
        }
        super.execute(runnable);
    }

    @Override // com.byazt.msj.c
    public int tt() {
        return 2;
    }

    @Override // com.byazt.msj.c
    public boolean c() {
        BlockingQueue<Runnable> queue = getQueue();
        return queue != null && queue.size() > getCorePoolSize() * 2;
    }
}
