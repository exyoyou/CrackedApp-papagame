package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class i extends a {
    @Override // com.youth.banner.transformer.a
    protected void d(View view, float f10) {
        super.d(view, f10);
        if (f10 <= -0.5f || f10 >= 0.5f) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float f11 = f10 * (-180.0f);
        view.setAlpha((f11 > 90.0f || f11 < -90.0f) ? 0.0f : 1.0f);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationX(f11);
    }
}
