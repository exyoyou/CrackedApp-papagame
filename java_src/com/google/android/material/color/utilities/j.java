package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function<k, s6> f30275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<k, Double> f30276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f30277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function<k, j> f30278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function<k, j> f30279f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e f30280g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function<k, t6> f30281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Function<k, Double> f30282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final HashMap<k, l> f30283j;

    public j(@NonNull String str, @NonNull Function<k, s6> function, @NonNull Function<k, Double> function2, boolean z10, @Nullable Function<k, j> function3, @Nullable Function<k, j> function4, @Nullable e eVar, @Nullable Function<k, t6> function5) {
        this.f30283j = new HashMap<>();
        this.f30274a = str;
        this.f30275b = function;
        this.f30276c = function2;
        this.f30277d = z10;
        this.f30278e = function3;
        this.f30279f = function4;
        this.f30280g = eVar;
        this.f30281h = function5;
        this.f30282i = null;
    }

    public static double c(double d10) {
        if (!n(d10) || m(d10)) {
            return d10;
        }
        return 49.0d;
    }

    public static double d(double d10, double d11) {
        double d12 = d.d(d10, d11);
        double dB = d.b(d10, d11);
        double dE = d.e(d12, d10);
        double dE2 = d.e(dB, d10);
        if (n(d10)) {
            return (dE >= d11 || dE >= dE2 || ((Math.abs(dE - dE2) > 0.1d ? 1 : (Math.abs(dE - dE2) == 0.1d ? 0 : -1)) < 0 && (dE > d11 ? 1 : (dE == d11 ? 0 : -1)) < 0 && (dE2 > d11 ? 1 : (dE2 == d11 ? 0 : -1)) < 0)) ? d12 : dB;
        }
        return (dE2 >= d11 || dE2 >= dE) ? dB : d12;
    }

    @NonNull
    public static j e(@NonNull String str, int i10) {
        final l lVarB = l.b(i10);
        final s6 s6VarD = s6.d(i10);
        return f(str, new Function() { // from class: com.google.android.material.color.utilities.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return j.k(s6VarD, (k) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return j.l(lVarB, (k) obj);
            }
        });
    }

    @NonNull
    public static j f(@NonNull String str, @NonNull Function<k, s6> function, @NonNull Function<k, Double> function2) {
        return new j(str, function, function2, false, null, null, null, null);
    }

    @NonNull
    public static j g(@NonNull String str, @NonNull Function<k, s6> function, @NonNull Function<k, Double> function2, boolean z10) {
        return new j(str, function, function2, z10, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s6 k(s6 s6Var, k kVar) {
        return s6Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double l(l lVar, k kVar) {
        return Double.valueOf(lVar.e());
    }

    public static boolean m(double d10) {
        return Math.round(d10) <= 49;
    }

    public static boolean n(double d10) {
        return Math.round(d10) < 60;
    }

    public int h(@NonNull k kVar) {
        int iK = i(kVar).k();
        Function<k, Double> function = this.f30282i;
        if (function == null) {
            return iK;
        }
        return (v5.b(0, 255, (int) Math.round(((Double) function.apply(kVar)).doubleValue() * 255.0d)) << 24) | (iK & 16777215);
    }

    @NonNull
    public l i(@NonNull k kVar) {
        l lVar = this.f30283j.get(kVar);
        if (lVar != null) {
            return lVar;
        }
        l lVarF = ((s6) this.f30275b.apply(kVar)).f(j(kVar));
        if (this.f30283j.size() > 4) {
            this.f30283j.clear();
        }
        this.f30283j.put(kVar, lVarF);
        return lVarF;
    }

    /* JADX WARN: Code duplicated, block: B:90:0x01a6  */
    public double j(@NonNull k kVar) {
        double d10;
        double dMin;
        boolean z10 = kVar.f30289e < 0.0d;
        Function<k, t6> function = this.f30281h;
        if (function == null) {
            double dDoubleValue = ((Double) this.f30276c.apply(kVar)).doubleValue();
            Function<k, j> function2 = this.f30278e;
            if (function2 == null) {
                return dDoubleValue;
            }
            double dJ = ((j) function2.apply(kVar)).j(kVar);
            double dA = this.f30280g.a(kVar.f30289e);
            if (d.e(dJ, dDoubleValue) < dA) {
                dDoubleValue = d(dJ, dA);
            }
            if (z10) {
                dDoubleValue = d(dJ, dA);
            }
            if (!this.f30277d || 50.0d > dDoubleValue) {
                d10 = dDoubleValue;
            } else {
                d10 = 60.0d;
                if (dDoubleValue >= 60.0d) {
                    d10 = dDoubleValue;
                } else if (d.e(49.0d, dJ) >= dA) {
                    d10 = 49.0d;
                }
            }
            if (this.f30279f == null) {
                return d10;
            }
            double dJ2 = ((j) this.f30278e.apply(kVar)).j(kVar);
            double dJ3 = ((j) this.f30279f.apply(kVar)).j(kVar);
            double dMax = Math.max(dJ2, dJ3);
            double dMin2 = Math.min(dJ2, dJ3);
            if (d.e(dMax, d10) >= dA && d.e(dMin2, d10) >= dA) {
                return d10;
            }
            double dC = d.c(dMax, dA);
            double dA2 = d.a(dMin2, dA);
            ArrayList arrayList = new ArrayList();
            if (dC != -1.0d) {
                arrayList.add(Double.valueOf(dC));
            }
            if (dA2 != -1.0d) {
                arrayList.add(Double.valueOf(dA2));
            }
            if (n(dJ2) || n(dJ3)) {
                if (dC == -1.0d) {
                    return 100.0d;
                }
                return dC;
            }
            if (arrayList.size() == 1) {
                return ((Double) arrayList.get(0)).doubleValue();
            }
            if (dA2 == -1.0d) {
                return 0.0d;
            }
            return dA2;
        }
        t6 t6Var = (t6) function.apply(kVar);
        j jVarC = t6Var.c();
        j jVarD = t6Var.d();
        double dA3 = t6Var.a();
        TonePolarity tonePolarityB = t6Var.b();
        boolean zE = t6Var.e();
        double dJ4 = ((j) this.f30278e.apply(kVar)).j(kVar);
        boolean z11 = tonePolarityB == TonePolarity.NEARER || (tonePolarityB == TonePolarity.LIGHTER && !kVar.f30288d) || (tonePolarityB == TonePolarity.DARKER && kVar.f30288d);
        j jVar = z11 ? jVarC : jVarD;
        j jVar2 = z11 ? jVarD : jVarC;
        boolean zEquals = this.f30274a.equals(jVar.f30274a);
        double d11 = kVar.f30288d ? 1.0d : -1.0d;
        double dA4 = jVar.f30280g.a(kVar.f30289e);
        double dA5 = jVar2.f30280g.a(kVar.f30289e);
        double dDoubleValue2 = ((Double) jVar.f30276c.apply(kVar)).doubleValue();
        if (d.e(dJ4, dDoubleValue2) < dA4) {
            dDoubleValue2 = d(dJ4, dA4);
        }
        double dDoubleValue3 = ((Double) jVar2.f30276c.apply(kVar)).doubleValue();
        if (d.e(dJ4, dDoubleValue3) < dA5) {
            dDoubleValue3 = d(dJ4, dA5);
        }
        if (z10) {
            dDoubleValue2 = d(dJ4, dA4);
            dDoubleValue3 = d(dJ4, dA5);
        }
        if ((dDoubleValue3 - dDoubleValue2) * d11 < dA3) {
            double d12 = dA3 * d11;
            dDoubleValue3 = v5.a(0.0d, 100.0d, dDoubleValue2 + d12);
            if ((dDoubleValue3 - dDoubleValue2) * d11 < dA3) {
                dDoubleValue2 = v5.a(0.0d, 100.0d, dDoubleValue3 - d12);
            }
        }
        if (50.0d > dDoubleValue2 || dDoubleValue2 >= 60.0d) {
            if (50.0d > dDoubleValue3 || dDoubleValue3 >= 60.0d) {
                dMin = dDoubleValue3;
            } else if (!zE) {
                dMin = d11 > 0.0d ? 60.0d : 49.0d;
            } else if (d11 > 0.0d) {
                dMin = Math.max(dDoubleValue3, (dA3 * d11) + 60.0d);
                dDoubleValue2 = 60.0d;
            } else {
                dMin = Math.min(dDoubleValue3, (dA3 * d11) + 49.0d);
                dDoubleValue2 = 49.0d;
            }
        } else if (d11 > 0.0d) {
            dDoubleValue2 = 60.0d;
            dMin = Math.max(dDoubleValue3, (dA3 * d11) + 60.0d);
        } else {
            dMin = Math.min(dDoubleValue3, (dA3 * d11) + 49.0d);
            dDoubleValue2 = 49.0d;
        }
        return zEquals ? dDoubleValue2 : dMin;
    }

    public j(@NonNull String str, @NonNull Function<k, s6> function, @NonNull Function<k, Double> function2, boolean z10, @Nullable Function<k, j> function3, @Nullable Function<k, j> function4, @Nullable e eVar, @Nullable Function<k, t6> function5, @Nullable Function<k, Double> function6) {
        this.f30283j = new HashMap<>();
        this.f30274a = str;
        this.f30275b = function;
        this.f30276c = function2;
        this.f30277d = z10;
        this.f30278e = function3;
        this.f30279f = function4;
        this.f30280g = eVar;
        this.f30281h = function5;
        this.f30282i = function6;
    }
}
