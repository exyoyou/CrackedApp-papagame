package com.byazt.gv;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 247, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f14764c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final PriorityBlockingQueue<Runnable> f14765n;
    public static final int tt;
    public static final PriorityBlockingQueue<Runnable> uj;
    public static final int ve;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f14764c = iAvailableProcessors;
        tt = (iAvailableProcessors / 2) + 1 < 4 ? 4 : (iAvailableProcessors / 2) + 1;
        ve = (iAvailableProcessors / 2) + 1 >= 4 ? (iAvailableProcessors / 2) + 1 : 4;
        uj = new PriorityBlockingQueue<>();
        f14765n = new PriorityBlockingQueue<>();
    }

    public static ThreadPoolExecutor c() {
        int i10 = tt;
        return new com.byazt.jtc.uj(i10, i10, 1L, TimeUnit.SECONDS, uj, new uj(tt.c.NORMAL, "tt-api-thread-"));
    }

    public static ThreadPoolExecutor tt() {
        int i10 = ve;
        return new com.byazt.jtc.uj(i10, i10, 1L, TimeUnit.SECONDS, f14765n, new uj(tt.c.NORMAL, "tt-default-thread-"));
    }

    public static ScheduledExecutorService ve() {
        return com.byazt.bwm.tt.ve(new uj(tt.c.LOW, "tt-delay-thread-"));
    }
}
