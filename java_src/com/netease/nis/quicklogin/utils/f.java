package com.netease.nis.quicklogin.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static void a(Context context, String str, String str2) {
        context.getSharedPreferences("yd_share_data", 0).edit().putString(str, str2).apply();
    }

    public static String b(Context context, String str) {
        return context.getSharedPreferences("yd_share_data", 0).getString(str, "");
    }

    public static void a(Context context, String str, long j10) {
        context.getSharedPreferences("yd_share_data", 0).edit().putLong(str, j10).apply();
    }

    public static long a(Context context, String str) {
        return context.getSharedPreferences("yd_share_data", 0).getLong(str, -1L);
    }
}
