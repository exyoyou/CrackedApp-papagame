package com.facebook.rebound;

/* JADX INFO: loaded from: classes9.dex */
public class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static k f28866c = b(40.0d, 7.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f28867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f28868b;

    public k(double d10, double d11) {
        this.f28868b = d10;
        this.f28867a = d11;
    }

    public static k a(double d10, double d11) {
        d dVar = new d(d11, d10);
        return b(dVar.g(), dVar.f());
    }

    public static k b(double d10, double d11) {
        return new k(g.d(d10), g.a(d11));
    }
}
