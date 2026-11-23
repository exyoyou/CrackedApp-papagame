package com.join.mgps.Util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class s2 {
    public static int a(String str) {
        Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
        int i10 = 0;
        while (matcher.find()) {
            for (int i11 = 0; i11 <= matcher.groupCount(); i11++) {
                i10++;
            }
        }
        return i10;
    }

    public static int b(String s10) {
        if (t2.h(s10)) {
            return 0;
        }
        return s10.length() + a(s10);
    }

    public static boolean c(String s10, int min, int max) {
        int iB = b(s10);
        return iB >= min && iB <= max;
    }

    public static boolean d(String s10, int min) {
        return b(s10) >= min;
    }
}
