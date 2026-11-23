package com.bykv.vk.component.ttvideo.utils;

/* JADX INFO: loaded from: classes9.dex */
public class LiveUtils {
    public static int versionStringToInt(String str) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length <= 0) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            i10 = i11 == 0 ? Integer.parseInt(strArrSplit[i11]) : (i10 * 100) + Integer.parseInt(strArrSplit[i11]);
        }
        return i10;
    }
}
