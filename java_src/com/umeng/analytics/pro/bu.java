package com.umeng.analytics.pro;

/* JADX INFO: loaded from: classes9.dex */
public class bu extends cb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f84491a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f84492b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f84493c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f84494d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f84495e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f84496f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f84497g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f84498h = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final cz f84499j = new cz("TApplicationException");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final cp f84500k = new cp("message", (byte) 11, 1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final cp f84501l = new cp("type", (byte) 8, 2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f84502m = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f84503i;

    public bu() {
        this.f84503i = 0;
    }

    public int a() {
        return this.f84503i;
    }

    public void b(cu cuVar) throws cb {
        cuVar.a(f84499j);
        if (getMessage() != null) {
            cuVar.a(f84500k);
            cuVar.a(getMessage());
            cuVar.c();
        }
        cuVar.a(f84501l);
        cuVar.a(this.f84503i);
        cuVar.c();
        cuVar.d();
        cuVar.b();
    }

    public static bu a(cu cuVar) throws cb {
        cuVar.j();
        String strZ = null;
        int iW = 0;
        while (true) {
            cp cpVarL = cuVar.l();
            byte b10 = cpVarL.f84586b;
            if (b10 == 0) {
                cuVar.k();
                return new bu(iW, strZ);
            }
            short s10 = cpVarL.f84587c;
            if (s10 != 1) {
                if (s10 != 2) {
                    cx.a(cuVar, b10);
                } else if (b10 == 8) {
                    iW = cuVar.w();
                } else {
                    cx.a(cuVar, b10);
                }
            } else if (b10 == 11) {
                strZ = cuVar.z();
            } else {
                cx.a(cuVar, b10);
            }
            cuVar.m();
        }
    }

    public bu(int i10) {
        this.f84503i = i10;
    }

    public bu(int i10, String str) {
        super(str);
        this.f84503i = i10;
    }

    public bu(String str) {
        super(str);
        this.f84503i = 0;
    }
}
