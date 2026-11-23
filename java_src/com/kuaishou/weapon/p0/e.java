package com.kuaishou.weapon.p0;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f74768a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f74769b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f74770c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f74771d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f74772e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f74773f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static ThreadLocal<StringBuilder> f74774g = new ThreadLocal<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f74775h;

    private static void a(int i10, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace.length < 3) {
            return;
        }
        String fileName = stackTrace[2].getFileName();
        int lineNumber = stackTrace[2].getLineNumber();
        String methodName = stackTrace[2].getMethodName();
        if (fileName.length() > 5) {
            fileName = fileName.substring(0, fileName.length() - 5);
        }
        StringBuilder sb2 = f74774g.get();
        if (sb2 == null) {
            sb2 = new StringBuilder();
            f74774g.set(sb2);
        }
        synchronized (sb2) {
            sb2.setLength(0);
            sb2.append("[");
            sb2.append(f74775h);
            sb2.append("][");
            sb2.append(fileName);
            sb2.append(':');
            sb2.append(lineNumber);
            sb2.append(external.org.apache.commons.lang3.d.f90941a);
            sb2.append(methodName);
            sb2.append("] ");
            sb2.append(str);
            f74775h++;
        }
    }

    public static void b(String str) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0 || i10 == 1) {
            a(1, str);
        }
    }

    public static void c(String str) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0 || i10 == 1 || i10 == 2) {
            a(2, str);
        }
    }

    public static void d(String str) {
    }

    public static void b(String str, Throwable th) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0 || i10 == 1) {
            a(1, str + "\n" + a(th));
        }
    }

    public static void c(String str, Throwable th) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0 || i10 == 1 || i10 == 2) {
            a(2, str + "\n" + a(th));
        }
    }

    public static void a(String str) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0) {
            a(0, str);
        }
    }

    public static void a(String str, Throwable th) {
        int i10 = f74773f;
        if (i10 == -1 || i10 == 0) {
            a(0, str + "\n" + a(th));
        }
    }

    public static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
