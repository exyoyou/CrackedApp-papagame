package com.byazt.vgp;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1713, 13})
public class tt {
    public static boolean c(long j10, long j11) {
        return (j10 & j11) == j11;
    }

    public static boolean tt(long j10) {
        return c(j10, c.USE_PITAYA.c());
    }

    public static boolean c(long j10) {
        return c(j10, c.USE_ALOG.c());
    }
}
