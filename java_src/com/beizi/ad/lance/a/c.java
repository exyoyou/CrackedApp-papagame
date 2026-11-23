package com.beizi.ad.lance.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f9188a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f9189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f9194g;

    private c() {
        if (f9188a.get()) {
            return;
        }
        a();
    }

    public static void a() {
        AtomicBoolean atomicBoolean = f9188a;
        if (atomicBoolean.get()) {
            return;
        }
        f9190c = e.a();
        f9192e = e.c();
        f9193f = e.d();
        atomicBoolean.set(true);
    }

    public static c b() {
        if (f9189b == null) {
            synchronized (c.class) {
                if (f9189b == null) {
                    f9189b = new c();
                }
            }
        }
        return f9189b;
    }

    public ExecutorService c() {
        if (f9190c == null) {
            f9190c = e.a();
        }
        return f9190c;
    }

    public ExecutorService d() {
        if (f9191d == null) {
            f9191d = e.b();
        }
        return f9191d;
    }

    public ExecutorService e() {
        if (f9192e == null) {
            f9192e = e.c();
        }
        return f9192e;
    }

    public ExecutorService f() {
        if (f9193f == null) {
            f9193f = e.d();
        }
        return f9193f;
    }

    public ScheduledThreadPoolExecutor g() {
        if (f9194g == null) {
            f9194g = e.e();
        }
        return f9194g;
    }
}
