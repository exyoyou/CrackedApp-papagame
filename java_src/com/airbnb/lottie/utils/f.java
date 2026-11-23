package com.airbnb.lottie.utils;

import com.airbnb.lottie.z0;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static z0 f6095a = new e();

    public static void a(String str) {
        f6095a.debug(str);
    }

    public static void b(String str, Throwable th) {
        f6095a.debug(str, th);
    }

    public static void c(String str, Throwable th) {
        f6095a.error(str, th);
    }

    public static void d(z0 z0Var) {
        f6095a = z0Var;
    }

    public static void e(String str) {
        f6095a.a(str);
    }

    public static void f(String str, Throwable th) {
        f6095a.b(str, th);
    }
}
