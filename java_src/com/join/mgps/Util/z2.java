package com.join.mgps.Util;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes4.dex */
public class z2 {
    public static Drawable a(Context context, String color) {
        if (t2.h(color)) {
            color = "#8dbbec";
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        float fH = com.join.android.app.common.utils.q.n(context).h(context);
        int i10 = (int) (5.0f * fH);
        shapeDrawable.setPadding(i10, 0, i10, 0);
        shapeDrawable.setBounds(0, 0, 65, (int) (fH * 16.0f));
        float fG = com.join.android.app.common.utils.q.n(context).g() * 4.0f;
        com.join.android.app.common.utils.q.n(context).g();
        shapeDrawable.setShape(new RoundRectShape(new float[]{fG, fG, fG, fG, fG, fG, fG, fG}, null, null));
        Paint paint = shapeDrawable.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor(color));
        paint.setStrokeWidth((int) (com.join.android.app.common.utils.q.n(context).g() * 1.0f));
        return shapeDrawable;
    }

    public static Drawable b(Context context, String bgColor, float conner) {
        if (t2.h(bgColor)) {
            bgColor = "#8dbbec";
        }
        Drawable drawableC = com.join.mgps.customview.l0.c(new ColorDrawable(Color.parseColor(bgColor)));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (drawableC != null && (drawableC instanceof com.join.mgps.customview.l0)) {
            com.join.mgps.customview.l0 l0Var = (com.join.mgps.customview.l0) drawableC;
            l0Var.o(TypedValue.applyDimension(0, conner, displayMetrics));
            l0Var.q(ImageView.ScaleType.FIT_XY);
        }
        return drawableC;
    }

    public static Drawable c(Context context, String bgColor, String borderColor) {
        if (t2.h(bgColor)) {
            bgColor = "#8dbbec";
        }
        if (t2.h(borderColor)) {
            borderColor = "#8dbbec";
        }
        Drawable drawableC = com.join.mgps.customview.l0.c(new ColorDrawable(Color.parseColor(bgColor)));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (drawableC != null && (drawableC instanceof com.join.mgps.customview.l0)) {
            com.join.mgps.customview.l0 l0Var = (com.join.mgps.customview.l0) drawableC;
            l0Var.l(Color.parseColor(borderColor));
            l0Var.n(TypedValue.applyDimension(1, 1.0f, displayMetrics));
            l0Var.o(TypedValue.applyDimension(1, 2.0f, displayMetrics));
            l0Var.q(ImageView.ScaleType.FIT_XY);
        }
        return drawableC;
    }

    public static Drawable d(Context context, String color, int textNumber) {
        if (t2.h(color)) {
            color = "#8dbbec";
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        float fH = com.join.android.app.common.utils.q.n(context).h(context);
        shapeDrawable.setBounds(0, 0, textNumber * 65, (int) (16.0f * fH));
        float f10 = fH * 4.0f;
        shapeDrawable.setShape(new RoundRectShape(new float[]{f10, f10, f10, f10, f10, f10, f10, f10}, new RectF(0.0f, 0.0f, 0.0f, 0.0f), new float[]{f10, f10, f10, f10, f10, f10, f10, f10}));
        Paint paint = shapeDrawable.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor(color));
        paint.setStrokeWidth(2.0f);
        return shapeDrawable;
    }
}
