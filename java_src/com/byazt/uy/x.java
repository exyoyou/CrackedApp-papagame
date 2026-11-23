package com.byazt.uy;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1180, 71})
public final class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Context f21122c = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile int f21123da = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static com.byazt.rx.c f21125n = null;
    public static volatile String sl = null;
    public static long tt = 0;
    public static boolean uj = false;
    public static String ve = "default";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile ConcurrentHashMap<Integer, String> f21126x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static com.byazt.rx.tt f21121a = new com.byazt.rx.tt();
    public static tt sp = new tt();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static com.byazt.rx.x f21124i = null;

    public static long a() {
        return tt;
    }

    public static com.byazt.rx.c c() {
        return f21125n;
    }

    public static int da() {
        return f21123da;
    }

    public static ConcurrentHashMap<Integer, String> i() {
        return f21126x;
    }

    public static com.byazt.rx.tt n() {
        return f21121a;
    }

    public static String sl() {
        return sl;
    }

    public static String sp() {
        return ve;
    }

    public static tt tt() {
        return sp;
    }

    public static Context uj() {
        return f21122c;
    }

    public static com.byazt.rx.x ve() {
        if (f21124i == null) {
            synchronized (x.class) {
                f21124i = new com.byazt.rx.x(f21122c);
            }
        }
        return f21124i;
    }

    public static boolean x() {
        return uj;
    }

    public static void c(Context context, n nVar) {
        tt = System.currentTimeMillis();
        f21122c = context;
        f21125n = new com.byazt.rx.c(context, nVar);
    }
}
