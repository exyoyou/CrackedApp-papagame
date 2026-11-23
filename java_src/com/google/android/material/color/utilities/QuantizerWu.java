package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class QuantizerWu implements y5 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f30171g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f30172h = 33;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f30173i = 35937;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int[] f30174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f30175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f30176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f30177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    double[] f30178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b[] f30179f;

    private enum Direction {
        RED,
        GREEN,
        BLUE
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30180a;

        static {
            int[] iArr = new int[Direction.values().length];
            f30180a = iArr;
            try {
                iArr[Direction.RED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30180a[Direction.GREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30180a[Direction.BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30188a;

        c(int i10, int i11) {
            this.f30188a = i11;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double f30190b;

        d(int i10, double d10) {
            this.f30189a = i10;
            this.f30190b = d10;
        }
    }

    static int b(b bVar, Direction direction, int[] iArr) {
        int i10;
        int i11;
        int i12 = a.f30180a[direction.ordinal()];
        if (i12 == 1) {
            i10 = (-iArr[h(bVar.f30181a, bVar.f30184d, bVar.f30186f)]) + iArr[h(bVar.f30181a, bVar.f30184d, bVar.f30185e)] + iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30186f)];
            i11 = iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30185e)];
        } else if (i12 == 2) {
            i10 = (-iArr[h(bVar.f30182b, bVar.f30183c, bVar.f30186f)]) + iArr[h(bVar.f30182b, bVar.f30183c, bVar.f30185e)] + iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30186f)];
            i11 = iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30185e)];
        } else {
            if (i12 != 3) {
                throw new IllegalArgumentException("unexpected direction " + direction);
            }
            i10 = (-iArr[h(bVar.f30182b, bVar.f30184d, bVar.f30185e)]) + iArr[h(bVar.f30182b, bVar.f30183c, bVar.f30185e)] + iArr[h(bVar.f30181a, bVar.f30184d, bVar.f30185e)];
            i11 = iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30185e)];
        }
        return i10 - i11;
    }

    static int h(int i10, int i11, int i12) {
        return (i10 << 10) + (i10 << 6) + i10 + (i11 << 5) + i11 + i12;
    }

    static int j(b bVar, Direction direction, int i10, int[] iArr) {
        int i11;
        int i12;
        int i13 = a.f30180a[direction.ordinal()];
        if (i13 == 1) {
            i11 = (iArr[h(i10, bVar.f30184d, bVar.f30186f)] - iArr[h(i10, bVar.f30184d, bVar.f30185e)]) - iArr[h(i10, bVar.f30183c, bVar.f30186f)];
            i12 = iArr[h(i10, bVar.f30183c, bVar.f30185e)];
        } else if (i13 == 2) {
            i11 = (iArr[h(bVar.f30182b, i10, bVar.f30186f)] - iArr[h(bVar.f30182b, i10, bVar.f30185e)]) - iArr[h(bVar.f30181a, i10, bVar.f30186f)];
            i12 = iArr[h(bVar.f30181a, i10, bVar.f30185e)];
        } else {
            if (i13 != 3) {
                throw new IllegalArgumentException("unexpected direction " + direction);
            }
            i11 = (iArr[h(bVar.f30182b, bVar.f30184d, i10)] - iArr[h(bVar.f30182b, bVar.f30183c, i10)]) - iArr[h(bVar.f30181a, bVar.f30184d, i10)];
            i12 = iArr[h(bVar.f30181a, bVar.f30183c, i10)];
        }
        return i11 + i12;
    }

    static int l(b bVar, int[] iArr) {
        return ((((((iArr[h(bVar.f30182b, bVar.f30184d, bVar.f30186f)] - iArr[h(bVar.f30182b, bVar.f30184d, bVar.f30185e)]) - iArr[h(bVar.f30182b, bVar.f30183c, bVar.f30186f)]) + iArr[h(bVar.f30182b, bVar.f30183c, bVar.f30185e)]) - iArr[h(bVar.f30181a, bVar.f30184d, bVar.f30186f)]) + iArr[h(bVar.f30181a, bVar.f30184d, bVar.f30185e)]) + iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30186f)]) - iArr[h(bVar.f30181a, bVar.f30183c, bVar.f30185e)];
    }

    @Override // com.google.android.material.color.utilities.y5
    public b6 a(int[] iArr, int i10) {
        c(new a6().a(iArr, i10).f30207a);
        e();
        List<Integer> listF = f(d(i10).f30188a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Integer> it2 = listF.iterator();
        while (it2.hasNext()) {
            linkedHashMap.put(Integer.valueOf(it2.next().intValue()), 0);
        }
        return new b6(linkedHashMap);
    }

    void c(Map<Integer, Integer> map) {
        this.f30174a = new int[f30173i];
        this.f30175b = new int[f30173i];
        this.f30176c = new int[f30173i];
        this.f30177d = new int[f30173i];
        this.f30178e = new double[f30173i];
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            int iIntValue2 = entry.getValue().intValue();
            int iQ = com.google.android.material.color.utilities.c.q(iIntValue);
            int i10 = com.google.android.material.color.utilities.c.i(iIntValue);
            int iG = com.google.android.material.color.utilities.c.g(iIntValue);
            int iH = h((iQ >> 3) + 1, (i10 >> 3) + 1, (iG >> 3) + 1);
            int[] iArr = this.f30174a;
            iArr[iH] = iArr[iH] + iIntValue2;
            int[] iArr2 = this.f30175b;
            iArr2[iH] = iArr2[iH] + (iQ * iIntValue2);
            int[] iArr3 = this.f30176c;
            iArr3[iH] = iArr3[iH] + (i10 * iIntValue2);
            int[] iArr4 = this.f30177d;
            iArr4[iH] = iArr4[iH] + (iG * iIntValue2);
            double[] dArr = this.f30178e;
            dArr[iH] = dArr[iH] + ((double) (iIntValue2 * ((iQ * iQ) + (i10 * i10) + (iG * iG))));
        }
    }

    c d(int i10) {
        int i11;
        this.f30179f = new b[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            this.f30179f[i12] = new b(null);
        }
        double[] dArr = new double[i10];
        b bVar = this.f30179f[0];
        bVar.f30182b = 32;
        bVar.f30184d = 32;
        bVar.f30186f = 32;
        int i13 = 1;
        int i14 = 0;
        while (i13 < i10) {
            b[] bVarArr = this.f30179f;
            if (g(bVarArr[i14], bVarArr[i13]).booleanValue()) {
                b bVar2 = this.f30179f[i14];
                dArr[i14] = bVar2.f30187g > 1 ? k(bVar2) : 0.0d;
                b bVar3 = this.f30179f[i13];
                dArr[i13] = bVar3.f30187g > 1 ? k(bVar3) : 0.0d;
            } else {
                dArr[i14] = 0.0d;
                i13--;
            }
            double d10 = dArr[0];
            int i15 = 0;
            for (int i16 = 1; i16 <= i13; i16++) {
                double d11 = dArr[i16];
                if (d11 > d10) {
                    i15 = i16;
                    d10 = d11;
                }
            }
            if (d10 <= 0.0d) {
                i11 = i13 + 1;
                return new c(i10, i11);
            }
            i13++;
            i14 = i15;
        }
        i11 = i10;
        return new c(i10, i11);
    }

    void e() {
        int i10 = 1;
        while (true) {
            int i11 = 33;
            if (i10 >= 33) {
                return;
            }
            int[] iArr = new int[33];
            int[] iArr2 = new int[33];
            int[] iArr3 = new int[33];
            int[] iArr4 = new int[33];
            double[] dArr = new double[33];
            int i12 = 1;
            while (i12 < i11) {
                int i13 = 0;
                double d10 = 0.0d;
                int i14 = 1;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                while (i14 < i11) {
                    int iH = h(i10, i12, i14);
                    int i18 = i13 + this.f30174a[iH];
                    i15 += this.f30175b[iH];
                    i16 += this.f30176c[iH];
                    i17 += this.f30177d[iH];
                    d10 += this.f30178e[iH];
                    iArr[i14] = iArr[i14] + i18;
                    iArr2[i14] = iArr2[i14] + i15;
                    iArr3[i14] = iArr3[i14] + i16;
                    iArr4[i14] = iArr4[i14] + i17;
                    dArr[i14] = dArr[i14] + d10;
                    int iH2 = h(i10 - 1, i12, i14);
                    int[] iArr5 = this.f30174a;
                    iArr5[iH] = iArr5[iH2] + iArr[i14];
                    int[] iArr6 = this.f30175b;
                    iArr6[iH] = iArr6[iH2] + iArr2[i14];
                    int[] iArr7 = this.f30176c;
                    iArr7[iH] = iArr7[iH2] + iArr3[i14];
                    int[] iArr8 = this.f30177d;
                    iArr8[iH] = iArr8[iH2] + iArr4[i14];
                    double[] dArr2 = this.f30178e;
                    dArr2[iH] = dArr2[iH2] + dArr[i14];
                    i14++;
                    i13 = i18;
                    i11 = 33;
                }
                i12++;
                i11 = 33;
            }
            i10++;
        }
    }

    List<Integer> f(int i10) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < i10; i11++) {
            b bVar = this.f30179f[i11];
            int iL = l(bVar, this.f30174a);
            if (iL > 0) {
                int iL2 = l(bVar, this.f30175b) / iL;
                int iL3 = l(bVar, this.f30176c) / iL;
                arrayList.add(Integer.valueOf(((l(bVar, this.f30177d) / iL) & 255) | ((iL2 & 255) << 16) | (-16777216) | ((iL3 & 255) << 8)));
            }
        }
        return arrayList;
    }

    Boolean g(b bVar, b bVar2) {
        int iL = l(bVar, this.f30175b);
        int iL2 = l(bVar, this.f30176c);
        int iL3 = l(bVar, this.f30177d);
        int iL4 = l(bVar, this.f30174a);
        Direction direction = Direction.RED;
        d dVarI = i(bVar, direction, bVar.f30181a + 1, bVar.f30182b, iL, iL2, iL3, iL4);
        Direction direction2 = Direction.GREEN;
        d dVarI2 = i(bVar, direction2, bVar.f30183c + 1, bVar.f30184d, iL, iL2, iL3, iL4);
        Direction direction3 = Direction.BLUE;
        d dVarI3 = i(bVar, direction3, bVar.f30185e + 1, bVar.f30186f, iL, iL2, iL3, iL4);
        double d10 = dVarI.f30190b;
        double d11 = dVarI2.f30190b;
        double d12 = dVarI3.f30190b;
        if (d10 < d11 || d10 < d12) {
            direction = (d11 < d10 || d11 < d12) ? direction3 : direction2;
        } else if (dVarI.f30189a < 0) {
            return Boolean.FALSE;
        }
        bVar2.f30182b = bVar.f30182b;
        bVar2.f30184d = bVar.f30184d;
        bVar2.f30186f = bVar.f30186f;
        int i10 = a.f30180a[direction.ordinal()];
        if (i10 == 1) {
            int i11 = dVarI.f30189a;
            bVar.f30182b = i11;
            bVar2.f30181a = i11;
            bVar2.f30183c = bVar.f30183c;
            bVar2.f30185e = bVar.f30185e;
        } else if (i10 == 2) {
            int i12 = dVarI2.f30189a;
            bVar.f30184d = i12;
            bVar2.f30181a = bVar.f30181a;
            bVar2.f30183c = i12;
            bVar2.f30185e = bVar.f30185e;
        } else if (i10 == 3) {
            int i13 = dVarI3.f30189a;
            bVar.f30186f = i13;
            bVar2.f30181a = bVar.f30181a;
            bVar2.f30183c = bVar.f30183c;
            bVar2.f30185e = i13;
        }
        bVar.f30187g = (bVar.f30182b - bVar.f30181a) * (bVar.f30184d - bVar.f30183c) * (bVar.f30186f - bVar.f30185e);
        bVar2.f30187g = (bVar2.f30182b - bVar2.f30181a) * (bVar2.f30184d - bVar2.f30183c) * (bVar2.f30186f - bVar2.f30185e);
        return Boolean.TRUE;
    }

    d i(b bVar, Direction direction, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        QuantizerWu quantizerWu = this;
        b bVar2 = bVar;
        Direction direction2 = direction;
        int iB = b(bVar2, direction2, quantizerWu.f30175b);
        int iB2 = b(bVar2, direction2, quantizerWu.f30176c);
        int iB3 = b(bVar2, direction2, quantizerWu.f30177d);
        int iB4 = b(bVar2, direction2, quantizerWu.f30174a);
        double d10 = 0.0d;
        int i17 = -1;
        int i18 = i10;
        while (i18 < i11) {
            int iJ = j(bVar2, direction2, i18, quantizerWu.f30175b) + iB;
            int iJ2 = j(bVar2, direction2, i18, quantizerWu.f30176c) + iB2;
            int iJ3 = j(bVar2, direction2, i18, quantizerWu.f30177d) + iB3;
            int iJ4 = j(bVar2, direction2, i18, quantizerWu.f30174a) + iB4;
            if (iJ4 == 0) {
                i16 = iB;
            } else {
                i16 = iB;
                double d11 = ((double) (((iJ * iJ) + (iJ2 * iJ2)) + (iJ3 * iJ3))) / ((double) iJ4);
                int i19 = i12 - iJ;
                int i20 = i13 - iJ2;
                int i21 = i14 - iJ3;
                int i22 = i15 - iJ4;
                if (i22 != 0) {
                    double d12 = d11 + (((double) (((i19 * i19) + (i20 * i20)) + (i21 * i21))) / ((double) i22));
                    if (d12 > d10) {
                        d10 = d12;
                        i17 = i18;
                    }
                }
            }
            i18++;
            quantizerWu = this;
            bVar2 = bVar;
            direction2 = direction;
            iB = i16;
        }
        return new d(i17, d10);
    }

    double k(b bVar) {
        int iL = l(bVar, this.f30175b);
        int iL2 = l(bVar, this.f30176c);
        int iL3 = l(bVar, this.f30177d);
        return (((((((this.f30178e[h(bVar.f30182b, bVar.f30184d, bVar.f30186f)] - this.f30178e[h(bVar.f30182b, bVar.f30184d, bVar.f30185e)]) - this.f30178e[h(bVar.f30182b, bVar.f30183c, bVar.f30186f)]) + this.f30178e[h(bVar.f30182b, bVar.f30183c, bVar.f30185e)]) - this.f30178e[h(bVar.f30181a, bVar.f30184d, bVar.f30186f)]) + this.f30178e[h(bVar.f30181a, bVar.f30184d, bVar.f30185e)]) + this.f30178e[h(bVar.f30181a, bVar.f30183c, bVar.f30186f)]) - this.f30178e[h(bVar.f30181a, bVar.f30183c, bVar.f30185e)]) - (((double) (((iL * iL) + (iL2 * iL2)) + (iL3 * iL3))) / ((double) l(bVar, this.f30174a)));
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30183c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f30184d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f30185e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f30186f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f30187g;

        private b() {
            this.f30181a = 0;
            this.f30182b = 0;
            this.f30183c = 0;
            this.f30184d = 0;
            this.f30185e = 0;
            this.f30186f = 0;
            this.f30187g = 0;
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }
}
