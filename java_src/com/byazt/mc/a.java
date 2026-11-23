package com.byazt.mc;

import com.byazt.bwm.i;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1001, 34})
public class a implements com.byazt.bwm.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile ThreadFactory f16846a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f16847c = new AtomicInteger(c(-536870912, 0));

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final ThreadPoolExecutor f16848da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile int f16849i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16850n;
    public boolean sl;
    public volatile RejectedExecutionHandler sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile int f16851t;
    public final BlockingQueue<Runnable> tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ThreadPoolExecutor f16852u;
    public final Condition uj;
    public final ReentrantLock ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile long f16853x;

    public a(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler, ThreadPoolExecutor threadPoolExecutor) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.ve = reentrantLock;
        this.uj = reentrantLock.newCondition();
        if (i10 < 0 || i11 <= 0 || i11 < i10 || j10 < 0) {
            throw new IllegalArgumentException();
        }
        if (blockingQueue == null || threadFactory == null || rejectedExecutionHandler == null) {
            throw null;
        }
        this.f16849i = i10;
        this.f16851t = i11;
        this.tt = blockingQueue;
        this.f16853x = timeUnit.toNanos(j10);
        this.f16846a = threadFactory;
        this.sp = rejectedExecutionHandler;
        this.f16848da = threadPoolExecutor;
    }

    private boolean a(int i10) {
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return com.byazt.msj.uj.ve();
        }
        return false;
    }

    private static int c(int i10) {
        return i10 & (-536870912);
    }

    private void n(int i10) {
        int i11;
        do {
            i11 = this.f16847c.get();
            if (ve(i11, i10)) {
                return;
            }
        } while (!this.f16847c.compareAndSet(i11, c(i10, tt(i11))));
    }

    private static int tt(int i10) {
        return i10 & 536870911;
    }

    private boolean uj(int i10) {
        return this.f16847c.compareAndSet(i10, i10 + 1);
    }

    private static boolean ve(int i10) {
        return i10 < 0;
    }

    @Override // com.byazt.bwm.c
    public void allowCoreThreadTimeOut(boolean z10) {
        this.sl = true;
    }

    @Override // com.byazt.bwm.c
    public boolean allowsCoreThreadTimeOut() {
        return this.sl;
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j10);
        ReentrantLock reentrantLock = this.ve;
        reentrantLock.lock();
        while (!ve(this.f16847c.get(), 1610612736)) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.uj.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        ve veVar;
        if (runnable == null) {
            return;
        }
        if (runnable instanceof ve) {
            veVar = (ve) runnable;
            veVar.c(this);
        } else {
            veVar = new ve(runnable, this);
        }
        c(veVar);
    }

    public void finalize() {
        shutdown();
        try {
            super.finalize();
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    @Override // com.byazt.bwm.c
    public int getActiveCount() {
        return tt(this.f16847c.get());
    }

    @Override // com.byazt.bwm.c
    public long getCompletedTaskCount() {
        return 0L;
    }

    @Override // com.byazt.bwm.c
    public int getCorePoolSize() {
        return this.f16849i;
    }

    @Override // com.byazt.bwm.c
    public long getKeepAliveTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.f16853x, TimeUnit.NANOSECONDS);
    }

    @Override // com.byazt.bwm.c
    public int getLargestPoolSize() {
        return 0;
    }

    @Override // com.byazt.bwm.c
    public int getMaximumPoolSize() {
        return this.f16851t;
    }

    @Override // com.byazt.bwm.c
    public int getPoolSize() {
        if (ve(this.f16847c.get(), 1073741824)) {
            return 0;
        }
        return tt(this.f16847c.get());
    }

    @Override // com.byazt.bwm.c
    public BlockingQueue<Runnable> getQueue() {
        return this.tt;
    }

    @Override // com.byazt.bwm.c
    public RejectedExecutionHandler getRejectedExecutionHandler() {
        return this.sp;
    }

    @Override // com.byazt.bwm.c
    public long getTaskCount() {
        return 0L;
    }

    @Override // com.byazt.bwm.c
    public ThreadFactory getThreadFactory() {
        return this.f16846a;
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return !ve(this.f16847c.get());
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return ve(this.f16847c.get(), 1610612736);
    }

    @Override // com.byazt.bwm.c
    public boolean isTerminating() {
        int i10 = this.f16847c.get();
        return !ve(i10) && tt(i10, 1610612736);
    }

    @Override // com.byazt.bwm.c
    public int prestartAllCoreThreads() {
        return 0;
    }

    @Override // com.byazt.bwm.c
    public boolean prestartCoreThread() {
        return false;
    }

    @Override // com.byazt.bwm.c
    public void purge() {
        BlockingQueue<Runnable> blockingQueue = this.tt;
        try {
            Iterator<Runnable> it2 = blockingQueue.iterator();
            while (it2.hasNext()) {
                Runnable next = it2.next();
                if ((next instanceof Future) && ((Future) next).isCancelled()) {
                    it2.remove();
                }
            }
        } catch (ConcurrentModificationException unused) {
            for (Object obj : blockingQueue.toArray()) {
                if ((obj instanceof Future) && ((Future) obj).isCancelled()) {
                    blockingQueue.remove(obj);
                }
            }
        }
        tt();
    }

    @Override // com.byazt.bwm.c
    public boolean remove(Runnable runnable) {
        boolean zRemove = this.tt.remove(runnable);
        tt();
        return zRemove;
    }

    @Override // com.byazt.bwm.c
    public void setCorePoolSize(int i10) {
    }

    @Override // com.byazt.bwm.c
    public void setKeepAliveTime(long j10, TimeUnit timeUnit) {
        if (j10 < 0) {
            throw new IllegalArgumentException();
        }
        if (j10 == 0 && allowsCoreThreadTimeOut()) {
            throw new IllegalArgumentException("Core threads must have nonzero keep alive times");
        }
        this.f16853x = timeUnit.toNanos(j10);
    }

    @Override // com.byazt.bwm.c
    public void setMaximumPoolSize(int i10) {
        if (i10 <= 0 || i10 < this.f16849i) {
            throw new IllegalArgumentException();
        }
        this.f16851t = i10;
        this.f16847c.get();
    }

    @Override // com.byazt.bwm.c
    public void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler) {
        rejectedExecutionHandler.getClass();
        this.sp = rejectedExecutionHandler;
    }

    @Override // com.byazt.bwm.c
    public void setThreadFactory(ThreadFactory threadFactory) {
        threadFactory.getClass();
        this.f16846a = threadFactory;
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public void shutdown() {
        ReentrantLock reentrantLock = this.ve;
        reentrantLock.lock();
        try {
            n(0);
            reentrantLock.unlock();
            tt();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        ReentrantLock reentrantLock = this.ve;
        reentrantLock.lock();
        try {
            n(C.ENCODING_PCM_A_LAW);
            List<Runnable> listUj = uj();
            reentrantLock.unlock();
            tt();
            return listUj;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        execute(futureTask);
        return futureTask;
    }

    @Override // com.byazt.bwm.c
    public String toString() {
        String str;
        int i10 = this.f16847c.get();
        if (tt(i10, 0)) {
            str = "Running";
        } else {
            str = ve(i10, 1610612736) ? "Terminated" : "Shutting down";
        }
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + "[" + str + ", runnable name = , core size = " + this.f16849i + ", max size = " + this.f16851t + ", worker count = " + tt(i10) + ", queued tasks = " + this.tt.size() + "]";
    }

    private static int c(int i10, int i11) {
        return i10 | i11;
    }

    private static boolean tt(int i10, int i11) {
        return i10 < i11;
    }

    private List<Runnable> uj() {
        BlockingQueue<Runnable> blockingQueue = this.tt;
        ArrayList arrayList = new ArrayList();
        blockingQueue.drainTo(arrayList);
        if (!blockingQueue.isEmpty()) {
            for (Runnable runnable : (Runnable[]) blockingQueue.toArray(new Runnable[0])) {
                if (blockingQueue.remove(runnable)) {
                    if (runnable instanceof ve) {
                        arrayList.add(((ve) runnable).ve);
                    } else {
                        arrayList.add(runnable);
                    }
                }
            }
        }
        return arrayList;
    }

    private static boolean ve(int i10, int i11) {
        return i10 >= i11;
    }

    private void ve() {
        while (true) {
            int i10 = this.f16847c.get();
            if (this.f16847c.compareAndSet(i10, i10 - 1)) {
                return;
            } else {
                Thread.yield();
            }
        }
    }

    public ThreadPoolExecutor c() {
        if (this.f16852u == null) {
            this.f16852u = i.tt.da();
        }
        return this.f16852u;
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        if (callable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(callable);
        execute(futureTask);
        return futureTask;
    }

    public final void tt() {
        while (true) {
            int i10 = this.f16847c.get();
            if (ve(i10) || ve(i10, 1073741824)) {
                return;
            }
            if ((c(i10) == 0 && !this.tt.isEmpty()) || tt(i10) != 0) {
                return;
            }
            ReentrantLock reentrantLock = this.ve;
            reentrantLock.lock();
            try {
                if (this.f16847c.compareAndSet(i10, c(1073741824, 0))) {
                    this.f16847c.set(c(1610612736, 0));
                    this.uj.signalAll();
                    reentrantLock.unlock();
                    return;
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    private void n() {
        ReentrantLock reentrantLock = this.ve;
        reentrantLock.lock();
        try {
            ve();
            tt();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.byazt.bwm.c, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t10) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, t10);
        execute(futureTask);
        return futureTask;
    }

    public final void c(Runnable runnable) {
        this.sp.rejectedExecution(runnable, this.f16848da);
    }

    private void c(ve veVar) {
        int i10 = this.f16847c.get();
        if (tt(i10) < this.f16849i) {
            if (tt((Runnable) veVar, true)) {
                i.tt.sp();
                return;
            }
            i10 = this.f16847c.get();
        }
        if (tt(i10) == 0) {
            if (tt((Runnable) veVar, false)) {
                i.tt.sp();
                return;
            }
            i10 = this.f16847c.get();
        }
        if (ve(i10) && this.tt.offer(veVar)) {
            if (!ve(this.f16847c.get()) && remove(veVar)) {
                c(veVar.c());
                i.tt.sp();
                return;
            } else {
                i.tt.sp();
                return;
            }
        }
        if (tt(i10) < this.f16851t && tt((Runnable) veVar, false)) {
            i.tt.sp();
        } else {
            c(veVar.c());
            i.tt.sp();
        }
    }

    private boolean tt(Runnable runnable, boolean z10) {
        while (true) {
            int i10 = this.f16847c.get();
            int iC = c(i10);
            boolean z11 = false;
            if (iC >= 0 && (iC != 0 || runnable != null || this.tt.isEmpty())) {
                break;
            }
            do {
                int iTt = tt(i10);
                if (iTt < 536870911) {
                    if (iTt < (z10 ? this.f16849i : this.f16851t)) {
                        if (!uj(i10)) {
                            i10 = this.f16847c.get();
                        } else {
                            try {
                                ReentrantLock reentrantLock = this.ve;
                                reentrantLock.lock();
                                try {
                                    int iC2 = c(this.f16847c.get());
                                    if (iC2 < 0 || (iC2 == 0 && runnable == null)) {
                                        c().execute(runnable);
                                        int iTt2 = tt(this.f16847c.get());
                                        if (iTt2 > this.f16850n) {
                                            this.f16850n = iTt2;
                                        }
                                        z11 = true;
                                    }
                                    reentrantLock.unlock();
                                    if (!z11) {
                                        n();
                                    }
                                    return z11;
                                } catch (Throwable th) {
                                    reentrantLock.unlock();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                n();
                                throw th2;
                            }
                        }
                    }
                }
                return false;
            } while (c(i10) == iC);
        }
        return false;
    }

    public void c(Runnable runnable, boolean z10) {
        int i10 = this.f16847c.get();
        int iTt = tt(runnable);
        if (tt(i10, C.ENCODING_PCM_A_LAW)) {
            do {
                Runnable runnablePoll = this.tt.poll();
                if (runnablePoll != null) {
                    if (a(iTt) && (runnablePoll instanceof ve)) {
                        ve veVar = (ve) runnablePoll;
                        veVar.tt();
                        veVar.c(iTt);
                        veVar.c((a) null);
                        runnablePoll.run();
                    } else {
                        c().execute(runnablePoll);
                        return;
                    }
                } else {
                    ve();
                    return;
                }
            } while (tt(i10, C.ENCODING_PCM_A_LAW));
            tt();
            return;
        }
        tt();
    }

    private int tt(Runnable runnable) {
        if (runnable instanceof ve) {
            return ((ve) runnable).uj();
        }
        return 0;
    }
}
