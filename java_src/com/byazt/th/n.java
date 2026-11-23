package com.byazt.th;

import com.byazt.uk.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 78, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static a f20184c;

    public static void c(a aVar) {
        f20184c = aVar;
    }

    public static void tt(Runnable runnable) {
        f20184c.tt(runnable);
    }

    public static void ve(Runnable runnable) {
        f20184c.ve(runnable);
    }

    public static void c(Runnable runnable, boolean z10) {
        if (z10) {
            c(runnable);
        } else {
            tt(runnable);
        }
    }

    public static void c(Runnable runnable) {
        f20184c.c(runnable);
    }
}
