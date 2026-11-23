package com.umeng.umzid;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile ScheduledThreadPoolExecutor f85702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ThreadFactory f85703b = new a();

    public static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AtomicInteger f85704a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("ZIDThreadPoolExecutor" + this.f85704a.addAndGet(1));
            return thread;
        }
    }

    public static ScheduledThreadPoolExecutor a() {
        if (f85702a == null) {
            synchronized (c.class) {
                if (f85702a == null) {
                    f85702a = new ScheduledThreadPoolExecutor(Runtime.getRuntime().availableProcessors() * 4, f85703b);
                }
            }
        }
        return f85702a;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable unused) {
        }
    }
}
