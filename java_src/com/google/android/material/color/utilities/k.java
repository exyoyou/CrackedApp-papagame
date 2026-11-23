package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f30286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Variant f30287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f30288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f30289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s6 f30290f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final s6 f30291g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s6 f30292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final s6 f30293i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s6 f30294j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final s6 f30295k = s6.c(25.0d, 84.0d);

    public k(l lVar, Variant variant, boolean z10, double d10, s6 s6Var, s6 s6Var2, s6 s6Var3, s6 s6Var4, s6 s6Var5) {
        this.f30285a = lVar.k();
        this.f30286b = lVar;
        this.f30287c = variant;
        this.f30288d = z10;
        this.f30289e = d10;
        this.f30290f = s6Var;
        this.f30291g = s6Var2;
        this.f30292h = s6Var3;
        this.f30293i = s6Var4;
        this.f30294j = s6Var5;
    }

    public static double a(l lVar, double[] dArr, double[] dArr2) {
        double d10 = lVar.d();
        int i10 = 0;
        if (dArr2.length == 1) {
            return v5.g(d10 + dArr2[0]);
        }
        int length = dArr.length;
        while (i10 <= length - 2) {
            double d11 = dArr[i10];
            int i11 = i10 + 1;
            double d12 = dArr[i11];
            if (d11 < d10 && d10 < d12) {
                return v5.g(d10 + dArr2[i10]);
            }
            i10 = i11;
        }
        return d10;
    }
}
