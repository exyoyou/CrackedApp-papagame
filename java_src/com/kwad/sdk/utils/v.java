package com.kwad.sdk.utils;

/* JADX INFO: loaded from: classes2.dex */
public final class v {
    public static int a(long j10, long j11, boolean z10, int i10) {
        com.kwad.sdk.core.d.c.d("DownloadProgressTransformUtil", "soFarBytes:" + j10 + " totalBytes:" + j11 + " isShowOptimizedProgress: " + z10 + " optimizeMethod: " + i10);
        double dO = j11 > 0 ? (j10 * 100.0d) / j11 : 0.0d;
        if (!z10) {
            return (int) dO;
        }
        if (i10 == 1) {
            dO = n(dO);
        } else if (i10 == 2) {
            dO = o(dO);
        }
        return (int) dO;
    }

    private static double n(double d10) {
        if (d10 <= 6.0d) {
            return d10 * 5.0d;
        }
        if (d10 <= 15.0d) {
            return ((d10 - 6.0d) * 2.0d) + 30.0d;
        }
        if (d10 <= 30.0d) {
            return d10 + 33.0d;
        }
        if (d10 < 100.0d) {
            return Math.min((((d10 - 30.0d) * 0.37d) / 0.7d) + 63.0d, 99.0d);
        }
        return 100.0d;
    }

    private static double o(double d10) {
        return Math.sqrt(d10) * 10.0d;
    }
}
