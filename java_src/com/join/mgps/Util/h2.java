package com.join.mgps.Util;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes4.dex */
public final class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f49751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DisplayMetrics f49752b;

    public static float a(Context context) {
        return c(context).density;
    }

    public static int b(Context context) {
        return c(context).densityDpi;
    }

    public static DisplayMetrics c(Context context) {
        DisplayMetrics displayMetrics = f49752b;
        if (displayMetrics != null) {
            return displayMetrics;
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics2);
        return displayMetrics2;
    }

    public static int[] d(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    public static int e(Context context) {
        return c(context).heightPixels;
    }

    public static boolean f() {
        return f49751a;
    }

    public static void g(Activity activity) {
        activity.getWindow().setFlags(128, 128);
    }

    public static void h(Activity activity) {
        Window window = activity.getWindow();
        if (f49751a) {
            window.clearFlags(1024);
            f49751a = false;
        } else {
            window.setFlags(1024, 1024);
            f49751a = true;
        }
    }

    public static int i(Context context) {
        return c(context).widthPixels;
    }
}
