package com.byazt.lf;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 526, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f16636c = false;
    public static int tt = 4;

    public static boolean c() {
        return f16636c;
    }

    public static void c(String str, String str2) {
        if (f16636c && str2 != null && tt <= 4) {
            m.c(m.uj(str), str2);
        }
    }
}
