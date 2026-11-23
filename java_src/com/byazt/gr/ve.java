package com.byazt.gr;

import android.view.View;
import com.byazt.an.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 196, 54})
public class ve implements ViewPager.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14727c = 0.8f;
    public final float tt = 0.5f;

    @Override // com.byazt.an.ViewPager.n
    public void c(View view, float f10) {
        float f11 = ((f10 < 0.0f ? 0.19999999f : -0.19999999f) * f10) + 1.0f;
        float f12 = (f10 * (f10 < 0.0f ? 0.5f : -0.5f)) + 1.0f;
        if (f10 < 0.0f) {
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight() / 2);
        } else {
            view.setPivotX(0.0f);
            view.setPivotY(view.getHeight() / 2);
        }
        view.setScaleX(f11);
        view.setScaleY(f11);
        view.setAlpha(Math.abs(f12));
    }
}
