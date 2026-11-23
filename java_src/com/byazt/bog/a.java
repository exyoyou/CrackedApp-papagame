package com.byazt.bog;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 935, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f11976c = false;
    public static int tt = 4;

    public static void c(String str, String str2) {
    }

    public static void n(String str, String str2) {
        if (f11976c && str2 != null && tt <= 6) {
            m.uj(str, str2);
        }
    }

    public static void tt(String str, String str2) {
    }

    public static void uj(String str, String str2) {
        if (f11976c && str2 != null && tt <= 5) {
            m.tt(str, str2);
        }
    }

    public static void ve(String str, String str2) {
        if (f11976c && str2 != null && tt <= 4) {
            m.c(str, str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
    }

    public static void tt(String str, String str2, Throwable th) {
    }

    public static void c(int i10) {
        tt = i10;
    }

    public static void tt(String str, Object... objArr) {
        if (f11976c && objArr != null && tt <= 5) {
            c(objArr);
        }
    }

    public static void c() {
        f11976c = true;
        c(3);
    }

    public static void n(String str, String str2, Throwable th) {
        if (f11976c) {
            if (!(str2 == null && th == null) && tt <= 6) {
                m.ve(str, str2, th);
            }
        }
    }

    public static void uj(String str, String str2, Throwable th) {
        if (f11976c) {
            if (!(str2 == null && th == null) && tt <= 5) {
                m.tt(str, str2, th);
            }
        }
    }

    public static void ve(String str, String str2, Throwable th) {
        if (f11976c) {
            if (!(str2 == null && th == null) && tt <= 4) {
                m.c(str, str2, th);
            }
        }
    }

    public static void c(String str, Object... objArr) {
        if (f11976c && objArr != null && tt <= 3) {
            c(objArr);
        }
    }

    public static void tt(String str) {
        if (f11976c) {
            n("TTLogger", str);
        }
    }

    public static void c(String str) {
        if (f11976c) {
            ve("TTLogger", str);
        }
    }

    public static void c(Throwable th) {
        uj("TTLogger", "", th);
    }

    private static String c(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb2.append(obj.toString());
            } else {
                sb2.append(" null ");
            }
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
