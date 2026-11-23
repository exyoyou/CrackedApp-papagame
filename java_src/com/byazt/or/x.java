package com.byazt.or;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.byazt.nr.gu;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f18359c;

    public static int c(float f10, float f11, float f12, float f13) {
        return (((int) ((f10 * 255.0f) + 0.5f)) << 24) | (((int) ((f11 * 255.0f) + 0.5f)) << 16) | (((int) ((f12 * 255.0f) + 0.5f)) << 8) | ((int) ((f13 * 255.0f) + 0.5f));
    }

    private static float n(Context context) {
        try {
            if (f18359c) {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.DisplayMetrics");
                Method declaredMethod = clsLoadClass.getDeclaredMethod("getDeviceDensity", new Class[0]);
                declaredMethod.setAccessible(true);
                return ((Integer) declaredMethod.invoke(clsLoadClass, new Object[0])).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static int tt(Context context, float f10) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        float fN = n(context);
        if (fN <= 0.0f) {
            fN = 1.0f;
        }
        return (int) ((f10 / fN) + 0.5f);
    }

    public static String uj(Context context) {
        String language;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? gu.c(context).getConfiguration().getLocales().get(0) : Locale.getDefault();
            language = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    language = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            language = "";
        }
        return c(language);
    }

    public static float ve(Context context, float f10) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        return f10 * n(context);
    }

    public static float c(Context context, float f10) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        return (f10 * n(context)) + 0.5f;
    }

    public static int tt(Context context) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int ve(Context context) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int c(Context context) {
        if (context == null) {
            context = com.byazt.mf.c.c().ve().getContext();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String c(String str) {
        str.hashCode();
        switch (str) {
            case "ar":
                return "aa";
            case "ja":
                return "japan";
            case "ko":
                return "korea";
            case "ms":
                return "my";
            case "zh":
                return "cn";
            default:
                return str;
        }
    }
}
