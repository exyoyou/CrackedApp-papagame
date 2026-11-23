package com.cmic.gen.sdk.e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes9.dex */
public class f {
    public static String a(Context context) {
        String str = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            String str2 = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(d(context), 0));
            if (str2 != null) {
                return str2;
            }
            try {
                PackageInfo packageInfoC = c(context);
                if (packageInfoC == null) {
                    return null;
                }
                return context.getResources().getString(packageInfoC.applicationInfo.labelRes);
            } catch (Exception e10) {
                e = e10;
                str = str2;
                e.printStackTrace();
                return str;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public static String b(Context context) {
        try {
            PackageInfo packageInfoC = c(context);
            if (packageInfoC == null) {
                return "";
            }
            return d(context) + x.a.f97576d + packageInfoC.versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static PackageInfo c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static String d(Context context) {
        PackageInfo packageInfoC = c(context);
        return packageInfoC == null ? "" : packageInfoC.packageName;
    }
}
