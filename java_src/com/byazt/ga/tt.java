package com.byazt.ga;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f14419c = new int[0];
    public static final long[] tt = new long[0];
    public static final Object[] ve = new Object[0];

    public static int c(int[] iArr, int i10, int i11) {
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else {
                if (i15 <= i11) {
                    return i14;
                }
                i12 = i14 - 1;
            }
        }
        return ~i13;
    }
}
