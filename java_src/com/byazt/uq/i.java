package com.byazt.uq;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1759, 42})
public class i {
    public static boolean a() {
        return Build.VERSION.SDK_INT <= 25;
    }

    public static boolean c() {
        return true;
    }

    public static boolean da() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static boolean gt() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "samsung");
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean m() {
        return Build.VERSION.SDK_INT == 29;
    }

    public static boolean my() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "huawei");
    }

    public static boolean n() {
        return Build.VERSION.SDK_INT < 23;
    }

    public static boolean nu() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            return i10 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean rh() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 31) {
            return i10 == 30 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean sl() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 24 && i10 <= 25;
    }

    public static boolean sp() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 26 && i10 <= 28;
    }

    public static boolean t() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 24 && i10 <= 28;
    }

    public static boolean tt() {
        return Build.VERSION.SDK_INT > 22;
    }

    public static boolean u() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean uj() {
        return Build.VERSION.SDK_INT <= 23;
    }

    public static boolean ve() {
        return Build.VERSION.SDK_INT <= 28;
    }

    public static boolean x() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 29 && i10 <= 30;
    }

    public static boolean yp() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 28) {
            return i10 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean z() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 29) {
            return i10 == 28 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }
}
