package com.byazt.gv;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 247, 15})
public class uj implements ThreadFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f14768c = new AtomicInteger(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final tt.c f14769n;
    public final ThreadGroup tt;
    public final String uj;
    public final AtomicInteger ve = new AtomicInteger(1);

    public uj(tt.c cVar, String str) {
        this.f14769n = cVar;
        SecurityManager securityManager = System.getSecurityManager();
        this.tt = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.uj = "ttdefault-" + f14768c.getAndIncrement() + "-thread-";
            return;
        }
        this.uj = str + f14768c.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(this.tt, runnable, this.uj + this.ve.getAndIncrement(), 0L);
        if (veVar.isDaemon()) {
            veVar.setDaemon(false);
        }
        tt.c cVar = this.f14769n;
        if (cVar != null && cVar.c() == tt.c.LOW.c()) {
            veVar.setPriority(1);
        } else if (veVar.getPriority() != 5) {
            veVar.setPriority(3);
        } else {
            veVar.setPriority(5);
        }
        return veVar;
    }
}
