package com.aggmoread.sdk.z.c.a.a.e;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes7.dex */
public class t {
    public static int a(double d10) {
        return a(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q, d10);
    }

    public static int b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int a(Context context, double d10) {
        return (int) ((d10 * ((double) context.getResources().getDisplayMetrics().density)) + 0.5d);
    }
}
