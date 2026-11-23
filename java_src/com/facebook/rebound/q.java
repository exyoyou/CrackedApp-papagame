package com.facebook.rebound;

/* JADX INFO: loaded from: classes9.dex */
public class q {
    public static double a(double d10, double d11, double d12) {
        return Math.min(Math.max(d10, d11), d12);
    }

    public static double b(double d10, double d11, double d12, double d13, double d14) {
        return d13 + (((d10 - d11) / (d12 - d11)) * (d14 - d13));
    }
}
