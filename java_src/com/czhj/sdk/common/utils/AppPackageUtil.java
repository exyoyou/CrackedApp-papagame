package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes9.dex */
public class AppPackageUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f25586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f25587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static PackageInfo f25588c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f25589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f25590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f25591f;

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        if (!TextUtils.isEmpty(f25589d)) {
            return f25589d;
        }
        try {
            if (context.getApplicationInfo() != null) {
                f25589d = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return f25589d;
    }

    public static String getAppPackageName(Context context) {
        if (context == null) {
            return null;
        }
        if (!TextUtils.isEmpty(f25586a)) {
            return f25586a;
        }
        String packageName = context.getPackageName();
        f25586a = packageName;
        return packageName;
    }

    public static String getAppVersionFromContext(Context context) {
        if (!TextUtils.isEmpty(f25587b)) {
            return f25587b;
        }
        try {
            PackageInfo packageInfo = getPackageInfo(context);
            if (packageInfo != null) {
                f25587b = packageInfo.versionName;
            }
            return f25587b;
        } catch (Throwable unused) {
            SigmobLog.d("Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    public static int getHWID(Context context) {
        int i10 = f25590e;
        if (i10 != 0) {
            return i10;
        }
        if (RomUtils.isHuawei()) {
            try {
                f25590e = getPackageVersionCode(context, "com.huawei.hwid");
            } catch (Throwable unused) {
            }
        } else {
            f25590e = -1;
        }
        return f25590e;
    }

    public static int getOsMarket(Context context) {
        int packageVersionCode;
        int i10 = f25591f;
        if (i10 != 0) {
            return i10;
        }
        RomUtils.RomInfo romInfo = RomUtils.getRomInfo();
        if (romInfo != null) {
            String osMarket = romInfo.getOsMarket();
            if (!TextUtils.isEmpty(osMarket) && (packageVersionCode = getPackageVersionCode(context, osMarket)) != -1) {
                f25591f = packageVersionCode;
            }
        }
        return f25591f;
    }

    public static PackageInfo getPackageInfo(Context context) {
        if (f25588c == null) {
            PackageManager packageManager = getPackageManager(context);
            String appPackageName = getAppPackageName(context);
            if (packageManager == null || appPackageName == null) {
                return null;
            }
            try {
                f25588c = packageManager.getPackageInfo(appPackageName, 0);
            } catch (Throwable unused) {
            }
        }
        return f25588c;
    }

    public static PackageManager getPackageManager(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageManager();
    }

    public static int getPackageVersionCode(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return -1;
        }
    }
}
