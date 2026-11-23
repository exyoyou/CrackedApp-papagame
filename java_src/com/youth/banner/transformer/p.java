package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class p extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float f11 = 0.0f;
        float fAbs = f10 < 0.0f ? f10 + 1.0f : Math.abs(1.0f - f10);
        view.setScaleX(fAbs);
        view.setScaleY(fAbs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        if (f10 >= -1.0f && f10 <= 1.0f) {
            f11 = 1.0f - (fAbs - 1.0f);
        }
        view.setAlpha(f11);
    }
}
