package com.join.mgps.customview.guideview;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    public static int a(Context context, float dipValue) {
        return (int) ((dipValue * context.getApplicationContext().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int b(Context context, float pxValue) {
        return (int) ((pxValue / context.getApplicationContext().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int c(Context context, float pxValue) {
        return (int) ((pxValue / context.getApplicationContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int d(Context context, float spValue) {
        return (int) ((spValue * context.getApplicationContext().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
