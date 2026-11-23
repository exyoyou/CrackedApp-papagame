package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class r extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float fAbs = Math.abs(f10) + 1.0f;
        view.setScaleX(fAbs);
        view.setScaleY(fAbs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setAlpha((f10 < -1.0f || f10 > 1.0f) ? 0.0f : 1.0f - (fAbs - 1.0f));
        if (f10 == -1.0f) {
            view.setTranslationX(view.getWidth() * (-1));
        }
    }
}
