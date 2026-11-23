package com.czhj.sdk.logger;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class SigmobLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25708a = "SigmobLogger";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f25709b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f25710c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f25711d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f25712e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f25713f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f25714g = new HashSet();

    private static int a(StackTraceElement[] stackTraceElementArr) {
        for (int i10 = 1; i10 < stackTraceElementArr.length; i10++) {
            if (!stackTraceElementArr[i10].getClassName().split("\\$")[0].equals(SigmobLogger.class.getName())) {
                return i10;
            }
        }
        return -1;
    }

    public static void addCloseClass(Class<?> cls) {
        f25714g.add(cls.getSimpleName());
    }

    private static String b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int iA = a(stackTrace);
        int length = iA + 4;
        int length2 = iA + 1 + 4;
        if (length >= stackTrace.length) {
            length = stackTrace.length - 1;
        }
        if (length2 > stackTrace.length) {
            length2 = stackTrace.length;
        }
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        for (int i10 = length2 - 1; i10 >= length; i10--) {
            String strA = a(stackTrace[i10]);
            sb2.append((CharSequence) sb3);
            sb2.append(strA);
            sb2.append('\n');
            sb3.append("  ");
        }
        return sb2.toString();
    }

    public static void d(String str, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void dL(String str, String str2, Object... objArr) {
        if (!f25710c) {
            f25714g.contains(str);
            return;
        }
        String str3 = format(str2, objArr);
        if (str3.length() < 3000) {
            b(str);
            return;
        }
        synchronized (SigmobLogger.class) {
            int length = str3.length();
            int i10 = 0;
            int i11 = 0;
            do {
                i10 += 3000;
                if (i10 >= length) {
                    i10 = length - 1;
                }
                b(str);
                str3.substring(i11, i10);
                i11 = i10 + 1;
            } while (i10 != length - 1);
        }
    }

    public static void debug(boolean z10) {
        f25710c = z10;
    }

    public static void e(String str, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static String format(String str, Object... objArr) {
        return (objArr == null || objArr.length == 0) ? str : String.format(str, objArr);
    }

    public static void i(String str, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void w(String str, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    private static String a() {
        return Thread.currentThread().getName();
    }

    private static String b(String str) {
        return "SigmobLogger#" + str;
    }

    public static void d(String str, Throwable th, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void e(String str, Throwable th, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void i(String str, Throwable th, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    public static void w(String str, Throwable th) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
    }

    private static String a(StackTraceElement stackTraceElement) {
        return "(" + stackTraceElement.getFileName() + ':' + stackTraceElement.getLineNumber() + ')';
    }

    public static void w(String str, Throwable th, String str2, Object... objArr) {
        if (!f25710c || f25714g.contains(str)) {
            return;
        }
        b(str);
        a(format(str2, objArr));
    }

    private static String a(String str) {
        return str + " [" + a() + "] " + b();
    }
}
