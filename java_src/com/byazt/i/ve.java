package com.byazt.i;

import android.text.TextUtils;
import android.util.Base64;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 42, 54})
public class ve {
    public static String c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(com.byazt.w.a.c(str), 0);
        int length = str2.length();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (byte b10 : bArrDecode) {
            if (i10 >= length) {
                i10 %= length;
            }
            sb2.append((char) (b10 ^ str2.charAt(i10)));
            i10++;
        }
        return sb2.toString();
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new String(Base64.decode(com.byazt.w.a.c(str), 0));
    }
}
