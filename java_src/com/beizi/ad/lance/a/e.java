package com.beizi.ad.lance.a;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f9200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f9201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LinkedBlockingQueue<Runnable> f9202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final LinkedBlockingQueue<Runnable> f9203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ArrayBlockingQueue<Runnable> f9204e;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f9200a = iAvailableProcessors;
        f9201b = Math.max((iAvailableProcessors / 2) + 1, 4);
        f9202c = new LinkedBlockingQueue<>();
        f9203d = new LinkedBlockingQueue<>();
        f9204e = new ArrayBlockingQueue<>(50);
    }

    public static ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(2, f9201b, 5L, TimeUnit.SECONDS, f9202c, new d(5, "BeiZi-adsdk-adrequest-thread-"), f());
    }

    public static ThreadPoolExecutor b() {
        return new ThreadPoolExecutor(2, f9201b, 5L, TimeUnit.SECONDS, f9202c, new d(5, "BeiZi-adsdk-adrequest-thread-"), f());
    }

    public static ThreadPoolExecutor c() {
        return new ThreadPoolExecutor(0, 2, 5L, TimeUnit.SECONDS, f9203d, new d(5, "BeiZi-adsdk-heartbeat-thread-"), f());
    }

    public static ThreadPoolExecutor d() {
        return new ThreadPoolExecutor(2, 6, 20L, TimeUnit.SECONDS, f9204e, new d(5, "BeiZi-adsdk-file-log-upload-thread-"), f());
    }

    public static ScheduledThreadPoolExecutor e() {
        return (ScheduledThreadPoolExecutor) Executors.newScheduledThreadPool(4);
    }

    public static RejectedExecutionHandler f() {
        return new RejectedExecutionHandler() { // from class: com.beizi.ad.lance.a.e.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }
}
