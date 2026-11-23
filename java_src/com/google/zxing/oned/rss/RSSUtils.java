package com.google.zxing.oned.rss;

/* JADX INFO: loaded from: classes5.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    private static int combins(int i10, int i11) {
        int i12 = i10 - i11;
        if (i12 > i11) {
            i12 = i11;
            i11 = i12;
        }
        int i13 = 1;
        int i14 = 1;
        while (i10 > i11) {
            i13 *= i10;
            if (i14 <= i12) {
                i13 /= i14;
                i14++;
            }
            i10--;
        }
        while (i14 <= i12) {
            i13 /= i14;
            i14++;
        }
        return i13;
    }

    static int[] elements(int[] iArr, int i10, int i11) {
        int[] iArr2 = new int[iArr.length + 2];
        int i12 = i11 << 1;
        iArr2[0] = 1;
        int i13 = 10;
        int i14 = 1;
        for (int i15 = 1; i15 < i12 - 2; i15 += 2) {
            int i16 = i15 - 1;
            int i17 = iArr[i16] - iArr2[i16];
            iArr2[i15] = i17;
            int i18 = iArr[i15] - i17;
            iArr2[i15 + 1] = i18;
            int i19 = iArr2[i15];
            i14 += i18 + i19;
            if (i19 < i13) {
                i13 = i19;
            }
        }
        int i20 = i10 - i14;
        iArr2[i12 - 1] = i20;
        if (i20 < i13) {
            i13 = i20;
        }
        if (i13 > 1) {
            for (int i21 = 0; i21 < i12; i21 += 2) {
                int i22 = i13 - 1;
                iArr2[i21] = iArr2[i21] + i22;
                int i23 = i21 + 1;
                iArr2[i23] = iArr2[i23] - i22;
            }
        }
        return iArr2;
    }

    public static int getRSSvalue(int[] iArr, int i10, boolean z10) {
        int[] iArr2 = iArr;
        int length = iArr2.length;
        int i11 = 0;
        for (int i12 : iArr2) {
            i11 += i12;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int i16 = length - 1;
            if (i13 >= i16) {
                return i14;
            }
            int i17 = 1 << i13;
            i15 |= i17;
            int i18 = 1;
            while (i18 < iArr2[i13]) {
                int i19 = i11 - i18;
                int i20 = length - i13;
                int i21 = i20 - 2;
                int iCombins = combins(i19 - 1, i21);
                if (z10 && i15 == 0) {
                    int i22 = i20 - 1;
                    if (i19 - i22 >= i22) {
                        iCombins -= combins(i19 - i20, i21);
                    }
                }
                if (i20 - 1 > 1) {
                    int iCombins2 = 0;
                    for (int i23 = i19 - i21; i23 > i10; i23--) {
                        iCombins2 += combins((i19 - i23) - 1, i20 - 3);
                    }
                    iCombins -= iCombins2 * (i16 - i13);
                } else if (i19 > i10) {
                    iCombins--;
                }
                i14 += iCombins;
                i18++;
                i15 &= ~i17;
                iArr2 = iArr;
            }
            i11 -= i18;
            i13++;
            iArr2 = iArr;
        }
    }

    static int[] getRSSwidths(int i10, int i11, int i12, int i13, boolean z10) {
        int i14;
        int iCombins;
        int i15 = i12;
        int[] iArr = new int[i15];
        int i16 = i10;
        int i17 = i11;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            int i20 = i15 - 1;
            if (i18 >= i20) {
                iArr[i18] = i17;
                return iArr;
            }
            int i21 = 1 << i18;
            i19 |= i21;
            int i22 = 1;
            while (true) {
                i14 = i17 - i22;
                int i23 = i15 - i18;
                int i24 = i23 - 2;
                iCombins = combins(i14 - 1, i24);
                if (z10 && i19 == 0) {
                    int i25 = i23 - 1;
                    if (i14 - i25 >= i25) {
                        iCombins -= combins(i14 - i23, i24);
                    }
                }
                if (i23 - 1 > 1) {
                    int iCombins2 = 0;
                    for (int i26 = i14 - i24; i26 > i13; i26--) {
                        iCombins2 += combins((i14 - i26) - 1, i23 - 3);
                    }
                    iCombins -= iCombins2 * (i20 - i18);
                } else if (i14 > i13) {
                    iCombins--;
                }
                i16 -= iCombins;
                if (i16 < 0) {
                    break;
                }
                i22++;
                i19 &= ~i21;
                i15 = i12;
            }
            i16 += iCombins;
            iArr[i18] = i22;
            i18++;
            i15 = i12;
            i17 = i14;
        }
    }
}
