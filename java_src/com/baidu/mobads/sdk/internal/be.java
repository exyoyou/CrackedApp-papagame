package com.baidu.mobads.sdk.internal;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7552a = "TaskScheduler";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile be f7553d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ThreadPoolExecutor f7554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f7555c;

    private be() {
        b();
    }

    public static be a() {
        if (f7553d == null) {
            synchronized (be.class) {
                if (f7553d == null) {
                    f7553d = new be();
                }
            }
        }
        return f7553d;
    }

    private void b() {
        this.f7554b = bf.a(1, 1);
        this.f7555c = bf.a(1);
    }

    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor;
        if (runnable == null || (threadPoolExecutor = this.f7554b) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            this.f7554b.submit(runnable);
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar) {
        ThreadPoolExecutor threadPoolExecutor;
        if (jVar == null || (threadPoolExecutor = this.f7554b) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            ThreadPoolExecutor threadPoolExecutor2 = this.f7554b;
            jVar.a((Future) ((threadPoolExecutor2 == null || threadPoolExecutor2.isShutdown()) ? null : (FutureTask) this.f7554b.submit(jVar)));
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar, long j10, TimeUnit timeUnit) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        if (jVar == null || (scheduledThreadPoolExecutor = this.f7555c) == null || scheduledThreadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            jVar.a((Future) this.f7555c.schedule(jVar, j10, timeUnit));
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar, long j10, long j11, TimeUnit timeUnit) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        if (jVar == null || (scheduledThreadPoolExecutor = this.f7555c) == null || scheduledThreadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            jVar.a((Future) this.f7555c.scheduleAtFixedRate(jVar, j10, j11, timeUnit));
        } catch (Throwable unused) {
        }
    }
}
