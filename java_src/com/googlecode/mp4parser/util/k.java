package com.googlecode.mp4parser.util;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    public static int a(int i10, int i11) {
        while (true) {
            int i12 = i11;
            int i13 = i10;
            i10 = i12;
            if (i10 <= 0) {
                return i13;
            }
            i11 = i13 % i10;
        }
    }

    public static long b(long j10, long j11) {
        while (true) {
            long j12 = j10;
            j10 = j11;
            if (j10 <= 0) {
                return j12;
            }
            j11 = j12 % j10;
        }
    }

    public static int c(int i10, int i11) {
        return i10 * (i11 / a(i10, i11));
    }

    public static long d(long j10, long j11) {
        return j10 * (j11 / b(j10, j11));
    }
}
