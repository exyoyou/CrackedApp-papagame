package com.alipay.sdk.util;

import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f7232a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7233b = "mspstd";

    private static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private static void b() {
    }

    private static void c(Object obj) {
        boolean z10 = obj instanceof Exception;
    }

    private static void d(String str) {
    }

    private static void e() {
    }

    private static void f() {
    }

    private static void g() {
    }

    private static void h() {
    }

    private static void i() {
    }

    private static void j() {
    }
}
