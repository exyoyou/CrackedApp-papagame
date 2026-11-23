package com.xinzhu.overmind;

import android.util.Log;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f89177a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f89178b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f89179c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f89180d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f89181e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f89182f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f89183g = 7;

    private b() {
    }

    public static int a(String str, String str2) {
        if (f89177a) {
            return Log.d(str, str2);
        }
        return 0;
    }

    public static int b(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.d(str, str2, th);
        }
        return 0;
    }

    public static int c(String str, String str2) {
        if (f89177a) {
            return Log.e(str, str2);
        }
        return 0;
    }

    public static int d(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.e(str, str2, th);
        }
        return 0;
    }

    public static String e(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static int f(String str, String str2) {
        if (f89177a) {
            return Log.i(str, str2);
        }
        return 0;
    }

    public static int g(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.i(str, str2, th);
        }
        return 0;
    }

    public static boolean h(String str, int i10) {
        return false;
    }

    public static int i(int i10, String str, String str2) {
        if (f89177a) {
            return Log.println(i10, str, str2);
        }
        return 0;
    }

    public static int j(String str, String str2) {
        if (f89177a) {
            return Log.v(str, str2);
        }
        return 0;
    }

    public static int k(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.v(str, str2, th);
        }
        return 0;
    }

    public static int l(String str, String str2) {
        if (f89177a) {
            return Log.w(str, str2);
        }
        return 0;
    }

    public static int m(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.w(str, str2, th);
        }
        return 0;
    }

    public static int n(String str, Throwable th) {
        if (f89177a) {
            return Log.w(str, th);
        }
        return 0;
    }

    public static int o(String str, String str2) {
        if (f89177a) {
            return Log.wtf(str, str2);
        }
        return 0;
    }

    public static int p(String str, String str2, Throwable th) {
        if (f89177a) {
            return Log.wtf(str, str2, th);
        }
        return 0;
    }

    public static int q(String str, Throwable th) {
        if (f89177a) {
            return Log.wtf(str, th);
        }
        return 0;
    }
}
