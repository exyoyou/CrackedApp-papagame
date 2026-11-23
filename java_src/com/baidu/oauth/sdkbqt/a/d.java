package com.baidu.oauth.sdkbqt.a;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8141a = "oauth_";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f8142b;

    private d() {
    }

    public static void a(boolean z10) {
        f8142b = z10;
    }

    public static void b(String str, Object... objArr) {
        if (f8142b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8141a);
            sb2.append(str);
            e(str, objArr);
        }
    }

    public static void c(String str, Object... objArr) {
        if (f8142b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8141a);
            sb2.append(str);
            e(str, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        if (f8142b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8141a);
            sb2.append(str);
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
                            stringBuffer.append(Log.getStackTraceString((Throwable) obj));
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
        if (f8142b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f8141a);
            sb2.append(str);
            e(str, objArr);
        }
    }

    public static void b(Object... objArr) {
        b(f8141a, objArr);
    }

    public static void c(Object... objArr) {
        c(f8141a, objArr);
    }

    public static void a(Object... objArr) {
        a(f8141a, objArr);
    }

    public static void a(Throwable th) {
        a(f8141a, th);
    }

    public static void a(String str, Throwable th) {
        d(str, th);
    }
}
