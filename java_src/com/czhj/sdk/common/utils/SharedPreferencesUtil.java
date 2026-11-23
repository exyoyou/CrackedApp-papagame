package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes9.dex */
public final class SharedPreferencesUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f25699a = "com.sigmob.Settings";

    private SharedPreferencesUtil(String str) {
        f25699a = str;
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        return context.getSharedPreferences(f25699a, 4);
    }

    public static SharedPreferences getSharedPreferences(Context context, String str) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(str);
        return context.getSharedPreferences(str, 4);
    }
}
