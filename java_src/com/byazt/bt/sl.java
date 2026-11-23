package com.byazt.bt;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 158})
public class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile float f12061c = -1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile int f12062n = -1;
    public static volatile int tt = -1;
    public static volatile int uj = -1;
    public static volatile float ve = -1.0f;

    public static void c(Context context) {
        Resources resources;
        if (context == null || (resources = context.getResources()) == null) {
            return;
        }
        if (c()) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            f12061c = displayMetrics.density;
            tt = displayMetrics.densityDpi;
            ve = displayMetrics.scaledDensity;
            uj = displayMetrics.widthPixels;
            f12062n = displayMetrics.heightPixels;
        }
        if (resources.getConfiguration() != null) {
            if (resources.getConfiguration().orientation == 1) {
                if (uj > f12062n) {
                    int i10 = uj;
                    uj = f12062n;
                    f12062n = i10;
                    return;
                }
                return;
            }
            if (uj < f12062n) {
                int i11 = uj;
                uj = f12062n;
                f12062n = i11;
            }
        }
    }

    public static int tt(Context context) {
        c(context);
        return tt;
    }

    public static int uj(Context context) {
        c(context);
        return f12062n;
    }

    public static int ve(Context context) {
        c(context);
        return uj;
    }

    private static boolean c() {
        return f12061c < 0.0f || tt < 0 || ve < 0.0f || uj < 0 || f12062n < 0;
    }
}
