package com.byazt.u;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, 67, 20})
public class c implements ThreadFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20494c;
    public final AtomicInteger tt;
    public final boolean ve;

    public c(String str) {
        this(str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(runnable, this.f20494c + "-" + this.tt.incrementAndGet());
        if (!this.ve) {
            if (veVar.isDaemon()) {
                veVar.setDaemon(false);
            }
            if (veVar.getPriority() != 5) {
                veVar.setPriority(5);
            }
        }
        return veVar;
    }

    public c(String str, boolean z10) {
        this.tt = new AtomicInteger();
        this.f20494c = str;
        this.ve = z10;
    }
}
