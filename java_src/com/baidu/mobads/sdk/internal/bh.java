package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class bh implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bg f7564a;

    bh(bg bgVar) {
        this.f7564a = bgVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        az.h("ThreadPoolFactory").c("线程名字=" + thread.getName() + "线程crash信息", th);
    }
}
