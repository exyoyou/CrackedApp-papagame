package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class r6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f30331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l f30332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<l> f30333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<l> f30334d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<l, Double> f30335e;

    private r6() {
        throw new UnsupportedOperationException();
    }

    private l d() {
        return g().get(0);
    }

    private List<l> f() {
        List<l> list = this.f30334d;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (double d10 = 0.0d; d10 <= 360.0d; d10 += 1.0d) {
            arrayList.add(l.a(d10, this.f30331a.c(), this.f30331a.e()));
        }
        List<l> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.f30334d = listUnmodifiableList;
        return listUnmodifiableList;
    }

    private List<l> g() {
        List<l> list = this.f30333c;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(f());
        arrayList.add(this.f30331a);
        Collections.sort(arrayList, Comparator.comparing(new Function() { // from class: com.google.android.material.color.utilities.p6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f30328b.l((l) obj);
            }
        }, new Comparator() { // from class: com.google.android.material.color.utilities.q6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Double) obj).compareTo((Double) obj2);
            }
        }));
        this.f30333c = arrayList;
        return arrayList;
    }

    private Map<l, Double> i() {
        Map<l, Double> map = this.f30335e;
        if (map != null) {
            return map;
        }
        ArrayList<l> arrayList = new ArrayList(f());
        arrayList.add(this.f30331a);
        HashMap map2 = new HashMap();
        for (l lVar : arrayList) {
            map2.put(lVar, Double.valueOf(m(lVar)));
        }
        this.f30335e = map2;
        return map2;
    }

    private l j() {
        return g().get(g().size() - 1);
    }

    private static boolean k(double d10, double d11, double d12) {
        if (d11 < d12) {
            return d11 <= d10 && d10 <= d12;
        }
        return d11 <= d10 || d10 <= d12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Double l(l lVar) {
        return i().get(lVar);
    }

    public static double m(l lVar) {
        double[] dArrL = c.l(lVar.k());
        return ((Math.pow(Math.hypot(dArrL[1], dArrL[2]), 1.07d) * 0.02d) * Math.cos(Math.toRadians(v5.g(v5.g(Math.toDegrees(Math.atan2(dArrL[2], dArrL[1]))) - 50.0d)))) - 0.5d;
    }

    public List<l> b() {
        return c(5, 12);
    }

    public List<l> c(int i10, int i11) {
        int iRound = (int) Math.round(this.f30331a.d());
        l lVar = f().get(iRound);
        double dH = h(lVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar);
        double dAbs = 0.0d;
        double dAbs2 = 0.0d;
        int i12 = 0;
        while (i12 < 360) {
            double dH2 = h(f().get(v5.h(iRound + i12)));
            dAbs2 += Math.abs(dH2 - dH);
            i12++;
            dH = dH2;
        }
        double d10 = dAbs2 / ((double) i11);
        double dH3 = h(lVar);
        int i13 = 1;
        while (arrayList.size() < i11) {
            l lVar2 = f().get(v5.h(iRound + i13));
            double dH4 = h(lVar2);
            dAbs += Math.abs(dH4 - dH3);
            boolean z10 = dAbs >= ((double) arrayList.size()) * d10;
            int i14 = 1;
            while (z10 && arrayList.size() < i11) {
                arrayList.add(lVar2);
                z10 = dAbs >= ((double) (arrayList.size() + i14)) * d10;
                i14++;
            }
            i13++;
            if (i13 > 360) {
                while (arrayList.size() < i11) {
                    arrayList.add(lVar2);
                }
                break;
            }
            dH3 = dH4;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f30331a);
        int iFloor = (int) Math.floor((((double) i10) - 1.0d) / 2.0d);
        for (int i15 = 1; i15 < iFloor + 1; i15++) {
            int size = 0 - i15;
            while (size < 0) {
                size += arrayList.size();
            }
            if (size >= arrayList.size()) {
                size %= arrayList.size();
            }
            arrayList2.add(0, (l) arrayList.get(size));
        }
        int i16 = (i10 - iFloor) - 1;
        for (int i17 = 1; i17 < i16 + 1; i17++) {
            int size2 = i17;
            while (size2 < 0) {
                size2 += arrayList.size();
            }
            if (size2 >= arrayList.size()) {
                size2 %= arrayList.size();
            }
            arrayList2.add((l) arrayList.get(size2));
        }
        return arrayList2;
    }

    public l e() {
        l lVar = this.f30332b;
        if (lVar != null) {
            return lVar;
        }
        double d10 = d().d();
        double dDoubleValue = i().get(d()).doubleValue();
        double d11 = j().d();
        double dDoubleValue2 = i().get(j()).doubleValue() - dDoubleValue;
        boolean zK = k(this.f30331a.d(), d10, d11);
        double d12 = zK ? d11 : d10;
        if (!zK) {
            d10 = d11;
        }
        l lVar2 = f().get((int) Math.round(this.f30331a.d()));
        double dH = 1.0d - h(this.f30331a);
        double d13 = 1000.0d;
        for (double d14 = 0.0d; d14 <= 360.0d; d14 += 1.0d) {
            double dG = v5.g(d12 + (1.0d * d14));
            if (k(dG, d12, d10)) {
                l lVar3 = f().get((int) Math.round(dG));
                double dAbs = Math.abs(dH - ((i().get(lVar3).doubleValue() - dDoubleValue) / dDoubleValue2));
                if (dAbs < d13) {
                    lVar2 = lVar3;
                    d13 = dAbs;
                }
            }
        }
        this.f30332b = lVar2;
        return lVar2;
    }

    public double h(l lVar) {
        double dDoubleValue = i().get(j()).doubleValue() - i().get(d()).doubleValue();
        double dDoubleValue2 = i().get(lVar).doubleValue() - i().get(d()).doubleValue();
        if (dDoubleValue == 0.0d) {
            return 0.5d;
        }
        return dDoubleValue2 / dDoubleValue;
    }

    public r6(l lVar) {
        this.f30331a = lVar;
    }
}
