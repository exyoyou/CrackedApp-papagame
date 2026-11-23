package com.join.mgps.ad;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes5.dex */
public class q {
    public static int a(Context context, int dp) {
        return (int) TypedValue.applyDimension(1, dp, context.getApplicationContext().getResources().getDisplayMetrics());
    }

    public static int b(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public static int c(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static int d(Context context, int px) {
        return (int) ((px / context.getApplicationContext().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
