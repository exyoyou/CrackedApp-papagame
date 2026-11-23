package com.umeng.analytics.pro;

import com.umeng.analytics.AnalyticsConfig;

/* JADX INFO: loaded from: classes9.dex */
public class r implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f84891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v f84892b;

    public r() {
        if (Thread.getDefaultUncaughtExceptionHandler() == this) {
            return;
        }
        this.f84891a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void a(v vVar) {
        this.f84892b = vVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(th);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f84891a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == Thread.getDefaultUncaughtExceptionHandler()) {
            return;
        }
        this.f84891a.uncaughtException(thread, th);
    }

    private void a(Throwable th) {
        if (AnalyticsConfig.CATCH_EXCEPTION) {
            this.f84892b.a(th);
        } else {
            this.f84892b.a(null);
        }
    }
}
