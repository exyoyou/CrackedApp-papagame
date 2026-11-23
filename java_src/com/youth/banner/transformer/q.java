package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class q extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f90309a = 0.85f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f90310b = 0.5f;

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        if (f10 >= -1.0f || f10 <= 1.0f) {
            float height = view.getHeight();
            float width = view.getWidth();
            float fMax = Math.max(f90309a, 1.0f - Math.abs(f10));
            float f11 = 1.0f - fMax;
            float f12 = (height * f11) / 2.0f;
            float f13 = (f11 * width) / 2.0f;
            view.setPivotY(height * 0.5f);
            view.setPivotX(width * 0.5f);
            if (f10 < 0.0f) {
                view.setTranslationX(f13 - (f12 / 2.0f));
            } else {
                view.setTranslationX((-f13) + (f12 / 2.0f));
            }
            view.setScaleX(fMax);
            view.setScaleY(fMax);
            view.setAlpha((((fMax - f90309a) / 0.14999998f) * 0.5f) + 0.5f);
        }
    }
}
