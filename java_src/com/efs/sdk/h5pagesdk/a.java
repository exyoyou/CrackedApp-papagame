package com.efs.sdk.h5pagesdk;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class a {
    private static final String TAG = "com.efs.sdk.h5pagesdk.a";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f26425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ThreadFactory f26426j = new ThreadFactory() { // from class: com.efs.sdk.h5pagesdk.a.1

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private AtomicInteger f26427k = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("H5ThreadPoolExecutor" + this.f26427k.addAndGet(1));
            return thread;
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f26425i == null) {
            synchronized (a.class) {
                if (f26425i == null) {
                    f26425i = new ScheduledThreadPoolExecutor(4, f26426j);
                }
            }
        }
        return f26425i;
    }

    public static void execute(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
