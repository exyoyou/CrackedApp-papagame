package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class l extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f90305a = -15.0f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float width = view.getWidth();
        float f11 = f10 * f90305a;
        view.setPivotX(width * 0.5f);
        view.setPivotY(0.0f);
        view.setTranslationX(0.0f);
        view.setRotation(f11);
    }
}
