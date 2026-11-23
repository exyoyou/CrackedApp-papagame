package com.xinzhu.overmind.utils;

import android.os.Build;
import com.byazt.bv.BaseConstants;
import sa.i0;

/* JADX INFO: loaded from: classes8.dex */
public final class e {
    private static boolean A(int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < i10) {
            return i11 == i10 - 1 && m() > 0;
        }
        return true;
    }

    public static boolean a() {
        return A(21);
    }

    public static boolean b() {
        return A(22);
    }

    public static boolean c() {
        return A(23);
    }

    public static boolean d() {
        return A(24);
    }

    public static boolean e() {
        return A(25);
    }

    public static boolean f() {
        return A(29);
    }

    public static boolean g() {
        return A(30);
    }

    public static boolean h() {
        return A(31);
    }

    public static boolean i() {
        return A(32);
    }

    public static boolean j() {
        return A(33);
    }

    public static boolean k() {
        return A(34);
    }

    public static boolean l() {
        return A(35);
    }

    private static int m() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Build.VERSION.PREVIEW_SDK_INT;
        }
        return 0;
    }

    public static boolean n() {
        throw new RuntimeException("TODO");
    }

    public static boolean o() {
        return Build.BRAND.trim().toUpperCase().contains(BaseConstants.ROM_OPPO_UPPER_CONSTANT);
    }

    public static boolean p() {
        String strB = i0.b("ro.build.version.emui", null);
        return strB != null && strB.contains("EmotionUI");
    }

    public static boolean q() {
        try {
            return fa.a.f91169b != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean r() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return "harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean s() {
        throw new RuntimeException("TODO");
    }

    public static boolean t() {
        return i0.b("ro.miui.ui.version.name", null) != null;
    }

    public static boolean u() {
        return Build.BRAND.equalsIgnoreCase("samsung") || Build.MANUFACTURER.equalsIgnoreCase("samsung");
    }

    public static boolean v() {
        return z();
    }

    public static boolean w() {
        String strB = i0.b("ro.vivo.os.build.display.id", null);
        return (strB == null || strB.isEmpty()) ? false : true;
    }

    public static boolean x() {
        return A(26);
    }

    public static boolean y() {
        return A(27);
    }

    public static boolean z() {
        return A(28);
    }
}
