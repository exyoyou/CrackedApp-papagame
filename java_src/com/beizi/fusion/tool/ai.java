package com.beizi.fusion.tool;

/* JADX INFO: loaded from: classes6.dex */
public class ai {
    public static boolean a(int i10) {
        return ((int) ((Math.random() * 100.0d) + 1.0d)) <= i10;
    }

    public static int b(int i10) {
        return (int) ((Math.random() * ((double) i10)) + 1.0d);
    }

    public static int[] a(int i10, int i11) {
        int[] iArr = new int[2];
        boolean z10 = false;
        while (!z10) {
            double dRint = Math.rint(b(0, (int) (((double) (i10 * 2)) * 0.95d)));
            double dRint2 = Math.rint(b(0, (int) (((double) (i11 * 2)) * 0.95d)));
            double d10 = i10;
            double d11 = i11;
            if (a(d10, d11, dRint, dRint2, d10 * 0.9d, d11 * 0.9d) <= 1.0d) {
                iArr[0] = (int) dRint;
                iArr[1] = (int) dRint2;
                z10 = true;
            }
        }
        return iArr;
    }

    private static int b(int i10, int i11) {
        return (int) ((Math.random() * ((double) (i11 - i10))) + ((double) i10));
    }

    private static double a(double d10, double d11, double d12, double d13, double d14, double d15) {
        return (Math.pow(d12 - d10, 2.0d) / Math.pow(d14, 2.0d)) + (Math.pow(d13 - d11, 2.0d) / Math.pow(d15, 2.0d));
    }
}
