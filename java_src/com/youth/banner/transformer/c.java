package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class c extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float height = view.getHeight();
        float width = view.getWidth();
        float fC = a.c(f10 >= 0.0f ? Math.abs(1.0f - f10) : 1.0f, 0.5f);
        view.setScaleX(fC);
        view.setScaleY(fC);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(f10 < 0.0f ? width * f10 : (-width) * f10 * 0.25f);
    }
}
