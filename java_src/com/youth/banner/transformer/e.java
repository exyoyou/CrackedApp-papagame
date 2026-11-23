package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class e extends a {
    @Override // com.youth.banner.transformer.a
    public boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        view.setPivotX(f10 < 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f10 * 90.0f);
    }
}
