package com.ta.utdid2.android.utils;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f82941a = "com.ta.utdid2.android.utils.k";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f82942b = 86400000;

    public static boolean a(long j10, int i10) {
        boolean z10 = (System.currentTimeMillis() - j10) / 86400000 < ((long) i10);
        if (d.f82932b) {
            StringBuilder sb2 = new StringBuilder("isUpToDate: ");
            sb2.append(z10);
            sb2.append("; oldTimestamp: ");
            sb2.append(j10);
            sb2.append("; currentTimestamp");
            sb2.append(System.currentTimeMillis());
        }
        return z10;
    }
}
