package com.byazt.lt;

import android.text.TextUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 438, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f16774c = false;
    public static int tt = 4;
    public static String ve = "";

    public static void c(int i10) {
        tt = i10;
    }

    public static boolean tt() {
        return f16774c;
    }

    public static void ve(String str, String str2) {
        if (f16774c && str2 != null && tt <= 6) {
            m.uj(ve(str), str2);
        }
    }

    public static void c() {
        f16774c = true;
        c(3);
    }

    public static void tt(String str, String str2) {
        if (f16774c && str2 != null && tt <= 5) {
            m.tt(ve(str), str2);
        }
    }

    public static void c(String str) {
        if (f16774c) {
            c("Logger", str);
        }
    }

    public static void ve(String str, String str2, Throwable th) {
        if (f16774c) {
            if (!(str2 == null && th == null) && tt <= 6) {
                m.ve(ve(str), str2, th);
            }
        }
    }

    public static void tt(String str, String str2, Throwable th) {
        if (f16774c) {
            if (!(str2 == null && th == null) && tt <= 5) {
                m.tt(ve(str), str2, th);
            }
        }
    }

    public static void c(String str, String str2) {
        if (f16774c && str2 != null && tt <= 4) {
            m.c(ve(str), str2);
        }
    }

    private static String ve(String str) {
        if (TextUtils.isEmpty(ve)) {
            return str;
        }
        return c("[" + ve + "]-[" + str + "]");
    }

    public static void tt(String str, Object... objArr) {
        if (f16774c && objArr != null && tt <= 5) {
            ve(str);
            c(objArr);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (f16774c) {
            if (!(str2 == null && th == null) && tt <= 4) {
                m.c(ve(str), str2, th);
            }
        }
    }

    public static void tt(String str) {
        if (f16774c) {
            ve("Logger", str);
        }
    }

    public static void c(String str, Object... objArr) {
        if (f16774c && objArr != null && tt <= 4) {
            ve(str);
            c(objArr);
        }
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
