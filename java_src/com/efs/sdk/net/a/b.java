package com.efs.sdk.net.a;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f26548a = "com.efs.sdk.net.a.b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f26549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadFactory f26550c = new ThreadFactory() { // from class: com.efs.sdk.net.a.b.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AtomicInteger f26551a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("NetThreadPoolExecutor" + this.f26551a.addAndGet(1));
            return thread;
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f26549b == null) {
            synchronized (b.class) {
                if (f26549b == null) {
                    f26549b = new ScheduledThreadPoolExecutor(4, f26550c);
                }
            }
        }
        return f26549b;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
