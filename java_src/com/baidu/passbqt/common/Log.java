package com.baidu.passbqt.common;

import com.baidu.passbqt.NoProguard;

/* JADX INFO: loaded from: classes6.dex */
public class Log implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8297a = "PASSPORT";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f8298b;

    private Log() {
    }

    public static void a(boolean z10) {
        f8298b = z10;
    }

    public static void b(String str, Object... objArr) {
        if (f8298b) {
            e(str, objArr);
        }
    }

    public static void c(String str, Object... objArr) {
        if (f8298b) {
            e(str, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        if (f8298b) {
            e(str, objArr);
        }
    }

    private static String e(String str, Object[] objArr) {
        if (objArr == null) {
            return "";
        }
        try {
            if (objArr.length == 0) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            int length = objArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Object obj = objArr[i10];
                if (obj != null) {
                    if (i10 != 0) {
                        stringBuffer.append("|");
                    }
                    try {
                        if (obj instanceof Throwable) {
                            stringBuffer.append(android.util.Log.getStackTraceString((Throwable) obj));
                        } else {
                            stringBuffer.append(obj.toString());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("converArrayToString t: ");
            sb2.append(th.toString());
            return "converArrayToString null";
        }
    }

    public static void a(String str, Object... objArr) {
        if (f8298b) {
            e(str, objArr);
        }
    }

    public static void b(Object... objArr) {
        b(f8297a, objArr);
    }

    public static void c(Object... objArr) {
        c(f8297a, objArr);
    }

    public static void a(Object... objArr) {
        a(f8297a, objArr);
    }

    public static void a(Throwable th) {
        a(f8297a, th);
    }

    public static void a(String str, Throwable th) {
        d(str, th);
    }
}
