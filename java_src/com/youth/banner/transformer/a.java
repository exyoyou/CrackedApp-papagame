package com.youth.banner.transformer;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a implements ViewPager.PageTransformer {
    protected static final float c(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    protected boolean a() {
        return true;
    }

    protected boolean b() {
        return false;
    }

    protected void d(View view, float f10) {
    }

    protected void e(View view, float f10) {
        float width = view.getWidth();
        float f11 = 0.0f;
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationY(0.0f);
        view.setTranslationX(b() ? 0.0f : (-width) * f10);
        if (!a()) {
            view.setAlpha(1.0f);
            return;
        }
        if (f10 > -1.0f && f10 < 1.0f) {
            f11 = 1.0f;
        }
        view.setAlpha(f11);
    }

    protected abstract void f(View view, float f10);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f10) {
        e(view, f10);
        f(view, f10);
        d(view, f10);
    }
}
