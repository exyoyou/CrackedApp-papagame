package com.byazt.i;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.nr.m;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 42, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f15266a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f15267c = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f15268n = null;
    public static String sp = null;
    public static String tt = "";
    public static String uj = "";
    public static String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static Boolean f15269x;

    public static boolean a() {
        return c("FLYME");
    }

    public static boolean c() {
        return c("EMUI") || c("MAGICUI");
    }

    public static String da() {
        if (ve == null) {
            c("");
        }
        return ve;
    }

    public static String i() {
        if (f15266a == null) {
            c("");
        }
        return f15266a;
    }

    public static boolean m() {
        if (f15269x == null) {
            f15269x = Boolean.valueOf(uj.sp().equals("harmony"));
        }
        return f15269x.booleanValue();
    }

    private static void my() {
        if (sp == null) {
            try {
                sp = uj("ro.miui.ui.version.name");
            } catch (Exception e10) {
                m.c(e10);
            }
            String str = sp;
            if (str == null) {
                str = "";
            }
            sp = str;
        }
    }

    public static boolean n() {
        rh();
        return c(f15267c);
    }

    public static boolean nu() {
        String str = Build.BRAND;
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("honor")) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str2) && str2.toLowerCase().startsWith("honor");
    }

    private static void rh() {
        if (TextUtils.isEmpty(f15267c)) {
            com.byazt.zz.ve.or();
            f15267c = com.byazt.ev.n.tt;
            uj = "ro.build.version." + com.byazt.ev.n.ve + "rom";
            tt = "com." + com.byazt.ev.n.ve + ".market";
        }
    }

    @NonNull
    public static String sl() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str.trim();
    }

    public static boolean sp() {
        return c("SAMSUNG");
    }

    @NonNull
    public static String t() {
        String str = Build.DISPLAY;
        return str == null ? "" : str.trim();
    }

    public static boolean tt() {
        return c("MAGICUI");
    }

    public static boolean u() {
        my();
        return "V10".equals(sp);
    }

    public static boolean uj() {
        return c("VIVO");
    }

    public static boolean ve() {
        return c("MIUI");
    }

    public static String x() {
        if (f15268n == null) {
            c("");
        }
        return f15268n;
    }

    public static boolean yp() {
        my();
        return "V11".equals(sp);
    }

    public static boolean z() {
        my();
        return "V12".equals(sp);
    }

    public static boolean c(String str) {
        rh();
        String str2 = f15268n;
        if (str2 != null) {
            return str2.equals(str);
        }
        String strUj = uj("ro.miui.ui.version.name");
        f15266a = strUj;
        if (TextUtils.isEmpty(strUj)) {
            String strUj2 = uj("ro.build.version.emui");
            f15266a = strUj2;
            if (TextUtils.isEmpty(strUj2)) {
                String strUj3 = uj("ro.build.version.magic");
                f15266a = strUj3;
                if (TextUtils.isEmpty(strUj3)) {
                    String strUj4 = uj(uj);
                    f15266a = strUj4;
                    if (TextUtils.isEmpty(strUj4)) {
                        String strUj5 = uj("ro.vivo.os.version");
                        f15266a = strUj5;
                        if (TextUtils.isEmpty(strUj5)) {
                            String strUj6 = uj("ro.smartisan.version");
                            f15266a = strUj6;
                            if (TextUtils.isEmpty(strUj6)) {
                                String strUj7 = uj("ro.gn.sv.version");
                                f15266a = strUj7;
                                if (TextUtils.isEmpty(strUj7)) {
                                    String strUj8 = uj("ro.lenovo.lvp.version");
                                    f15266a = strUj8;
                                    if (!TextUtils.isEmpty(strUj8)) {
                                        f15268n = "LENOVO";
                                        ve = "com.lenovo.leos.appstore";
                                    } else if (sl().toUpperCase().contains("SAMSUNG")) {
                                        f15268n = "SAMSUNG";
                                        ve = "com.sec.android.app.samsungapps";
                                    } else if (sl().toUpperCase().contains("ZTE")) {
                                        f15268n = "ZTE";
                                        ve = "zte.com.market";
                                    } else if (sl().toUpperCase().contains("NUBIA")) {
                                        f15268n = "NUBIA";
                                        ve = "cn.nubia.neostore";
                                    } else if (t().toUpperCase().contains("FLYME")) {
                                        f15268n = "FLYME";
                                        ve = "com.meizu.mstore";
                                        f15266a = t();
                                    } else if (sl().toUpperCase().contains("ONEPLUS")) {
                                        f15268n = "ONEPLUS";
                                        f15266a = uj("ro.rom.version");
                                        if (com.byazt.z.a.c(tt) >= 0) {
                                            ve = tt;
                                        } else {
                                            ve = "com.heytap.market";
                                        }
                                    } else {
                                        f15268n = sl().toUpperCase();
                                        ve = "";
                                        f15266a = "";
                                    }
                                } else {
                                    f15268n = "QIONEE";
                                    ve = "com.gionee.aora.market";
                                }
                            } else {
                                f15268n = "SMARTISAN";
                                ve = "com.smartisanos.appstore";
                            }
                        } else {
                            f15268n = "VIVO";
                            ve = "com.bbk.appstore";
                        }
                    } else {
                        f15268n = f15267c;
                        if (com.byazt.z.a.c(tt) >= 0) {
                            ve = tt;
                        } else {
                            ve = "com.heytap.market";
                        }
                    }
                } else {
                    f15268n = "MAGICUI";
                    ve = "com.hihonor.appmarket";
                }
            } else {
                String str3 = nu() ? "MAGICUI" : "EMUI";
                f15268n = str3;
                if (TextUtils.equals(str3, "MAGICUI")) {
                    ve = "com.hihonor.appmarket";
                } else {
                    ve = "com.huawei.appmarket";
                }
            }
        } else {
            f15268n = "MIUI";
            ve = "com.xiaomi.market";
            sp = f15266a;
        }
        return f15268n.equals(str);
    }

    public static String tt(String str) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                com.byazt.w.a.c(bufferedReader);
                return line;
            } catch (Throwable unused) {
                com.byazt.w.a.c(bufferedReader);
                return null;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }

    public static String uj(String str) {
        if (com.byazt.k.c.tt().optBoolean("enable_reflect_system_properties", true)) {
            try {
                return ve(str);
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return tt(str);
    }

    public static String ve(String str) throws Throwable {
        return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
    }
}
