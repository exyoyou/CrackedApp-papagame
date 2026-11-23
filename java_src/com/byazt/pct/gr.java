package com.byazt.pct;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 196})
public final class gr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f18637c;

    public static String c() {
        return "";
    }

    public static String c(Throwable th) {
        StringBuilder sb2 = new StringBuilder("{\"code\":");
        sb2.append(th instanceof rh ? ((rh) th).f18654c : 0);
        sb2.append("}");
        return sb2.toString();
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        String strSubstring = f18637c ? str.substring(1, str.length() - 1) : "";
        String str2 = "{\"code\":1,\"__data\":" + str;
        if (!strSubstring.isEmpty()) {
            return str2 + "," + strSubstring + "}";
        }
        return str2 + "}";
    }

    public static void c(boolean z10) {
        f18637c = z10;
    }
}
