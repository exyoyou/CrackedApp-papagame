package com.byazt.sb;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1065, 20})
public class c implements ThreadFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadGroup f19569c;
    public final AtomicInteger tt = new AtomicInteger(1);

    public c(String str) {
        this.f19569c = new ThreadGroup("tt_img_".concat(String.valueOf(str)));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(this.f19569c, runnable, "tt_img_" + this.tt.getAndIncrement());
        if (veVar.isDaemon()) {
            veVar.setDaemon(false);
        }
        return veVar;
    }
}
