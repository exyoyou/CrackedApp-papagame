package com.tencent.bugly.proguard;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f83273a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ak f83274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f83275c;

    protected ak() {
        this.f83275c = null;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(3, new ThreadFactory() { // from class: com.tencent.bugly.proguard.ak.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + ak.f83273a.getAndIncrement());
                return thread;
            }
        });
        this.f83275c = scheduledExecutorServiceNewScheduledThreadPool;
        if (scheduledExecutorServiceNewScheduledThreadPool == null || scheduledExecutorServiceNewScheduledThreadPool.isShutdown()) {
            al.d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    public static synchronized ak a() {
        if (f83274b == null) {
            f83274b = new ak();
        }
        return f83274b;
    }

    public final synchronized void b() {
        ScheduledExecutorService scheduledExecutorService = this.f83275c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            al.c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.f83275c.shutdownNow();
        }
    }

    public final synchronized boolean c() {
        ScheduledExecutorService scheduledExecutorService = this.f83275c;
        return (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) ? false : true;
    }

    public final synchronized boolean a(Runnable runnable, long j10) {
        if (!c()) {
            al.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (j10 <= 0) {
            j10 = 0;
        }
        al.c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j10), runnable.getClass().getName());
        try {
            this.f83275c.schedule(runnable, j10, TimeUnit.MILLISECONDS);
            return true;
        } catch (Throwable th) {
            if (p.f83617c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final synchronized boolean a(Runnable runnable) {
        if (!c()) {
            al.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (runnable == null) {
            al.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        }
        al.c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
        try {
            this.f83275c.execute(runnable);
            return true;
        } catch (Throwable th) {
            if (p.f83617c) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
