package com.byazt.msj;

import com.byazt.bwm.i;
import com.byazt.nr.m;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1898, 20})
public abstract class c extends ThreadPoolExecutor {
    public c(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        this(i10, i11, j10, timeUnit, blockingQueue, threadFactory, com.byazt.jtc.c.f15921c);
    }

    public boolean c() {
        return false;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setCorePoolSize(int i10) {
        try {
            super.setCorePoolSize(i10);
        } catch (Exception e10) {
            m.c("BaseThreadPool", e10.getMessage());
        } catch (OutOfMemoryError e11) {
            c(null, e11);
        }
    }

    public int tt() {
        return 0;
    }

    public c(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
    }

    private void c(Runnable runnable) {
        try {
            com.byazt.mc.ve veVar = runnable instanceof com.byazt.mc.ve ? (com.byazt.mc.ve) runnable : new com.byazt.mc.ve(runnable);
            veVar.tt();
            i iVar = i.tt;
            if (iVar.yp()) {
                if (!(getCorePoolSize() > getActiveCount() && getQueue().size() <= 0)) {
                    m.tt("BaseThreadPool", "crashing drop task :".concat(String.valueOf(runnable)));
                    veVar.c(3);
                    iVar.t().submit(veVar);
                    return;
                }
            }
            veVar.c(tt());
            super.execute(veVar);
        } catch (InternalError e10) {
            m.ve("BaseThreadPool", "InternalError", e10);
        } catch (OutOfMemoryError e11) {
            if (i.tt.tt()) {
                i.uj = false;
            }
            c(runnable, e11);
        }
    }

    public void c(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        com.byazt.mc.ve.tt = true;
    }
}
