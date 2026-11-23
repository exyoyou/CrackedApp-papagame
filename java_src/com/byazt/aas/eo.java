package com.byazt.aas;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 47})
public final class eo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f11414c;

    @com.byazt.zqa.c(c = {0, 1, 131, 1387})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        public static final com.byazt.yy.uj.c f11415c = eo.uj();
    }

    public static com.byazt.iy.n c(String str) {
        return c.f11415c.c(tt(str)).c();
    }

    public static int tt() {
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.yy.uj.c uj() {
        com.byazt.ogz.sl slVarTt = com.byazt.omf.gt.tt();
        slVarTt.by();
        return new com.byazt.yy.uj.c().c(com.byazt.omf.gt.getContext()).c(1).tt(slVarTt.ck()).c(f11414c);
    }

    public static void c() {
        f11414c = true;
    }

    private static String tt(String str) {
        if (f11414c || com.byazt.nr.gt.c(com.byazt.omf.gt.getContext())) {
            return str;
        }
        return str + com.byazt.nr.gt.tt(com.byazt.omf.gt.getContext());
    }
}
