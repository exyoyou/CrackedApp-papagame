package com.heepay.plugin.c;

import android.os.Looper;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static BlockingQueue<Runnable> f34298e = new ArrayBlockingQueue(10);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ThreadFactory f34299f = new ThreadFactory() { // from class: com.heepay.plugin.c.h.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f34300a = new AtomicInteger();

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "threadPool thread:" + this.f34300a.getAndIncrement());
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f34294a = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f34295b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f34296c = 10000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ThreadPoolExecutor f34297d = new ThreadPoolExecutor(f34294a, f34295b, f34296c, TimeUnit.SECONDS, f34298e, f34299f);

    public static void a(Runnable runnable) {
        f34297d.execute(runnable);
    }

    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
