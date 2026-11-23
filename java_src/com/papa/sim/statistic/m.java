package com.papa.sim.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.PackageUtil;
import com.windmill.sdk.WMConstants;

/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f77299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f77300b;

    public static String a(Context context) {
        String str = f77300b;
        if (str != null && !str.equals("")) {
            return f77300b;
        }
        try {
            String strC = com.constant.a.c(context);
            if ("".equals(strC) || "0".equals(strC) || WMConstants.TIMER_STAGE_NONE.equals(strC)) {
                String string = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("QdAdIdData" + PackageUtil.getAppVersionName(context), "");
                f77300b = string;
                if (!TextUtils.isEmpty(string)) {
                    return f77300b;
                }
            }
            return strC;
        } catch (Exception e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("MGSIM_APPKEY") + "";
        } catch (Exception unused) {
            return "3";
        }
    }

    public static String c(Context context) {
        String str = f77299a;
        if (str != null && !str.equals("")) {
            return f77299a;
        }
        try {
            f77299a = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("count_type") + "";
        } catch (Exception unused) {
        }
        return f77299a;
    }
}
