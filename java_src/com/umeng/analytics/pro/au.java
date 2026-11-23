package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f84316a = "UMExecutor";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f84317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadFactory f84318c = new ThreadFactory() { // from class: com.umeng.analytics.pro.au.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f84319a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ccg-" + this.f84319a.incrementAndGet());
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f84317b == null) {
            synchronized (au.class) {
                if (f84317b == null) {
                    f84317b = new ScheduledThreadPoolExecutor(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors(), 4)), f84318c);
                    f84317b.setKeepAliveTime(3L, TimeUnit.SECONDS);
                    f84317b.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f84317b;
    }

    public static void a(Runnable runnable, long j10, TimeUnit timeUnit) {
        try {
            a().schedule(runnable, j10, timeUnit);
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "schedule error:" + th.getMessage());
        }
    }
}
