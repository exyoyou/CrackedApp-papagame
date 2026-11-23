package com.byazt.msj;

import com.byazt.bwm.i;
import com.byazt.nr.m;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1898, 13})
public class tt extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AtomicInteger f16965c;

    public tt(int i10, int i11, long j10, TimeUnit timeUnit, ThreadFactory threadFactory) {
        super(i10, i11, j10, timeUnit, new SynchronousQueue(), threadFactory);
        this.f16965c = new AtomicInteger(0);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        Runnable runnablePoll;
        super.afterExecute(runnable, th);
        BlockingQueue<Runnable> queue = i.tt.i().getQueue();
        if (queue.size() == 0) {
            return;
        }
        int maximumPoolSize = getMaximumPoolSize();
        if (this.f16965c.get() >= Math.max(getCorePoolSize(), maximumPoolSize / 4)) {
            return;
        }
        try {
            this.f16965c.getAndIncrement();
            int activeCount = getActiveCount();
            while (activeCount < maximumPoolSize / 2 && !isShutdown() && !isTerminated() && !isTerminating() && (runnablePoll = queue.poll()) != null) {
                if (runnablePoll instanceof com.byazt.mc.ve) {
                    com.byazt.mc.ve veVar = (com.byazt.mc.ve) runnablePoll;
                    veVar.c(tt());
                    veVar.tt();
                }
                runnablePoll.run();
                activeCount = getActiveCount();
            }
        } finally {
            this.f16965c.getAndDecrement();
        }
    }

    @Override // com.byazt.msj.c
    public void c(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        super.c(runnable, outOfMemoryError);
        if (runnable != null) {
            if (runnable instanceof com.byazt.mc.ve) {
                ((com.byazt.mc.ve) runnable).c(false);
            } else {
                runnable = new ve(runnable);
            }
            i.tt.i().execute(runnable);
        }
        try {
            allowCoreThreadTimeOut(false);
        } catch (Exception e10) {
            m.ve("BigThreadPool", "oom", e10);
        }
    }

    @Override // com.byazt.msj.c, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable instanceof ve) {
            super.execute(runnable);
            return;
        }
        if (c(runnable)) {
            return;
        }
        if (!c()) {
            super.execute(runnable);
            return;
        }
        if (runnable instanceof com.byazt.mc.ve) {
            ((com.byazt.mc.ve) runnable).c(false);
        } else {
            runnable = new ve(runnable);
        }
        i.tt.i().execute(runnable);
    }

    @Override // com.byazt.msj.c
    public int tt() {
        return 1;
    }

    @Override // com.byazt.msj.c
    public boolean c() {
        return getActiveCount() >= getMaximumPoolSize();
    }

    private boolean c(Runnable runnable) {
        com.byazt.mc.ve veVar;
        if (!uj.ve()) {
            return false;
        }
        if (runnable instanceof com.byazt.mc.ve) {
            veVar = (com.byazt.mc.ve) runnable;
            if (!veVar.ve()) {
                return false;
            }
        } else {
            veVar = new ve(runnable);
        }
        com.byazt.mc.ve.f16858c.incrementAndGet();
        veVar.c(false);
        i.tt.i().execute(veVar);
        return true;
    }
}
