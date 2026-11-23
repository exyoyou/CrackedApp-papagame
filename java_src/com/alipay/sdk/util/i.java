package com.alipay.sdk.util;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public final class i {
    private static String a() {
        return "1234567812345678A1F20E7=";
    }

    public static String b(Context context, String str) {
        String strC = null;
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(str, null);
            strC = TextUtils.isEmpty(string) ? null : v.e.c("1234567812345678A1F20E7=", string);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(strC)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7067m, com.alipay.sdk.app.statistic.c.f7075u, String.format("%s,%s", str, string));
            }
        } catch (Exception unused) {
        }
        return strC;
    }

    public static void c(Context context, String str, String str2) {
        try {
            String strA = v.e.a("1234567812345678A1F20E7=", str2);
            if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(strA)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7067m, com.alipay.sdk.app.statistic.c.f7076v, String.format("%s,%s", str, str2));
            }
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, strA).commit();
        } catch (Throwable unused) {
        }
    }

    private static boolean d(Context context, String str) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context).contains(str);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void e(Context context, String str) {
        try {
            PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
        } catch (Throwable unused) {
        }
    }
}
