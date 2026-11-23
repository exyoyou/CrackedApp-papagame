package com.efs.sdk.launch;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f26442a = "com.efs.sdk.launch.a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f26443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadFactory f26444c = new ThreadFactory() { // from class: com.efs.sdk.launch.a.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AtomicInteger f26445a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("LaunchThreadPoolExecutor" + this.f26445a.addAndGet(1));
            return thread;
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f26443b == null) {
            synchronized (a.class) {
                if (f26443b == null) {
                    f26443b = new ScheduledThreadPoolExecutor(4, f26444c);
                }
            }
        }
        return f26443b;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
