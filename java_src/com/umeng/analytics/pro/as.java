package com.umeng.analytics.pro;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public class as {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f84297a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f84298b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f84299c = "hw_sc.build.platform.version";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f84300d = "ro.build.version.emui";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f84301e = "ro.build.version.magic";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f84302f = "ro.miui.ui.version.name";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f84303g = "ro.build.version.opporom";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f84304h = "ro.vivo.os.name";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f84305i = "ro.vivo.os.version";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f84306j = "ro.build.version.oplusrom";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f84307k = "ro.rom.version";

    private static boolean a() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(f84297a)) {
            e(str);
        }
        return f84298b;
    }

    public static String c(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replaceAll(" ", "").toUpperCase();
    }

    private static String d(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    private static void e(String str) {
        try {
            switch (c(str)) {
                case "HUAWEI":
                    if (!a()) {
                        f84297a = "EMUI";
                        f84298b = d(f84300d);
                        break;
                    } else {
                        f84298b = d(f84299c);
                        f84297a = "HarmonyOS";
                        break;
                    }
                    break;
                case "HONOR":
                    if (!TextUtils.isEmpty(d(f84301e))) {
                        f84297a = "MagicUI";
                        f84298b = d(f84301e);
                        break;
                    } else {
                        f84297a = "EMUI";
                        f84298b = d(f84300d);
                        break;
                    }
                    break;
                case "XIAOMI":
                case "REDMI":
                    f84297a = "MIUI";
                    f84298b = d(f84302f);
                    break;
                case "REALME":
                case "OPPO":
                    f84297a = "ColorOS";
                    f84298b = d(f84303g);
                    break;
                case "VIVO":
                    f84297a = "Funtouch";
                    f84298b = d(f84305i);
                    break;
                case "ONEPLUS":
                    f84297a = "HydrogenOS";
                    String strD = d(f84307k);
                    if (TextUtils.isEmpty(strD)) {
                        f84297a = "ColorOS";
                        strD = d(f84306j);
                    }
                    f84298b = strD;
                    break;
                default:
                    f84297a = "Android";
                    f84298b = Build.VERSION.RELEASE;
                    break;
            }
        } catch (Throwable unused) {
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(f84297a)) {
            e(str);
        }
        return f84297a;
    }
}
