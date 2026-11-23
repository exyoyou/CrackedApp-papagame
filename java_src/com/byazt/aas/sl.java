package com.byazt.aas;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 158})
public class sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Boolean f11474a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f11475c = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f11476n = null;
    public static int sp = 1;
    public static String tt = null;
    public static String uj = null;
    public static Boolean ve = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f11477x = 1;

    public static String a() {
        return tt;
    }

    public static void c() {
        if (ve == null) {
            if (!uj() && !ve()) {
                ve = Boolean.FALSE;
                return;
            }
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                ve = Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0])));
            } catch (Throwable unused) {
                ve = Boolean.FALSE;
            }
            if (f11475c == null) {
                f11475c = c("getApiVersion");
            }
            if (tt == null) {
                tt = c("getVersion");
            }
            if (f11476n == null) {
                f11476n = c("getReleaseType");
            }
            if (uj == null) {
                uj = c("getBuildVersion");
            }
            if (f11474a == null) {
                f11474a = Boolean.FALSE;
                try {
                    f11474a = Boolean.valueOf("156".equals(tt("ro.config.hw_optb", "0")) && "true".equals(tt("hw_mc.pure_mode.enable", "false")));
                } catch (Exception unused2) {
                }
            }
            try {
                sp = Settings.Secure.getInt(com.byazt.omf.gt.getContext().getContentResolver(), "pure_enhanced_mode_state", 1);
            } catch (Throwable unused3) {
            }
            try {
                Class<?> cls2 = Class.forName("com.huawei.android.os.UserHandleEx");
                f11477x = ((Integer) cls2.getMethod("getUserId", Integer.TYPE).invoke(cls2, Integer.valueOf(Process.myUid()))).intValue();
            } catch (Throwable unused4) {
            }
        }
    }

    public static boolean da() {
        return t() && c(a(), n()) && u() == 0;
    }

    public static boolean i() {
        return sl() == 0 && da();
    }

    public static String n() {
        return f11475c;
    }

    public static int sl() {
        return sp;
    }

    public static String sp() {
        return f11476n;
    }

    public static boolean t() {
        Boolean bool = f11474a;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean tt() {
        Boolean bool = ve;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private static int u() {
        return f11477x;
    }

    public static boolean uj() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith("HONOR")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith("HONOR");
    }

    public static boolean ve() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toUpperCase().startsWith("HUAWEI")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toUpperCase().startsWith("HUAWEI");
    }

    public static String x() {
        return uj;
    }

    private static int tt(Context context) {
        if (context != null) {
            return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
        }
        return 1;
    }

    private static String tt(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return str2;
        } catch (Throwable unused) {
            return str2;
        }
    }

    private static String c(String str) {
        try {
            Class<?> cls = Class.forName("ohos.system.version.SystemVersion");
            return cls.getMethod(str, new Class[0]).invoke(cls, new Object[0]).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean c(Context context) {
        return context != null && tt(context) == 0 && t();
    }

    public static void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            int i10 = 1;
            jSONObject.put("pure_enhanced_mode", i() ? 1 : 2);
            if (!da()) {
                i10 = 2;
            }
            jSONObject.put("pure_enhanced_mode_enable", i10);
        } catch (Throwable unused) {
        }
    }

    private static boolean c(String str, String str2) {
        return (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || !str.startsWith("3")) ? false : true;
    }
}
