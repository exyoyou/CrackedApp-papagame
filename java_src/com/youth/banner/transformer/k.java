package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class k extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f90304a = -15.0f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float width = view.getWidth();
        float height = view.getHeight();
        float f11 = f10 * f90304a * (-1.25f);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height);
        view.setRotation(f11);
    }
}
