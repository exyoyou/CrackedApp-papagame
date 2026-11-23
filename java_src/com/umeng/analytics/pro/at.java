package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes9.dex */
public class at {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84308a = "cl_count";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f84309b = "interval_";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f84310c = "config_ts";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f84311d = "iucc_s1";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f84312e = "iucc_s2";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f84313f = "sdk_type_ver";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f84314g = "should_fetch";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f84315h = "ccg_sp_config_file";

    private at() {
    }

    public static SharedPreferences a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(f84315h, 0);
        } catch (Throwable unused) {
            return null;
        }
    }
}
