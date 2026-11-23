package com.byazt.gr;

import android.view.View;
import com.byazt.an.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 196, 20})
public class c implements ViewPager.n {
    @Override // com.byazt.an.ViewPager.n
    public void c(View view, float f10) {
        float width = f10 < 0.0f ? view.getWidth() : 0.0f;
        float height = view.getHeight() * 0.5f;
        view.setPivotX(width);
        view.setPivotY(height);
        view.setRotationY(f10 * 90.0f);
    }
}
