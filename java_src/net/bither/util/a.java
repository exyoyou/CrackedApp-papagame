package net.bither.util;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f94532b;

    public a(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, BlockingQueue<Runnable> workQueue) {
        super(corePoolSize, maximumPoolSize, keepAliveTime, unit, workQueue);
        this.f94532b = getClass().getSimpleName();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable command) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("execute....getPoolSize()=");
        sb2.append(getPoolSize());
        sb2.append(";getActiveCount()=");
        sb2.append(getActiveCount());
        sb2.append(";getTaskCount()=");
        sb2.append(getTaskCount());
        sb2.append("getCorePoolSize()=");
        sb2.append(getCorePoolSize());
        sb2.append(";queue=");
        sb2.append(getQueue().size());
        super.execute(command);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> task) {
        return super.submit(task);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable task, T result) {
        return super.submit(task, result);
    }
}
