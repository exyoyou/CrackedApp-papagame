package com.join.mgps.Util;

import android.app.Activity;
import android.os.Build;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes4.dex */
public class t1 {
    private static boolean a(Activity activity) {
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Activity activity) {
        if (Build.VERSION.SDK_INT < 28) {
            String str = Build.MANUFACTURER;
            if (t2.h(str)) {
                return false;
            }
            if (str.equalsIgnoreCase("HUAWEI")) {
                return a(activity);
            }
            if (str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI)) {
                return e(activity);
            }
            if (str.equalsIgnoreCase("oppo")) {
                return c(activity);
            }
            if (str.equalsIgnoreCase("vivo")) {
                return d(activity);
            }
            return false;
        }
        try {
            return activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout() != null;
        } catch (Exception e10) {
            e10.printStackTrace();
            String str2 = Build.MANUFACTURER;
            if (t2.h(str2)) {
                return false;
            }
            if (str2.equalsIgnoreCase("HUAWEI")) {
                return a(activity);
            }
            if (str2.equalsIgnoreCase(MediationConstant.ADN_XIAOMI)) {
                return e(activity);
            }
            if (str2.equalsIgnoreCase("oppo")) {
                return c(activity);
            }
            if (str2.equalsIgnoreCase("vivo")) {
                return d(activity);
            }
            return false;
        }
    }

    private static boolean c(Activity activity) {
        return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    private static boolean d(Activity activity) {
        try {
            Class<?> cls = Class.forName("android.util.FtFeature");
            return ((Boolean) cls.getMethod("isFeatureSupport", Integer.TYPE).invoke(cls, 32)).booleanValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static boolean e(Activity activity) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return ((Integer) cls.getMethod("getInt", String.class, Integer.TYPE).invoke(cls, "ro.miui.notch", 0)).intValue() == 1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
