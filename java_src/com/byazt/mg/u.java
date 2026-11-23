package com.byazt.mg;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 67})
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CharSequence f16910c = "sony";
    public static final CharSequence tt = "amigo";
    public static final CharSequence ve = "funtouch";

    public static boolean a() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase(Locale.getDefault()).contains(tt);
    }

    public static String c() {
        if (ve.ve()) {
            return da();
        }
        if (ve.uj()) {
            return t();
        }
        if (u()) {
            return yp();
        }
        String strSl = sl();
        if (!TextUtils.isEmpty(strSl)) {
            return strSl;
        }
        if (n()) {
            return uj();
        }
        if (a()) {
            return sp();
        }
        if (ve()) {
            return tt();
        }
        String strX = x();
        return !TextUtils.isEmpty(strX) ? strX : Build.DISPLAY;
    }

    public static String da() {
        if (!ve.ve()) {
            return "";
        }
        return "miui_" + c("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static boolean i() {
        return !TextUtils.isEmpty(c("ro.letv.release.version"));
    }

    public static boolean n() {
        String strC = c("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strC) && strC.toLowerCase(Locale.getDefault()).contains(ve);
    }

    public static String sl() {
        String strC = ve.c();
        if (strC == null || !strC.toLowerCase(Locale.getDefault()).contains("emotionui")) {
            return "";
        }
        return strC + "_" + Build.DISPLAY;
    }

    public static String sp() {
        return Build.DISPLAY + "_" + c("ro.gn.sv.version");
    }

    public static String t() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase(Locale.getDefault()).contains("flyme")) ? "" : str;
    }

    public static String tt() {
        return c("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean u() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase(Locale.getDefault()).contains("oppo");
    }

    public static String uj() {
        return c("ro.vivo.os.build.display.id") + "_" + c("ro.vivo.product.version");
    }

    public static boolean ve() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String x() {
        if (!i()) {
            return "";
        }
        return "eui_" + c("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String yp() {
        if (!u()) {
            return "";
        }
        return "coloros_" + c("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    private static String c(String str) {
        BufferedReader bufferedReader;
        String line = "";
        try {
            Process processExec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
            try {
                line = bufferedReader.readLine();
                processExec.destroy();
                a.c(bufferedReader);
                return line;
            } catch (Throwable unused) {
                a.c(bufferedReader);
                return line;
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
    }
}
