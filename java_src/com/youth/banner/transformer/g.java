package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class g extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f90303a = 0.75f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        if (f10 <= 0.0f) {
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f10 <= 1.0f) {
            float fAbs = ((1.0f - Math.abs(f10)) * 0.25f) + 0.75f;
            view.setAlpha(1.0f - f10);
            view.setPivotY(view.getHeight() * 0.5f);
            view.setTranslationX(view.getWidth() * (-f10));
            view.setScaleX(fAbs);
            view.setScaleY(fAbs);
        }
    }
}
