package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes6.dex */
public class bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DisplayMetrics f7546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static float f7547b;

    public static Rect a(Context context) {
        DisplayMetrics displayMetricsF = f(context);
        try {
            return displayMetricsF.widthPixels > displayMetricsF.heightPixels ? new Rect(0, 0, displayMetricsF.heightPixels, displayMetricsF.widthPixels) : new Rect(0, 0, displayMetricsF.widthPixels, displayMetricsF.heightPixels);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int b(Context context) {
        return a(context).width();
    }

    public static int c(Context context) {
        return a(context).height();
    }

    public static Rect d(Context context) {
        DisplayMetrics displayMetricsF = f(context);
        return new Rect(0, 0, displayMetricsF.widthPixels, displayMetricsF.heightPixels);
    }

    public static float e(Context context) {
        if (f7547b < 0.01d) {
            f7547b = f(context).density;
        }
        return f7547b;
    }

    public static DisplayMetrics f(Context context) {
        try {
            DisplayMetrics displayMetrics = f7546a;
            if (displayMetrics != null && displayMetrics.widthPixels > 0) {
                return displayMetrics;
            }
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            if (bn.a(context).a() >= 17) {
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics2);
            } else {
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics2);
            }
            f7546a = displayMetrics2;
        } catch (Throwable th) {
            f7546a = new DisplayMetrics();
            bv.a().a(th);
        }
        return f7546a;
    }

    public static int g(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static int b(Context context, int i10) {
        try {
            return (int) (i10 * e(context));
        } catch (Exception unused) {
            return i10;
        }
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int a(Context context, int i10) {
        try {
            return (int) (i10 / e(context));
        } catch (Exception unused) {
            return i10;
        }
    }

    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
