package com.byazt.or;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 15})
public class uj {
    public static Drawable c(Context context, com.byazt.aq.sp spVar) {
        if (context == null || spVar == null) {
            return null;
        }
        return c(context, (int) x.c(context, spVar.nu()), spVar.m(), spVar.md());
    }

    public static Drawable c(Context context, int i10, int i11, int i12) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i10, i11);
        }
        gradientDrawable.setColor(i12);
        return gradientDrawable;
    }
}
