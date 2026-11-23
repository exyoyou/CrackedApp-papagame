package com.kwad.sdk.crash.utils;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    public static String aU(long j10) {
        String strValueOf;
        String strValueOf2;
        long j11 = j10 / 60000;
        long j12 = (j10 - (60000 * j11)) / 1000;
        if (j11 < 10) {
            strValueOf = "0" + j11;
        } else {
            strValueOf = String.valueOf(j11);
        }
        if (j12 < 10) {
            strValueOf2 = "0" + j12;
        } else {
            strValueOf2 = String.valueOf(j12);
        }
        return strValueOf + ":" + strValueOf2;
    }
}
