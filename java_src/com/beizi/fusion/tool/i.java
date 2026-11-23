package com.beizi.fusion.tool;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f10616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f10617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LinkedBlockingQueue<Runnable> f10618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final LinkedBlockingQueue<Runnable> f10619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final LinkedBlockingQueue<Runnable> f10620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ArrayBlockingQueue<Runnable> f10621f;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f10616a = iAvailableProcessors;
        f10617b = Math.max((iAvailableProcessors / 2) + 1, 4);
        f10618c = new LinkedBlockingQueue<>();
        f10619d = new LinkedBlockingQueue<>();
        f10620e = new LinkedBlockingQueue<>();
        f10621f = new ArrayBlockingQueue<>(200);
    }

    public static ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(2, f10617b, 5L, TimeUnit.SECONDS, f10618c, new h(5, "afAd-"), e());
    }

    public static ThreadPoolExecutor b() {
        return new ThreadPoolExecutor(2, f10617b, 5L, TimeUnit.SECONDS, f10619d, new h(5, "afHb-"), e());
    }

    public static ThreadPoolExecutor c() {
        return new ThreadPoolExecutor(2, 20, 20L, TimeUnit.SECONDS, f10621f, new h(5, "afFu-"), e());
    }

    public static ThreadPoolExecutor d() {
        return new ThreadPoolExecutor(2, f10617b, 20L, TimeUnit.SECONDS, f10620e, new h(5, "afIt-"), e());
    }

    public static RejectedExecutionHandler e() {
        return new RejectedExecutionHandler() { // from class: com.beizi.fusion.tool.i.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }
}
