package com.baidu.mobads.sdk.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7556a = "ThreadPoolFactory";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f7557b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7558c = 60;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ThreadPoolExecutor f7559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static LinkedBlockingQueue<Runnable> f7560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f7561f = new bg();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final RejectedExecutionHandler f7562g = new bi();

    public static ThreadPoolExecutor a(int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i11, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f7561f);
        threadPoolExecutor.setRejectedExecutionHandler(f7562g);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static ScheduledThreadPoolExecutor a(int i10) {
        return new ScheduledThreadPoolExecutor(i10, f7561f);
    }
}
