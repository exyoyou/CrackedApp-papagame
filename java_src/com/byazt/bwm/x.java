package com.byazt.bwm;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 71})
public class x implements ThreadFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12139c;
    public final ThreadGroup tt;
    public final AtomicInteger uj;
    public int ve;

    public x(String str) {
        this(5, str);
    }

    public Thread c(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new com.byazt.jtc.ve(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadC = c(this.tt, runnable, this.f12139c + "_" + this.uj.getAndIncrement());
        if (threadC.isDaemon()) {
            threadC.setDaemon(false);
        }
        int i10 = this.ve;
        if (i10 > 10) {
            this.ve = 10;
        } else if (i10 <= 0) {
            this.ve = 1;
        }
        threadC.setPriority(this.ve);
        return threadC;
    }

    public x(int i10, String str) {
        this.uj = new AtomicInteger(1);
        this.ve = i10;
        this.tt = new ThreadGroup("csj_g_" + str);
        StringBuilder sb2 = new StringBuilder("csj_");
        sb2.append(i.tt.a() ? "p" : "");
        sb2.append(str);
        this.f12139c = sb2.toString();
    }
}
