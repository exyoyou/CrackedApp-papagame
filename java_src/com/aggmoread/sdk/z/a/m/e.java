package com.aggmoread.sdk.z.a.m;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends HandlerThread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f3693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Handler f3694c;

    private e() {
        super("AdSdk-api.bg.tasks", 0);
    }

    private static void a() {
        if (f3693b == null) {
            e eVar = new e();
            f3693b = eVar;
            eVar.start();
            f3694c = new Handler(f3693b.getLooper());
        }
    }

    public static Handler b() {
        Handler handler;
        synchronized (e.class) {
            a();
            handler = f3694c;
        }
        return handler;
    }

    public static void a(Runnable runnable) {
        b().removeCallbacks(runnable);
    }
}
