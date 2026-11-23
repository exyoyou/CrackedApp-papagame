package com.youth.banner.transformer;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class n extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        view.setTranslationX(f10 >= 0.0f ? (-view.getWidth()) * f10 : 0.0f);
    }
}
