package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f49607a;

    private f1() throws InstantiationException {
        throw new InstantiationException("This class is not for instantiation");
    }

    public static String a(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        PackageManager packageManager = context.getPackageManager();
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveInfoResolveActivity == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
        List<ProviderInfo> listQueryContentProviders = packageManager.queryContentProviders(activityInfo.packageName, activityInfo.applicationInfo.uid, 8);
        if (listQueryContentProviders != null) {
            for (int i10 = 0; i10 < listQueryContentProviders.size(); i10++) {
                ProviderInfo providerInfo = listQueryContentProviders.get(i10);
                String str = providerInfo.readPermission;
                if (str != null && Pattern.matches(".*launcher.*READ_SETTINGS", str)) {
                    return providerInfo.authority;
                }
            }
        }
        return null;
    }

    public static String b(Context context, String permission) {
        int i10;
        if (TextUtils.isEmpty(permission)) {
            return "";
        }
        try {
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(8);
            if (installedPackages == null) {
                return "";
            }
            Iterator<PackageInfo> it2 = installedPackages.iterator();
            while (it2.hasNext()) {
                ProviderInfo[] providerInfoArr = it2.next().providers;
                if (providerInfoArr != null) {
                    int length = providerInfoArr.length;
                    while (i10 < length) {
                        ProviderInfo providerInfo = providerInfoArr[i10];
                        i10 = (permission.equals(providerInfo.readPermission) || permission.equals(providerInfo.writePermission)) ? 0 : i10 + 1;
                        return providerInfo.authority;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f49607a)) {
            f49607a = b(context, "com.android.launcher.permission.READ_SETTINGS");
        }
        return f49607a;
    }

    public static String d(Context context) {
        ActivityInfo activityInfo;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null || activityInfo.packageName.equals("android")) ? "" : resolveInfoResolveActivity.activityInfo.packageName;
    }
}
