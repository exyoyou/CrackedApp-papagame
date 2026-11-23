package com.papa91.arc.http.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.windmill.sdk.WMConstants;

/* JADX INFO: loaded from: classes2.dex */
public class MetaUtils {
    static String countType;
    static String qudao;

    public static String getAd(Context context) {
        String str = qudao;
        if (str != null && !str.equals("")) {
            return qudao;
        }
        try {
            return getQD(context);
        } catch (Exception e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    public static String getAppID(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("MGSIM_APPKEY") + "";
        } catch (Exception unused) {
            return "3";
        }
    }

    public static String getAppVersionName(Context context) {
        Exception e10;
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        return str;
                    }
                } catch (Exception e11) {
                    e10 = e11;
                    e10.printStackTrace();
                }
            }
            return "";
        } catch (Exception e12) {
            e10 = e12;
            str = "";
        }
    }

    public static String getCountType(Context context) {
        String str = countType;
        if (str != null && !str.equals("")) {
            return countType;
        }
        try {
            countType = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("count_type") + "";
        } catch (Exception unused) {
        }
        return countType;
    }

    public static String getQD(Context context) {
        if (!TextUtils.isEmpty(qudao)) {
            return qudao;
        }
        if (context == null) {
            return "";
        }
        String string = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("QdAdIdConfig" + getAppVersionName(context), "");
        qudao = string;
        if (!TextUtils.isEmpty(string)) {
            return qudao;
        }
        try {
            String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("qd_code") + "";
            qudao = str;
            return str;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    public static int getTargetVersion(Context context) {
        if (context == null) {
            return 30;
        }
        try {
            return context.getApplicationInfo().targetSdkVersion;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 30;
        }
    }
}
