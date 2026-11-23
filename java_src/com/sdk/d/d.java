package com.sdk.d;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Executor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadFactory f78496c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BlockingQueue<Runnable> f78497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadPoolExecutor f78498b;

    public class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicInteger f78499a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "PriorityExecutor #" + this.f78499a.getAndIncrement());
        }
    }

    public d(int i10) {
        f fVar = new f();
        this.f78497a = fVar;
        this.f78498b = new ThreadPoolExecutor(i10, 256, 1L, TimeUnit.SECONDS, fVar, f78496c);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f78498b.execute(runnable);
    }
}
