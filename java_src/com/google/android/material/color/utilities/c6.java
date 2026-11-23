package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class c6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f30212a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final double f30213b = 3.0d;

    private static final class a implements Comparable<a> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30214b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        double f30215c = -1.0d;

        a() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            return Double.valueOf(this.f30215c).compareTo(Double.valueOf(aVar.f30215c));
        }
    }

    private c6() {
    }

    public static Map<Integer, Integer> a(int[] iArr, int[] iArr2, int i10) {
        int[] iArr3;
        int i11;
        Random random = new Random(272008L);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        double[][] dArr = new double[iArr.length][];
        int[] iArr4 = new int[iArr.length];
        x5 x5Var = new x5();
        int i12 = 0;
        for (int i13 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i13));
            if (num == null) {
                dArr[i12] = x5Var.c(i13);
                iArr4[i12] = i13;
                i12++;
                linkedHashMap.put(Integer.valueOf(i13), 1);
            } else {
                linkedHashMap.put(Integer.valueOf(i13), Integer.valueOf(num.intValue() + 1));
            }
        }
        int[] iArr5 = new int[i12];
        for (int i14 = 0; i14 < i12; i14++) {
            iArr5[i14] = ((Integer) linkedHashMap.get(Integer.valueOf(iArr4[i14]))).intValue();
        }
        int iMin = Math.min(i10, i12);
        if (iArr2.length != 0) {
            iMin = Math.min(iMin, iArr2.length);
        }
        double[][] dArr2 = new double[iMin][];
        int i15 = 0;
        for (int i16 = 0; i16 < iArr2.length; i16++) {
            dArr2[i16] = x5Var.c(iArr2[i16]);
            i15++;
        }
        int i17 = iMin - i15;
        if (i17 > 0) {
            for (int i18 = 0; i18 < i17; i18++) {
            }
        }
        int[] iArr6 = new int[i12];
        for (int i19 = 0; i19 < i12; i19++) {
            iArr6[i19] = random.nextInt(iMin);
        }
        int[][] iArr7 = new int[iMin][];
        for (int i20 = 0; i20 < iMin; i20++) {
            iArr7[i20] = new int[iMin];
        }
        a[][] aVarArr = new a[iMin][];
        for (int i21 = 0; i21 < iMin; i21++) {
            aVarArr[i21] = new a[iMin];
            for (int i22 = 0; i22 < iMin; i22++) {
                aVarArr[i21][i22] = new a();
            }
        }
        int[] iArr8 = new int[iMin];
        int i23 = 0;
        while (true) {
            if (i23 >= 10) {
                iArr3 = iArr8;
                break;
            }
            int i24 = 0;
            while (i24 < iMin) {
                int i25 = i24 + 1;
                int i26 = i25;
                while (i26 < iMin) {
                    int[] iArr9 = iArr8;
                    double dB = x5Var.b(dArr2[i24], dArr2[i26]);
                    a aVar = aVarArr[i26][i24];
                    aVar.f30215c = dB;
                    aVar.f30214b = i24;
                    a aVar2 = aVarArr[i24][i26];
                    aVar2.f30215c = dB;
                    aVar2.f30214b = i26;
                    i26++;
                    iArr8 = iArr9;
                }
                int[] iArr10 = iArr8;
                Arrays.sort(aVarArr[i24]);
                for (int i27 = 0; i27 < iMin; i27++) {
                    iArr7[i24][i27] = aVarArr[i24][i27].f30214b;
                }
                iArr8 = iArr10;
                i24 = i25;
            }
            int[] iArr11 = iArr8;
            int i28 = 0;
            int i29 = 0;
            while (i28 < i12) {
                double[] dArr3 = dArr[i28];
                int i30 = iArr6[i28];
                double dB2 = x5Var.b(dArr3, dArr2[i30]);
                int[][] iArr12 = iArr7;
                int[] iArr13 = iArr5;
                double d10 = dB2;
                int i31 = -1;
                int i32 = 0;
                while (i32 < iMin) {
                    a[][] aVarArr2 = aVarArr;
                    int i33 = i12;
                    if (aVarArr[i30][i32].f30215c < 4.0d * dB2) {
                        double dB3 = x5Var.b(dArr3, dArr2[i32]);
                        if (dB3 < d10) {
                            i31 = i32;
                            d10 = dB3;
                        }
                    }
                    i32++;
                    i12 = i33;
                    aVarArr = aVarArr2;
                }
                a[][] aVarArr3 = aVarArr;
                int i34 = i12;
                if (i31 != -1 && Math.abs(Math.sqrt(d10) - Math.sqrt(dB2)) > 3.0d) {
                    i29++;
                    iArr6[i28] = i31;
                }
                i28++;
                iArr7 = iArr12;
                iArr5 = iArr13;
                i12 = i34;
                aVarArr = aVarArr3;
            }
            int[] iArr14 = iArr5;
            int[][] iArr15 = iArr7;
            a[][] aVarArr4 = aVarArr;
            int i35 = i12;
            if (i29 == 0 && i23 != 0) {
                iArr3 = iArr11;
                break;
            }
            double[] dArr4 = new double[iMin];
            double[] dArr5 = new double[iMin];
            double[] dArr6 = new double[iMin];
            char c10 = 0;
            Arrays.fill(iArr11, 0);
            int i36 = 0;
            while (true) {
                i11 = i35;
                if (i36 >= i11) {
                    break;
                }
                int i37 = iArr6[i36];
                double[] dArr7 = dArr[i36];
                int i38 = iArr14[i36];
                iArr11[i37] = iArr11[i37] + i38;
                double d11 = i38;
                dArr4[i37] = dArr4[i37] + (dArr7[c10] * d11);
                dArr5[i37] = dArr5[i37] + (dArr7[1] * d11);
                dArr6[i37] = dArr6[i37] + (dArr7[2] * d11);
                i36++;
                i23 = i23;
                i35 = i11;
                c10 = 0;
            }
            int i39 = i23;
            for (int i40 = 0; i40 < iMin; i40++) {
                int i41 = iArr11[i40];
                if (i41 == 0) {
                    dArr2[i40] = new double[]{0.0d, 0.0d, 0.0d};
                } else {
                    double d12 = i41;
                    double d13 = dArr4[i40] / d12;
                    double d14 = dArr5[i40] / d12;
                    double d15 = dArr6[i40] / d12;
                    double[] dArr8 = dArr2[i40];
                    dArr8[0] = d13;
                    dArr8[1] = d14;
                    dArr8[2] = d15;
                }
            }
            iArr7 = iArr15;
            i23 = i39 + 1;
            iArr8 = iArr11;
            i12 = i11;
            iArr5 = iArr14;
            aVarArr = aVarArr4;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (int i42 = 0; i42 < iMin; i42++) {
            int i43 = iArr3[i42];
            if (i43 != 0) {
                int iA = x5Var.a(dArr2[i42]);
                if (!linkedHashMap2.containsKey(Integer.valueOf(iA))) {
                    linkedHashMap2.put(Integer.valueOf(iA), Integer.valueOf(i43));
                }
            }
        }
        return linkedHashMap2;
    }
}
