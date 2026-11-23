package com.byazt.mg;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f16911c;

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = c();
        }
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("emotionui")) {
            return tt();
        }
        return true;
    }

    private static String tt(String str) {
        BufferedReader bufferedReader;
        String line = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
            try {
                line = bufferedReader.readLine();
                bufferedReader.close();
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

    public static boolean uj() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static boolean ve() {
        if (!f16911c) {
            try {
                Class.forName("miui.os.Build");
                com.byazt.jz.tt.f16035c = true;
                f16911c = true;
                return true;
            } catch (Exception unused) {
                f16911c = true;
            }
        }
        return com.byazt.jz.tt.f16035c;
    }

    public static String c() {
        return tt("ro.build.version.emui");
    }

    public static boolean tt() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2) || !str2.toLowerCase(Locale.getDefault()).startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
