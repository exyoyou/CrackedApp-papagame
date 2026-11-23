package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class u5 {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j A3(k kVar) {
        return d6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double B2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 80.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double B4(k kVar) {
        return Double.valueOf(s2(kVar) ? 70.0d : 80.0d);
    }

    private static u6 B6(k kVar) {
        return u6.a(kVar.f30288d ? 30.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double C3(k kVar) {
        return Double.valueOf(s2(kVar) ? 25.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 C4(k kVar) {
        return new t6(d6(), e6(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double D2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j D3(k kVar) {
        return e6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 E2(k kVar) {
        return new t6(l2(), k2(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j E3(k kVar) {
        return d6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double E4(k kVar) {
        return Double.valueOf(kVar.f30291g.h().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double G2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double G3(k kVar) {
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double G4(k kVar) {
        return Double.valueOf(0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 H2(k kVar) {
        return new t6(l2(), k2(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double I3(k kVar) {
        return Double.valueOf(kVar.f30288d ? 80.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double I4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 6.0d : 98.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double J2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 20.0d : 95.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j K2(k kVar) {
        return q2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double K3(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
        }
        return Double.valueOf(kVar.f30288d ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double K4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 24.0d : 98.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j L3(k kVar) {
        return r6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double M2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 40.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double M4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 12.0d : 94.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j N2(k kVar) {
        return q2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Double N3(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 0.0d : 100.0d);
        }
        if (r2(kVar)) {
            return Double.valueOf(j.d(((Double) s6().f30276c.apply(kVar)).doubleValue(), 4.5d));
        }
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j O3(k kVar) {
        return s6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double O4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 17.0d : 92.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double P2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 90.0d : 20.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double Q3(k kVar) {
        return Double.valueOf(s2(kVar) ? 100.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double Q4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 22.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double R2(k kVar) {
        return Double.valueOf(kVar.f30293i.h().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j R3(k kVar) {
        return u6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j S3(k kVar) {
        return t6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double S4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 10.0d : 96.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double T2(k kVar) {
        return Double.valueOf(kVar.f30294j.h().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double U3(k kVar) {
        return Double.valueOf(s2(kVar) ? 90.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double U4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 4.0d : 100.0d);
    }

    static double U5(l lVar, k kVar) {
        l lVarF = lVar.f(B6(kVar));
        return (!j.n(lVar.e()) || j.m(lVarF.e())) ? j.c(lVarF.e()) : j.c(lVar.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double V2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j V3(k kVar) {
        return u6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j W2(k kVar) {
        return g2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j W3(k kVar) {
        return t6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double W4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 6.0d : 87.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double Y2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double Y3(k kVar) {
        return Double.valueOf(kVar.f30288d ? 60.0d : 50.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double Y4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j Z2(k kVar) {
        return k2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double a4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 30.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double a5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double b3(k kVar) {
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j c3(k kVar) {
        return l2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double c4(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 100.0d : 0.0d);
        }
        return Double.valueOf(kVar.f30288d ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double c5(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 90.0d : 25.0d);
        }
        return Double.valueOf(kVar.f30288d ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 d4(k kVar) {
        return new t6(W5(), V5(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 d5(k kVar) {
        return new t6(s6(), r6(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double e3(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
        }
        return Double.valueOf(kVar.f30288d ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j f3(k kVar) {
        return V5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double f4(k kVar) {
        if (r2(kVar)) {
            return Double.valueOf(U5(kVar.f30286b, kVar));
        }
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 85.0d : 25.0d);
        }
        return Double.valueOf(kVar.f30288d ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double f5(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 60.0d : 49.0d);
        }
        if (r2(kVar)) {
            return Double.valueOf(g.a(kVar.f30292h.f(U5(kVar.f30292h.f(kVar.f30286b.e()), kVar))).e());
        }
        return Double.valueOf(kVar.f30288d ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 g4(k kVar) {
        return new t6(W5(), V5(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 g5(k kVar) {
        return new t6(s6(), r6(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Double h3(k kVar) {
        if (r2(kVar)) {
            return Double.valueOf(j.d(((Double) W5().f30276c.apply(kVar)).doubleValue(), 4.5d));
        }
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 0.0d : 100.0d);
        }
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j i3(k kVar) {
        return W5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double i4(k kVar) {
        return Double.valueOf(s2(kVar) ? 40.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double i5(k kVar) {
        return Double.valueOf(s2(kVar) ? 40.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 j4(k kVar) {
        return new t6(X5(), Y5(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 j5(k kVar) {
        return new t6(t6(), u6(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double k3(k kVar) {
        return Double.valueOf(s2(kVar) ? 100.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j l3(k kVar) {
        return Y5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double l4(k kVar) {
        return Double.valueOf(s2(kVar) ? 30.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double l5(k kVar) {
        return Double.valueOf(s2(kVar) ? 30.0d : 80.0d);
    }

    static double m2(double d10, double d11, double d12, boolean z10) {
        l lVarA = l.a(d10, d11, d12);
        if (lVarA.c() >= d11) {
            return d12;
        }
        l lVar = lVarA;
        double dC = lVarA.c();
        double d13 = d12;
        while (lVar.c() < d11) {
            double d14 = d13 + (z10 ? -1.0d : 1.0d);
            l lVarA2 = l.a(d10, d11, d14);
            if (dC > lVarA2.c() || Math.abs(lVarA2.c() - d11) < 0.4d) {
                return d14;
            }
            if (Math.abs(lVarA2.c() - d11) < Math.abs(lVar.c() - d11)) {
                lVar = lVarA2;
            }
            dC = Math.max(dC, lVarA2.c());
            d13 = d14;
        }
        return d13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j m3(k kVar) {
        return X5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 m4(k kVar) {
        return new t6(X5(), Y5(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 m5(k kVar) {
        return new t6(t6(), u6(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double o3(k kVar) {
        return Double.valueOf(s2(kVar) ? 90.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double o4(k kVar) {
        return Double.valueOf(kVar.f30290f.h().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double o5(k kVar) {
        return Double.valueOf(kVar.f30292h.h().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j p3(k kVar) {
        return Y5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j q3(k kVar) {
        return X5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double q4(k kVar) {
        return Double.valueOf(0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double q5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
    }

    private static boolean r2(k kVar) {
        Variant variant = kVar.f30287c;
        return variant == Variant.FIDELITY || variant == Variant.CONTENT;
    }

    private static boolean s2(k kVar) {
        return kVar.f30287c == Variant.MONOCHROME;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double s3(k kVar) {
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 10.0d : 100.0d);
        }
        return Double.valueOf(kVar.f30288d ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double s4(k kVar) {
        return Double.valueOf(kVar.f30288d ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double s5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j t3(k kVar) {
        return b6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 t4(k kVar) {
        return new t6(c6(), b6(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double u2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 6.0d : 98.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double u5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Double v3(k kVar) {
        if (r2(kVar)) {
            return Double.valueOf(j.d(((Double) c6().f30276c.apply(kVar)).doubleValue(), 4.5d));
        }
        return Double.valueOf(kVar.f30288d ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double v4(k kVar) {
        double d10 = kVar.f30288d ? 30.0d : 90.0d;
        if (s2(kVar)) {
            return Double.valueOf(kVar.f30288d ? 30.0d : 85.0d);
        }
        if (r2(kVar)) {
            return Double.valueOf(U5(kVar.f30291g.f(m2(kVar.f30291g.g(), kVar.f30291g.e(), d10, !kVar.f30288d)), kVar));
        }
        return Double.valueOf(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double w2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j w3(k kVar) {
        return c6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 w4(k kVar) {
        return new t6(c6(), b6(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double w5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 30.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double y2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 100.0d : 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double y3(k kVar) {
        return Double.valueOf(10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double y4(k kVar) {
        return Double.valueOf(s2(kVar) ? 80.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double y5(k kVar) {
        return Double.valueOf(kVar.f30288d ? 10.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double z2(k kVar) {
        return Double.valueOf(kVar.f30288d ? 0.2d : 0.12d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j z3(k kVar) {
        return e6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t6 z4(k kVar) {
        return new t6(d6(), e6(), 10.0d, TonePolarity.LIGHTER, true);
    }

    @NonNull
    public j A5() {
        return j.f("neutral_variant_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.x3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.y3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.T2((k) obj);
            }
        });
    }

    @NonNull
    public j A6() {
        return j.f("text_secondary_and_tertiary_inverse_disabled", new Function() { // from class: com.google.android.material.color.utilities.f5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.g5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.y5((k) obj);
            }
        });
    }

    @NonNull
    public j B5() {
        return new j("on_background", new Function() { // from class: com.google.android.material.color.utilities.u1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.v1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.V2((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.w1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30365b.W2((k) obj);
            }
        }, null, new e(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public j C5() {
        return new j("on_error", new Function() { // from class: com.google.android.material.color.utilities.n4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30295k;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.o4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.Y2((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.p4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30327b.Z2((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j D5() {
        return new j("on_error_container", new Function() { // from class: com.google.android.material.color.utilities.f2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30295k;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.g2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.b3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.h2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30270b.c3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j E5() {
        return new j("on_primary", new Function() { // from class: com.google.android.material.color.utilities.p3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.r3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.e3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.s3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30338b.f3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j F5() {
        return new j("on_primary_container", new Function() { // from class: com.google.android.material.color.utilities.r1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.s1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30337b.h3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.t1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30343b.i3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j G5() {
        return new j("on_primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.c4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.d4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.k3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.e4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30255b.l3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.f4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30263b.m3((k) obj);
            }
        }, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j H5() {
        return new j("on_primary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.r5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.s5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.o3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30321b.p3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30325b.q3((k) obj);
            }
        }, new e(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public j I5() {
        return new j("on_secondary", new Function() { // from class: com.google.android.material.color.utilities.s4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.t4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.s3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.u4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30352b.t3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j J5() {
        return new j("on_secondary_container", new Function() { // from class: com.google.android.material.color.utilities.c2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.d2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30223b.v3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.e2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30254b.w3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j K5() {
        return new j("on_secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.u0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.f1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.y3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.q1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30329b.z3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.b2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30205b.A3((k) obj);
            }
        }, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j L5() {
        return new j("on_secondary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.e1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.g1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.C3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.h1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30269b.D3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.i1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30272b.E3((k) obj);
            }
        }, new e(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public j M5() {
        return new j("on_surface", new Function() { // from class: com.google.android.material.color.utilities.e3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.g3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.G3((k) obj);
            }
        }, false, new u2(this), null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j N5() {
        return new j("on_surface_variant", new Function() { // from class: com.google.android.material.color.utilities.q4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.r4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.I3((k) obj);
            }
        }, false, new u2(this), null, new e(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public j O5() {
        return new j("on_tertiary", new Function() { // from class: com.google.android.material.color.utilities.a5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.b5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.K3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.c5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30211b.L3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j P5() {
        return new j("on_tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.t
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.u
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30350b.N3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.v
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30364b.O3((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j Q5() {
        return new j("on_tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.v4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.w4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.Q3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.y4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30366b.R3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.z4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30368b.S3((k) obj);
            }
        }, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j R5() {
        return new j("on_tertiary_fixed_variant", new Function() { // from class: com.google.android.material.color.utilities.m1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.n1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.U3((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.o1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30322b.V3((k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.p1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30326b.W3((k) obj);
            }
        }, new e(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public j S5() {
        return new j("outline", new Function() { // from class: com.google.android.material.color.utilities.x0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.y0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.Y3((k) obj);
            }
        }, false, new u2(this), null, new e(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public j T5() {
        return new j("outline_variant", new Function() { // from class: com.google.android.material.color.utilities.g4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.h4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.a4((k) obj);
            }
        }, false, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), null);
    }

    @NonNull
    public j V5() {
        return new j("primary", new Function() { // from class: com.google.android.material.color.utilities.m3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.n3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.c4((k) obj);
            }
        }, true, new u2(this), null, new e(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.o3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30324b.d4((k) obj);
            }
        });
    }

    @NonNull
    public j W5() {
        return new j("primary_container", new Function() { // from class: com.google.android.material.color.utilities.n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.j2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.f4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.f3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30262b.g4((k) obj);
            }
        });
    }

    @NonNull
    public j X5() {
        return new j("primary_fixed", new Function() { // from class: com.google.android.material.color.utilities.i2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.k2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.i4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.l2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30301b.j4((k) obj);
            }
        });
    }

    @NonNull
    public j Y5() {
        return new j("primary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.j3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.k3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.l4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.l3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30302b.m4((k) obj);
            }
        });
    }

    @NonNull
    public j Z5() {
        return j.f("primary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.c3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.d3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.o4((k) obj);
            }
        });
    }

    @NonNull
    public j a6() {
        return new j("scrim", new Function() { // from class: com.google.android.material.color.utilities.z3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.a4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.q4((k) obj);
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public j b6() {
        return new j("secondary", new Function() { // from class: com.google.android.material.color.utilities.m4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.x4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.s4((k) obj);
            }
        }, true, new u2(this), null, new e(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.i5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30273b.t4((k) obj);
            }
        });
    }

    @NonNull
    public j c6() {
        return new j("secondary_container", new Function() { // from class: com.google.android.material.color.utilities.e0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.f0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.v4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.g0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30267b.w4((k) obj);
            }
        });
    }

    @NonNull
    public j d6() {
        return new j("secondary_fixed", new Function() { // from class: com.google.android.material.color.utilities.t5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.y
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.y4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.j0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30284b.z4((k) obj);
            }
        });
    }

    @NonNull
    public j e6() {
        return new j("secondary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.m2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.n2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.B4((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.o2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30323b.C4((k) obj);
            }
        });
    }

    @NonNull
    public j f6() {
        return j.f("secondary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.v2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30291g;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.w2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.E4((k) obj);
            }
        });
    }

    @NonNull
    public j g2() {
        return new j("background", new Function() { // from class: com.google.android.material.color.utilities.m0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.n0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.u2((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j g6() {
        return new j("shadow", new Function() { // from class: com.google.android.material.color.utilities.d5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.e5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.G4((k) obj);
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public j h2() {
        return j.f("control_activated", new Function() { // from class: com.google.android.material.color.utilities.h3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.i3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.w2((k) obj);
            }
        });
    }

    @NonNull
    public j h6() {
        return new j("surface", new Function() { // from class: com.google.android.material.color.utilities.q0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.r0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.I4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j i2() {
        return new j("control_highlight", new Function() { // from class: com.google.android.material.color.utilities.h5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.j5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.y2((k) obj);
            }
        }, false, null, null, null, null, new Function() { // from class: com.google.android.material.color.utilities.k5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.z2((k) obj);
            }
        });
    }

    @NonNull
    public j i6() {
        return new j("surface_bright", new Function() { // from class: com.google.android.material.color.utilities.h0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.i0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.K4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j j2() {
        return j.f("control_normal", new Function() { // from class: com.google.android.material.color.utilities.a0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.b0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.B2((k) obj);
            }
        });
    }

    @NonNull
    public j j6() {
        return new j("surface_container", new Function() { // from class: com.google.android.material.color.utilities.k4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.l4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.M4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j k2() {
        return new j("error", new Function() { // from class: com.google.android.material.color.utilities.r2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30295k;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.s2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.D2((k) obj);
            }
        }, true, new u2(this), null, new e(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.t2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30344b.E2((k) obj);
            }
        });
    }

    @NonNull
    public j k6() {
        return new j("surface_container_high", new Function() { // from class: com.google.android.material.color.utilities.k0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.l0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.O4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j l2() {
        return new j("error_container", new Function() { // from class: com.google.android.material.color.utilities.j1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30295k;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.k1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.G2((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.l1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30300b.H2((k) obj);
            }
        });
    }

    @NonNull
    public j l6() {
        return new j("surface_container_highest", new Function() { // from class: com.google.android.material.color.utilities.o0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.p0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.Q4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j m6() {
        return new j("surface_container_low", new Function() { // from class: com.google.android.material.color.utilities.i4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.j4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.S4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j n2(@NonNull k kVar) {
        return kVar.f30288d ? i6() : o6();
    }

    @NonNull
    public j n6() {
        return new j("surface_container_lowest", new Function() { // from class: com.google.android.material.color.utilities.t3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.u3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.U4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j o2() {
        return new j("inverse_on_surface", new Function() { // from class: com.google.android.material.color.utilities.z0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.a1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.J2((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.b1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30204b.K2((k) obj);
            }
        }, null, new e(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public j o6() {
        return new j("surface_dim", new Function() { // from class: com.google.android.material.color.utilities.s0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.t0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.W4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j p2() {
        return new j("inverse_primary", new Function() { // from class: com.google.android.material.color.utilities.z2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.a3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.M2((k) obj);
            }
        }, false, new Function() { // from class: com.google.android.material.color.utilities.b3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30206b.N2((k) obj);
            }
        }, null, new e(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public j p6() {
        return new j("surface_tint", new Function() { // from class: com.google.android.material.color.utilities.x2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30290f;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.y2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.Y4((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j q2() {
        return new j("inverse_surface", new Function() { // from class: com.google.android.material.color.utilities.p2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.q2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.P2((k) obj);
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public j q6() {
        return new j("surface_variant", new Function() { // from class: com.google.android.material.color.utilities.z1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.a2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.a5((k) obj);
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public j r6() {
        return new j("tertiary", new Function() { // from class: com.google.android.material.color.utilities.w
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.x
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.c5((k) obj);
            }
        }, true, new u2(this), null, new e(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.google.android.material.color.utilities.z
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30367b.d5((k) obj);
            }
        });
    }

    @NonNull
    public j s6() {
        return new j("tertiary_container", new Function() { // from class: com.google.android.material.color.utilities.o5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.p5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.f5((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.q5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30330b.g5((k) obj);
            }
        });
    }

    @NonNull
    public j t6() {
        return new j("tertiary_fixed", new Function() { // from class: com.google.android.material.color.utilities.q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.r
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.i5((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.s
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30336b.j5((k) obj);
            }
        });
    }

    @NonNull
    public j u6() {
        return new j("tertiary_fixed_dim", new Function() { // from class: com.google.android.material.color.utilities.l5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.m5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.l5((k) obj);
            }
        }, true, new u2(this), null, new e(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.google.android.material.color.utilities.n5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30310b.m5((k) obj);
            }
        });
    }

    @NonNull
    public j v6() {
        return j.f("tertiary_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.x1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30292h;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.y1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.o5((k) obj);
            }
        });
    }

    @NonNull
    public j w6() {
        return j.f("text_hint_inverse", new Function() { // from class: com.google.android.material.color.utilities.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.d0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.q5((k) obj);
            }
        });
    }

    @NonNull
    public j x6() {
        return j.f("text_primary_inverse", new Function() { // from class: com.google.android.material.color.utilities.v3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.w3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.s5((k) obj);
            }
        });
    }

    @NonNull
    public j y6() {
        return j.f("text_primary_inverse_disable_only", new Function() { // from class: com.google.android.material.color.utilities.c1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.d1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.u5((k) obj);
            }
        });
    }

    @NonNull
    public j z5() {
        return j.f("neutral_palette_key_color", new Function() { // from class: com.google.android.material.color.utilities.v0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30293i;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.w0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.R2((k) obj);
            }
        });
    }

    @NonNull
    public j z6() {
        return j.f("text_secondary_and_tertiary_inverse", new Function() { // from class: com.google.android.material.color.utilities.q3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((k) obj).f30294j;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.b4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u5.w5((k) obj);
            }
        });
    }
}
