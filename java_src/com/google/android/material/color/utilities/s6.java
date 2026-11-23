package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class s6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<Integer, Integer> f30339a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    l f30340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    double f30341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double f30342d;

    private s6(double d10, double d11, l lVar) {
        this.f30341c = d10;
        this.f30342d = d11;
        this.f30340b = lVar;
    }

    private static l a(double d10, double d11) {
        l lVarA = l.a(d10, d11, 50.0d);
        l lVar = lVarA;
        double dAbs = Math.abs(lVarA.c() - d11);
        for (double d12 = 1.0d; d12 < 50.0d; d12 += 1.0d) {
            if (Math.round(d11) == Math.round(lVar.c())) {
                return lVar;
            }
            l lVarA2 = l.a(d10, d11, 50.0d + d12);
            double dAbs2 = Math.abs(lVarA2.c() - d11);
            if (dAbs2 < dAbs) {
                lVar = lVarA2;
                dAbs = dAbs2;
            }
            l lVarA3 = l.a(d10, d11, 50.0d - d12);
            double dAbs3 = Math.abs(lVarA3.c() - d11);
            if (dAbs3 < dAbs) {
                lVar = lVarA3;
                dAbs = dAbs3;
            }
        }
        return lVar;
    }

    public static s6 b(l lVar) {
        return new s6(lVar.d(), lVar.c(), lVar);
    }

    public static s6 c(double d10, double d11) {
        return new s6(d10, d11, a(d10, d11));
    }

    public static s6 d(int i10) {
        return b(l.b(i10));
    }

    public double e() {
        return this.f30342d;
    }

    public l f(double d10) {
        return l.a(this.f30341c, this.f30342d, d10);
    }

    public double g() {
        return this.f30341c;
    }

    public l h() {
        return this.f30340b;
    }

    public int i(int i10) {
        Integer numValueOf = this.f30339a.get(Integer.valueOf(i10));
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(l.a(this.f30341c, this.f30342d, i10).k());
            this.f30339a.put(Integer.valueOf(i10), numValueOf);
        }
        return numValueOf.intValue();
    }
}
