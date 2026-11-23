package com.xinzhu.overmind.virtual.oem;

import android.os.Build;

/* JADX INFO: loaded from: classes8.dex */
public class BuildCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ROMType f90150a;

    public enum ROMType {
        EMUI,
        MIUI,
        FLYME,
        COLOR_OS,
        LETV,
        VIVO,
        _360,
        SAMSUNG,
        OTHER
    }

    public static int a() {
        if (Build.VERSION.SDK_INT < 23) {
            return 0;
        }
        try {
            return Build.VERSION.PREVIEW_SDK_INT;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static ROMType b() {
        if (f90150a == null) {
            if (e()) {
                f90150a = ROMType.EMUI;
            } else if (h()) {
                f90150a = ROMType.MIUI;
            } else if (f()) {
                f90150a = ROMType.FLYME;
            } else if (d()) {
                f90150a = ROMType.COLOR_OS;
            } else if (c()) {
                f90150a = ROMType._360;
            } else if (g()) {
                f90150a = ROMType.LETV;
            } else if (o()) {
                f90150a = ROMType.VIVO;
            } else if (n()) {
                f90150a = ROMType.SAMSUNG;
            } else {
                f90150a = ROMType.OTHER;
            }
        }
        return f90150a;
    }

    public static boolean c() {
        String strA = ta.a.a("ro.build.uiversion");
        return strA != null && strA.toUpperCase().contains("360UI");
    }

    public static boolean d() {
        return ta.a.d("ro.build.version.opporom") || ta.a.d("ro.rom.different.version");
    }

    public static boolean e() {
        if (Build.DISPLAY.toUpperCase().startsWith("EMUI")) {
            return true;
        }
        String strA = ta.a.a("ro.build.version.emui");
        return strA != null && strA.contains("EmotionUI");
    }

    public static boolean f() {
        return Build.DISPLAY.toLowerCase().contains("flyme");
    }

    public static boolean g() {
        return Build.MANUFACTURER.equalsIgnoreCase("Letv");
    }

    public static boolean h() {
        return ta.a.c("ro.miui.ui.version.code", 0) > 0;
    }

    public static boolean i() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 25 || (i10 == 25 && a() > 0);
    }

    public static boolean j() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 27 || (i10 == 27 && a() > 0);
    }

    public static boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 28 || (i10 == 28 && a() > 0);
    }

    public static boolean l() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 29 || (i10 == 29 && a() > 0);
    }

    public static boolean m() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 30 || (i10 == 30 && a() > 0);
    }

    public static boolean n() {
        return "samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean o() {
        return ta.a.d("ro.vivo.os.build.display.id");
    }
}
