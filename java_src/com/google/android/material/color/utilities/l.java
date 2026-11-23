package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f30296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f30297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f30298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f30299d;

    private l(int i10) {
        i(i10);
    }

    public static l a(double d10, double d11, double d12) {
        return new l(m.r(d10, d11, d12));
    }

    public static l b(int i10) {
        return new l(i10);
    }

    private void i(int i10) {
        this.f30299d = i10;
        b bVarB = b.b(i10);
        this.f30296a = bVarB.l();
        this.f30297b = bVarB.k();
        this.f30298c = c.o(i10);
    }

    public double c() {
        return this.f30297b;
    }

    public double d() {
        return this.f30296a;
    }

    public double e() {
        return this.f30298c;
    }

    public l f(u6 u6Var) {
        double[] dArrT = b.b(k()).t(u6Var, null);
        b bVarH = b.h(dArrT[0], dArrT[1], dArrT[2], u6.f30353k);
        return a(bVarH.l(), bVarH.k(), c.p(dArrT[1]));
    }

    public void g(double d10) {
        i(m.r(this.f30296a, d10, this.f30298c));
    }

    public void h(double d10) {
        i(m.r(d10, this.f30297b, this.f30298c));
    }

    public void j(double d10) {
        i(m.r(this.f30296a, this.f30297b, d10));
    }

    public int k() {
        return this.f30299d;
    }
}
