package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
public class bv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7644a = "logger";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f7645b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f7646c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f7647d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f7648e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f7649f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f7650g = 7;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f7651h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile bv f7652i;

    private bv() {
    }

    private String e(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : objArr) {
            sb2.append(obj);
            sb2.append(' ');
        }
        return sb2.toString();
    }

    public boolean a(String str, int i10) {
        return true;
    }

    public void b(String str) {
        if (a(5)) {
            try {
                az.c().e(str);
            } catch (Exception unused) {
            }
        }
    }

    public void c(Object... objArr) {
        if (a(6)) {
            c(e(objArr));
        }
    }

    public void d(String str) {
        b(f7644a, str);
    }

    public static bv a() {
        if (f7652i == null) {
            synchronized (bv.class) {
                if (f7652i == null) {
                    f7652i = new bv();
                }
            }
        }
        return f7652i;
    }

    public void d(Object... objArr) {
        if (a(4)) {
            d(e(objArr));
        }
    }

    public void b(Object... objArr) {
        if (a(5)) {
            b(e(objArr));
        }
    }

    public void c(String str) {
        if (a(6)) {
            try {
                az.c().f(str);
            } catch (Exception unused) {
            }
        }
    }

    public void d(String str, Throwable th) {
        if (a(4)) {
            try {
                az.c().c(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void b(String str, Throwable th) {
        if (a(5)) {
            try {
                az.c().d(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void c(Throwable th) {
        c("", th);
    }

    public void c(String str, Throwable th) {
        if (a(6)) {
            try {
                az.c().e(th, str);
            } catch (Exception unused) {
            }
        }
    }

    public void b(Throwable th) {
        b("", th);
    }

    public boolean a(int i10) {
        return a(f7644a, i10);
    }

    public void b(String str, String str2) {
        if (a(4)) {
            try {
                az.c().c(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    public void a(Object... objArr) {
        if (a(3)) {
            a(e(objArr));
        }
    }

    public void a(String str) {
        a(f7644a, str);
    }

    public void a(String str, String str2) {
        if (a(3)) {
            try {
                az.h(str).c(str2);
            } catch (Exception unused) {
            }
        }
    }

    public void a(Throwable th) {
        a("", th);
    }

    public void a(String str, Throwable th) {
        if (a(3)) {
            try {
                az.h(f7644a).b(th, str);
            } catch (Exception unused) {
            }
        }
    }
}
