package com.kwad.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class bv {
    public static long C(@Nullable Context context, boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!z10) {
            return jCurrentTimeMillis;
        }
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ksadsdk_pref", 0);
            if (sharedPreferences == null) {
                return Math.abs(jCurrentTimeMillis);
            }
            long j10 = sharedPreferences.getLong("key_time_diff_s2c", 0L);
            if (j10 != 0) {
                return jCurrentTimeMillis + j10;
            }
        }
        return Math.abs(jCurrentTimeMillis);
    }

    public static void a(long j10, int i10, @Nullable Context context) {
        if (j10 == 0 || context == null || i10 <= 0 || i10 > 100) {
            return;
        }
        long jCurrentTimeMillis = j10 - System.currentTimeMillis();
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ksadsdk_pref", 0);
            if (sharedPreferences == null) {
                return;
            }
            if (Math.abs(jCurrentTimeMillis) / com.kuaishou.weapon.p0.bg.f74510s > i10) {
                sharedPreferences.edit().putLong("key_time_diff_s2c", jCurrentTimeMillis).apply();
            } else {
                sharedPreferences.edit().remove("key_time_diff_s2c").apply();
            }
        } catch (Throwable unused) {
        }
    }
}
