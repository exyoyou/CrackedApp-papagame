package com.byazt.ek;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2014, 20})
public class c {
    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt < 'A' || cCharAt > 'Z') {
                    sb2.append(cCharAt);
                } else {
                    if (sb2.length() > 0) {
                        sb2.append('_');
                    }
                    sb2.append((char) (cCharAt + ' '));
                }
            }
            return sb2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String c(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (z10) {
            str = str.substring(1);
        }
        return c(str);
    }
}
