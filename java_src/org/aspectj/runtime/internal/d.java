package org.aspectj.runtime.internal;

import java.util.Stack;
import org.aspectj.lang.NoAspectBoundException;
import org.aspectj.runtime.internal.cflowstack.g;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static org.aspectj.runtime.internal.cflowstack.d f95178b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private org.aspectj.runtime.internal.cflowstack.c f95179a = f95178b.b();

    static {
        p();
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

    private Stack e() {
        return this.f95179a.b();
    }

    public static String f() {
        return f95178b.getClass().getName();
    }

    private static void p() {
        String strB = b("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        boolean z10 = false;
        if (!strB.equals("unspecified") ? strB.equals("yes") || strB.equals("true") : System.getProperty("java.class.version", "0.0").compareTo("46.0") >= 0) {
            z10 = true;
        }
        if (z10) {
            f95178b = c();
        } else {
            f95178b = d();
        }
    }

    public Object a(int i10) {
        bd.a aVarI = i();
        if (aVarI == null) {
            return null;
        }
        return aVarI.a(i10);
    }

    public boolean g() {
        return !e().isEmpty();
    }

    public Object h() {
        Stack stackE = e();
        if (stackE.isEmpty()) {
            throw new NoAspectBoundException();
        }
        return stackE.peek();
    }

    public bd.a i() {
        Stack stackE = e();
        if (stackE.isEmpty()) {
            return null;
        }
        return (bd.a) stackE.peek();
    }

    public Object j() {
        bd.a aVarI = i();
        if (aVarI != null) {
            return aVarI.b();
        }
        throw new NoAspectBoundException();
    }

    public bd.a k() {
        Stack stackE = e();
        if (stackE.isEmpty()) {
            return null;
        }
        return (bd.a) stackE.elementAt(0);
    }

    public void l() {
        Stack stackE = e();
        stackE.pop();
        if (stackE.isEmpty()) {
            this.f95179a.a();
        }
    }

    public void m(Object obj) {
        e().push(obj);
    }

    public void n(Object[] objArr) {
        e().push(new c(objArr));
    }

    public void o(Object obj) {
        e().push(new bd.a(obj));
    }
}
