package com.kwad.sdk.crash.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    private static SimpleDateFormat bgs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static String aT(long j10) {
        return j10 <= 0 ? "unknown" : bgs.format(new Date(j10));
    }
}
