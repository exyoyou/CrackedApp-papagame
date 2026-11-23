package com.tencent.bugly.proguard;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f83277a = "CrashReportInfo";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f83278b = "CrashReport";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f83279c;

    private static boolean a(int i10, String str, Object... objArr) {
        if (!f83279c) {
            return false;
        }
        if (str != null && objArr != null && objArr.length != 0) {
            String.format(Locale.US, str, objArr);
        }
        return i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3 || i10 == 5;
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(Throwable th) {
        return a(3, th);
    }

    private static boolean a(int i10, Throwable th) {
        if (f83279c) {
            return a(i10, ap.a(th), new Object[0]);
        }
        return false;
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        return a(0, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean a(Throwable th) {
        return a(2, th);
    }
}
