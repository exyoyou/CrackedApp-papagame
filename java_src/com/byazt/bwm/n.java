package com.byazt.bwm;

import com.byazt.dna.qp;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static qp f12130c;

    public static void c(sp spVar) {
        spVar.c(10);
        n().executeFastTask(spVar);
    }

    private static qp n() {
        if (f12130c == null) {
            f12130c = (qp) com.byazt.ut.uj.getService("thread_service");
        }
        return f12130c;
    }

    public static void tt(sp spVar) {
        c().execute(spVar);
    }

    public static void uj(sp spVar) {
        n().executeFastTask(spVar);
    }

    public static void ve(sp spVar) {
        tt().execute(spVar);
    }

    public static ExecutorService tt() {
        return n().getNormalExecutor();
    }

    public static ScheduledExecutorService uj() {
        return n().getScheduledThreadPool();
    }

    public static ExecutorService ve() {
        return c();
    }

    public static ExecutorService c() {
        return n().getIoExecutor();
    }

    public static void tt(sp spVar, int i10) {
        spVar.c(i10);
        n().getAIDLExecutor().execute(spVar);
    }

    public static void c(sp spVar, int i10) {
        spVar.c(i10);
        c().execute(spVar);
    }
}
