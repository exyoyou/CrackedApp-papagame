package com.constant;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.windmill.sdk.WMConstants;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f24646a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f24647b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static h8.a f24648c;

    public static h8.a a() {
        return f24648c;
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(f24647b)) {
            return f24647b;
        }
        if (context == null) {
            return "";
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData.containsKey("channel_id")) {
                f24647b = applicationInfo.metaData.getInt("channel_id") + "";
            }
            return f24647b;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String c(Context context) {
        if (!TextUtils.isEmpty(f24646a)) {
            return f24646a;
        }
        if (context == null) {
            return "";
        }
        try {
            String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("qd_code") + "";
            f24646a = str;
            return str;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    public static int d(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("wf_single");
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static void e(Context context) {
    }

    public static void f() {
    }

    public static void g() {
    }
}
