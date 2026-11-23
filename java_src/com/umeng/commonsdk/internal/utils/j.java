package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.aw;

/* JADX INFO: loaded from: classes9.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85277a = aw.b().b(aw.f84337r);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f85278b = "um_common_strength";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85279c = "um_common_battery";

    public static String a(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f85277a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f85279c, null);
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f85277a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(f85279c, str).commit();
    }
}
