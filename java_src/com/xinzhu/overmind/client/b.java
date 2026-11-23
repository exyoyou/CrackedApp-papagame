package com.xinzhu.overmind.client;

import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes8.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f89187a = Thread.getDefaultUncaughtExceptionHandler();

    public b() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static void a() {
        new b();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (Overmind.get().getExceptionHandler() != null) {
            Overmind.get().getExceptionHandler().uncaughtException(thread, th);
        }
        this.f89187a.uncaughtException(thread, th);
    }
}
