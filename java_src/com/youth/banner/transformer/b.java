package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class b extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        view.setPivotX(f10 >= 0.0f ? view.getWidth() : 0.0f);
        view.setScaleX(f10 < 0.0f ? f10 + 1.0f : 1.0f - f10);
    }
}
