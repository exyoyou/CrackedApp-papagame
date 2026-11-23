package com.sdk.f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import com.sdk.base.framework.bean.AInfo;
import com.sdk.base.framework.bean.DeviceUtils;
import com.sdk.base.framework.bean.PInfo;
import com.sdk.base.framework.utils.log.LogUtils;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static String a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return ("SimInfo:  " + telephonyManager.getSimOperatorName()) + "  " + telephonyManager.getSimOperator();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0051 A[Catch: Exception -> 0x0054, TRY_LEAVE, TryCatch #2 {Exception -> 0x0054, blocks: (B:13:0x0042, B:15:0x0051), top: B:36:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    /* JADX WARN: Code duplicated, block: B:23:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a A[Catch: Exception -> 0x007d, TRY_LEAVE, TryCatch #0 {Exception -> 0x007d, blocks: (B:24:0x006f, B:26:0x007a), top: B:32:0x006f }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static AInfo a(Context context, String str) {
        String string;
        PackageInfo packageInfo;
        int i10;
        PackageInfo packageInfo2;
        AInfo aInfo = new AInfo();
        String str2 = com.sdk.i.a.f78540a;
        String str3 = null;
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                string = packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128)).toString();
            } catch (Exception e10) {
                LogUtils.e(com.sdk.i.a.f78540a, e10.getMessage(), Boolean.valueOf(com.sdk.i.a.f78541b));
                string = null;
            }
            aInfo.setN(string);
            if (context == null) {
                i10 = -1;
            } else {
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(com.sdk.i.a.a(context), 1);
                    if (packageInfo != null) {
                        i10 = packageInfo.versionCode;
                    } else {
                        i10 = -1;
                    }
                } catch (Exception e11) {
                    LogUtils.e(com.sdk.i.a.f78540a, e11.getMessage(), Boolean.valueOf(com.sdk.i.a.f78541b));
                }
            }
            aInfo.setC(i10);
            if (context != null) {
                try {
                    packageInfo2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    if (packageInfo2 != null) {
                        str3 = packageInfo2.versionName;
                    }
                } catch (Exception e12) {
                    LogUtils.e(com.sdk.i.a.f78540a, e12.getMessage(), Boolean.valueOf(com.sdk.i.a.f78541b));
                }
            }
            aInfo.setV(str3);
            aInfo.setPk(com.sdk.i.a.a(context));
            aInfo.setCode(com.sdk.i.a.b(context, str));
            return aInfo;
        }
        com.sdk.h.a.a(str2, "getAppLable", "mContext 为空", com.sdk.i.a.f78541b);
        string = null;
        aInfo.setN(string);
        if (context == null) {
            i10 = -1;
        } else {
            packageInfo = context.getPackageManager().getPackageInfo(com.sdk.i.a.a(context), 1);
            if (packageInfo != null) {
                i10 = packageInfo.versionCode;
            } else {
                i10 = -1;
            }
        }
        aInfo.setC(i10);
        if (context != null) {
            packageInfo2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo2 != null) {
                str3 = packageInfo2.versionName;
            }
        }
        aInfo.setV(str3);
        aInfo.setPk(com.sdk.i.a.a(context));
        aInfo.setCode(com.sdk.i.a.b(context, str));
        return aInfo;
    }

    public static PInfo a() {
        PInfo pInfo = new PInfo();
        pInfo.setOs("Android");
        pInfo.setN("PhoneInfo:" + DeviceUtils.getPhoneBrand() + " : " + DeviceUtils.getPhoneModel() + " Android " + DeviceUtils.getVersionRelease() + "\n");
        return pInfo;
    }
}
