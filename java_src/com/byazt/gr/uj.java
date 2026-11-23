package com.byazt.gr;

import android.text.TextUtils;
import android.view.View;
import com.byazt.an.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 196, 15})
public class uj implements ViewPager.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14726c;

    public void c(String str) {
        this.f14726c = str;
    }

    @Override // com.byazt.an.ViewPager.n
    public void c(View view, float f10) {
        if (f10 < -1.0f || f10 > 1.0f) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(1.0f);
            view.setTranslationX(view.getWidth() * (-f10));
            view.setTranslationY(view.getHeight() * f10);
        }
        if (TextUtils.equals(this.f14726c, "cube")) {
            float height = f10 < 0.0f ? view.getHeight() : 0.0f;
            view.setPivotX(view.getWidth() * 0.5f);
            view.setPivotY(height);
            view.setRotationX(f10 * (-90.0f));
        }
    }
}
