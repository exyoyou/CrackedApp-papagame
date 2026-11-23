package com.byazt.yv;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 72})
public class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f22446c;
    public static boolean tt;

    public static void c(String str) {
    }

    public static void tt(String str) {
        tt(str, null);
    }

    public static void uj(String str, Throwable th) {
        m.c("TeaLog", str, th);
    }

    public static void ve(String str, Throwable th) {
        m.ve("TeaLog", str, th);
    }

    public static void c(String str, Throwable th) {
    }

    public static void tt(String str, Throwable th) {
        m.tt("TeaLog", str, th);
    }

    public static void c(Throwable th) {
        m.ve("TeaLog", "", th);
    }

    public static void tt(Throwable th) {
        if (th != null) {
            m.c("TeaLog", th.getMessage());
        }
    }
}
