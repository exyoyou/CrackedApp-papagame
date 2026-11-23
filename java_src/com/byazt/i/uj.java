package com.byazt.i;

import android.content.Context;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 42, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f15271c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Boolean f15272n;
    public static String tt;
    public static String uj;
    public static String ve;

    public static boolean a() {
        return n() && tt(tt(), c()) && c(Process.myUid()) == 0;
    }

    public static boolean c(Context context) {
        return context != null && ve(context) == 0 && n();
    }

    public static boolean n() {
        if (f15272n == null) {
            f15272n = Boolean.FALSE;
            try {
                f15272n = Boolean.valueOf("156".equals(c("ro.config.hw_optb", "0")) && "true".equals(c("hw_mc.pure_mode.enable", "false")));
            } catch (Exception unused) {
            }
        }
        return f15272n.booleanValue();
    }

    public static String sp() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return (String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean tt(Context context) {
        return context != null && uj(context) == 0 && a();
    }

    public static String uj() {
        if (uj == null) {
            uj = c("getBuildVersion");
        }
        return uj;
    }

    public static String ve() {
        if (ve == null) {
            ve = c("getReleaseType");
        }
        return ve;
    }

    public static String c() {
        if (f15271c == null) {
            f15271c = c("getApiVersion");
        }
        return f15271c;
    }

    public static String tt() {
        if (tt == null) {
            tt = c("getVersion");
        }
        return tt;
    }

    public static int uj(Context context) {
        return (context == null || Settings.Secure.getInt(context.getContentResolver(), "pure_enhanced_mode_state", 1) != 0) ? 1 : 0;
    }

    public static int ve(Context context) {
        if (context == null) {
            return 1;
        }
        if (tt(tt(), c())) {
            return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 1) == 0 ? 0 : 1;
        }
        return Settings.Secure.getInt(context.getContentResolver(), "pure_mode_state", 0);
    }

    private static String c(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.SystemPropertiesEx");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Throwable unused) {
            return str2;
        }
    }

    private static boolean tt(String str, String str2) {
        return !TextUtils.isEmpty(str2) && str.startsWith("3");
    }

    private static int c(int i10) {
        try {
            Class<?> cls = Class.forName("com.huawei.android.os.UserHandleEx");
            return ((Integer) cls.getMethod("getUserId", Integer.TYPE).invoke(cls, Integer.valueOf(i10))).intValue();
        } catch (Throwable th) {
            m.c(th);
            return 1;
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
}
