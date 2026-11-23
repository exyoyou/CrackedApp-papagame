package com.windmill.sdk.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
public class i {
    public static String a(Context context) {
        String strValueOf = String.valueOf(System.currentTimeMillis());
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime / 1000);
        } catch (Exception e10) {
            e10.printStackTrace();
            return strValueOf;
        }
    }
}
