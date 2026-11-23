package com.netease.nis.basesdk;

import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f75895a = "BASE_SDK_LOG";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f75896b;

    private static String a() {
        Thread threadCurrentThread = Thread.currentThread();
        for (StackTraceElement stackTraceElement : threadCurrentThread.getStackTrace()) {
            if (!stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(Logger.class.getName())) {
                return "[Thread:" + threadCurrentThread.getName() + ", Class:" + stackTraceElement.getClassName() + ", Function:" + stackTraceElement.getMethodName() + "]";
            }
        }
        return null;
    }

    public static String buildLog(String str) {
        return str + "---->" + a();
    }

    public static void d(String str) {
        d(f75895a, str);
    }

    public static void e(String str) {
        e(f75895a, str);
    }

    public static void enableLog(boolean z10) {
        f75896b = z10;
    }

    public static void i(String str) {
        i(f75895a, str);
    }

    public static void setTag(String str) {
        f75895a = str;
    }

    public static void w(String str) {
        w(f75895a, str);
    }

    public static void d(String str, String str2) {
        if (!f75896b || f75895a.equals(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f75895a);
        sb2.append(o0.f49827a);
        sb2.append(str);
    }

    public static void e(String str, String str2) {
        if (!f75896b || f75895a.equals(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f75895a);
        sb2.append(o0.f49827a);
        sb2.append(str);
    }

    public static void i(String str, String str2) {
        if (f75896b) {
            if (!f75895a.equals(str)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(f75895a);
                sb2.append(o0.f49827a);
                sb2.append(str);
            }
            buildLog(str2);
        }
    }

    public static void w(String str, String str2) {
        if (!f75896b || f75895a.equals(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f75895a);
        sb2.append(o0.f49827a);
        sb2.append(str);
    }
}
