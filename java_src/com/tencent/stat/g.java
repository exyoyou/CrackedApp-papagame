package com.tencent.stat;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class g implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f83939a;

    g(Context context) {
        this.f83939a = context;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (StatConfig.isEnableStatService()) {
            n nVarA = n.a(this.f83939a);
            Context context = this.f83939a;
            nVarA.a(new com.tencent.stat.a.d(context, StatService.a(context, false), 2, th), (c) null);
            StatService.f83814i.debug("MTA has caught the following uncaught exception:");
            StatService.f83814i.error(th);
            if (StatService.f83815j == null) {
                StatService.f83814i.debug("Original uncaught exception handler not set.");
            } else {
                StatService.f83814i.debug("Call the original uncaught exception handler.");
                StatService.f83815j.uncaughtException(thread, th);
            }
        }
    }
}
