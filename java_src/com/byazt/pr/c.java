package com.byazt.pr;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 794, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f18822c;
    public static ve tt;
    public static uj ve;

    public static void c(ve veVar, uj ujVar) {
        if (f18822c) {
            return;
        }
        f18822c = true;
        tt = veVar;
        ve = ujVar;
    }

    public static uj tt() {
        return ve;
    }

    public static ve c() {
        return tt;
    }
}
