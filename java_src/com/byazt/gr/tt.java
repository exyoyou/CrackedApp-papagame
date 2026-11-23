package com.byazt.gr;

import android.view.View;
import com.byazt.an.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 196, 13})
public class tt implements ViewPager.n {
    @Override // com.byazt.an.ViewPager.n
    public void c(View view, float f10) {
        int width = view.getWidth();
        if (f10 < -1.0f || f10 > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f10 < 0.0f) {
            view.setTranslationX((-width) * f10);
        } else {
            view.setTranslationX(width);
            view.setTranslationX((-width) * f10);
        }
        view.setAlpha(Math.max(0.0f, 1.0f - Math.abs(f10)));
    }
}
