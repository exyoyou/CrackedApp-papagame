package com.kwad.sdk.utils;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class bz {
    public static boolean aE(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            return true;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        for (int i10 = 0; i10 < strArrSplit.length && i10 < strArrSplit2.length; i10++) {
            try {
                int i11 = Integer.parseInt(strArrSplit[i10]) - Integer.parseInt(strArrSplit2[i10]);
                if (i11 > 0) {
                    return true;
                }
                if (i11 < 0) {
                    return false;
                }
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return strArrSplit.length >= strArrSplit2.length;
    }
}
