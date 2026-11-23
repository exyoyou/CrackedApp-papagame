package com.kwad.sdk.api.proxy.app;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class ApiConfigUtils {
    private static final String PREFERENCE_NAME = "ksadsdk_config";

    public static int readInt(Context context, String str, int i10) {
        try {
            return context.getSharedPreferences(PREFERENCE_NAME, 0).getInt(str, i10);
        } catch (Throwable unused) {
            return i10;
        }
    }

    public static String readString(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences(PREFERENCE_NAME, 0).getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
