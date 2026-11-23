package com.beizi.fusion.tool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f10584a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile e f10585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f10586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f10587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f10588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f10589f;

    private e() {
        if (f10584a.get()) {
            return;
        }
        a();
    }

    public static void a() {
        AtomicBoolean atomicBoolean = f10584a;
        if (atomicBoolean.get()) {
            return;
        }
        f10586c = i.a();
        f10587d = i.b();
        f10588e = i.c();
        f10589f = i.d();
        atomicBoolean.set(true);
    }

    public static e b() {
        if (f10585b == null) {
            synchronized (e.class) {
                if (f10585b == null) {
                    f10585b = new e();
                }
            }
        }
        return f10585b;
    }

    public ExecutorService c() {
        if (f10586c == null) {
            f10586c = i.a();
        }
        return f10586c;
    }

    public ExecutorService d() {
        if (f10587d == null) {
            f10587d = i.b();
        }
        return f10587d;
    }

    public ExecutorService e() {
        if (f10588e == null) {
            f10588e = i.c();
        }
        return f10588e;
    }

    public ExecutorService f() {
        if (f10589f == null) {
            f10589f = i.d();
        }
        return f10589f;
    }
}
