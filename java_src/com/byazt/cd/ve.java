package com.byazt.cd;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 54})
public final class ve {
    public static float c(String str, float f10) {
        if (str == null) {
            return f10;
        }
        try {
            return Float.parseFloat(str);
        } catch (Throwable th) {
            m.c(th);
            return f10;
        }
    }

    public static int c(String str, int i10) {
        if (str == null) {
            return i10;
        }
        try {
            return (int) Float.parseFloat(str);
        } catch (Throwable th) {
            m.c(th);
            return i10;
        }
    }

    public static long c(String str, long j10) {
        if (str == null) {
            return j10;
        }
        try {
            return Long.parseLong(str);
        } catch (Throwable th) {
            m.c(th);
            return j10;
        }
    }

    public static double c(String str, double d10) {
        if (str == null) {
            return d10;
        }
        try {
            return Double.parseDouble(str);
        } catch (Throwable th) {
            m.c(th);
            return d10;
        }
    }

    public static boolean c(String str, boolean z10) {
        if (str == null) {
            return z10;
        }
        try {
            return Boolean.parseBoolean(str);
        } catch (Throwable th) {
            m.c(th);
            return z10;
        }
    }
}
