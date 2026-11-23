package com.kwad.components.core.t;

import com.sdk.base.module.manager.SDKManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static String a(long j10, boolean z10) {
        String[] strArr = {" B", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB"};
        if (j10 > 1) {
            double d10 = j10;
            int iLog = (int) (Math.log(d10) / Math.log(1024.0d));
            return String.format(Locale.ENGLISH, "%.1f%s", Double.valueOf(j10 > 1024 ? d10 / Math.pow(1024.0d, iLog) : d10 / 1024.0d), strArr[iLog]);
        }
        return j10 + SDKManager.ALGO_B_AES_SHA256_RSA;
    }
}
