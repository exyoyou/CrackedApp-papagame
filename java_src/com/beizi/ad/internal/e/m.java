package com.beizi.ad.internal.e;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public class m {
    @SuppressLint({"NewApi"})
    public static void a(View view, String str, int i10, String str2, int i11) {
        view.setBackground(a(str, i10, str2, i11));
    }

    @SuppressLint({"NewApi"})
    public static void a(View view, String str, int i10, String str2, float[] fArr) {
        view.setBackground(a(str, i10, str2, fArr));
    }

    private static Drawable a(String str, int i10, String str2, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (!TextUtils.isEmpty(str) && str.startsWith("#")) {
            gradientDrawable.setColor(Color.parseColor(str));
        } else {
            gradientDrawable.setColor(Color.parseColor("#00000000"));
        }
        if (i11 > 0) {
            gradientDrawable.setCornerRadius(i11);
        }
        if (i10 > 0 && !TextUtils.isEmpty(str2) && str2.startsWith("#")) {
            gradientDrawable.setStroke(i10, Color.parseColor(str2));
        }
        return gradientDrawable;
    }

    private static Drawable a(String str, int i10, String str2, float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (!TextUtils.isEmpty(str) && str.startsWith("#")) {
            gradientDrawable.setColor(Color.parseColor(str));
        } else {
            gradientDrawable.setColor(Color.parseColor("#00000000"));
        }
        for (int i11 = 0; i11 < fArr.length; i11++) {
            float f10 = fArr[i11];
            if (f10 >= 0.0f) {
                fArr2[i11] = f10;
            } else {
                fArr2[i11] = 0.0f;
            }
        }
        gradientDrawable.setCornerRadii(fArr2);
        if (i10 > 0 && !TextUtils.isEmpty(str2) && str2.startsWith("#")) {
            gradientDrawable.setStroke(i10, Color.parseColor(str2));
        }
        return gradientDrawable;
    }
}
