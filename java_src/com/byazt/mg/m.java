package com.byazt.mg;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 130})
public final class m {
    public static Thread c(Runnable runnable, String str) {
        if (runnable == null) {
            return null;
        }
        com.byazt.jtc.ve veVar = str == null ? new com.byazt.jtc.ve(runnable, "hreadExecutor") : new com.byazt.jtc.ve(runnable, str);
        veVar.start();
        return veVar;
    }

    public static Thread c(Runnable runnable) {
        return c(runnable, null);
    }
}
