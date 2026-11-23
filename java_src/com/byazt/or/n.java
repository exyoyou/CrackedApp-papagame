package com.byazt.or;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 46})
public class n {
    public static void c(com.byazt.bwm.sp spVar, int i10) {
        if (spVar == null) {
            return;
        }
        com.byazt.mf.ve veVarVe = com.byazt.mf.c.c().ve();
        ExecutorService executorServiceYp = veVarVe != null ? veVarVe.yp() : null;
        if (executorServiceYp == null) {
            com.byazt.bwm.n.c(spVar, i10);
        } else {
            spVar.c(i10);
            executorServiceYp.execute(spVar);
        }
    }

    public static void tt(com.byazt.bwm.sp spVar, int i10) {
        if (spVar == null) {
            return;
        }
        com.byazt.mf.ve veVarVe = com.byazt.mf.c.c().ve();
        ExecutorService executorServiceU = veVarVe != null ? veVarVe.u() : null;
        if (executorServiceU == null) {
            com.byazt.bwm.n.c(spVar);
        } else {
            spVar.c(i10);
            executorServiceU.execute(spVar);
        }
    }

    public static ScheduledFuture c(Runnable runnable, long j10, TimeUnit timeUnit) {
        return com.byazt.bwm.n.uj().schedule(runnable, j10, timeUnit);
    }
}
