package org.aspectj.runtime.internal;

import org.aspectj.runtime.internal.cflowstack.g;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static org.aspectj.runtime.internal.cflowstack.d f95161b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private org.aspectj.runtime.internal.cflowstack.a f95162a = f95161b.a();

    static {
        h();
    }

    private static String b(String str, String str2) {
        try {
            return System.getProperty(str, str2);
        } catch (SecurityException unused) {
            return str2;
        }
    }

    private static org.aspectj.runtime.internal.cflowstack.d c() {
        return new org.aspectj.runtime.internal.cflowstack.f();
    }

    private static org.aspectj.runtime.internal.cflowstack.d d() {
        return new g();
    }

    public static String e() {
        return f95161b.getClass().getName();
    }

    private static void h() {
        String strB = b("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        boolean z10 = false;
        if (!strB.equals("unspecified") ? strB.equals("yes") || strB.equals("true") : System.getProperty("java.class.version", "0.0").compareTo("46.0") >= 0) {
            z10 = true;
        }
        if (z10) {
            f95161b = c();
        } else {
            f95161b = d();
        }
    }

    public void a() {
        this.f95162a.a();
        if (this.f95162a.d()) {
            return;
        }
        this.f95162a.b();
    }

    public void f() {
        this.f95162a.c();
    }

    public boolean g() {
        return this.f95162a.d();
    }
}
