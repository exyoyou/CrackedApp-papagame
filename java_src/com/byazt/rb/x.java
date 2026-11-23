package com.byazt.rb;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 23, 71})
public class x implements sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f19436a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f19437c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f19438n;
    public float tt;
    public float uj;
    public float ve;

    public x(View view) {
        this.f19437c = view;
    }

    public void c(float f10) {
        View view = this.f19437c;
        if (view == null) {
            return;
        }
        this.tt = f10;
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(f10);
        }
    }

    @Override // com.byazt.rb.sp
    public float getRipple() {
        return this.ve;
    }

    @Override // com.byazt.rb.sp
    public float getRubIn() {
        return this.f19436a;
    }

    @Override // com.byazt.rb.sp
    public float getShine() {
        return this.uj;
    }

    @Override // com.byazt.rb.sp
    public float getStretch() {
        return this.f19438n;
    }

    public void n(float f10) {
        this.f19436a = f10;
        this.f19437c.postInvalidate();
    }

    public void tt(float f10) {
        View view = this.f19437c;
        if (view == null) {
            return;
        }
        this.ve = f10;
        view.postInvalidate();
    }

    public void uj(float f10) {
        this.f19438n = f10;
        this.f19437c.postInvalidate();
    }

    public void ve(float f10) {
        View view = this.f19437c;
        if (view == null) {
            return;
        }
        this.uj = f10;
        view.postInvalidate();
    }

    public float c() {
        return this.tt;
    }

    public void c(int i10) {
        View view = this.f19437c;
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i10);
        } else if (background instanceof ColorDrawable) {
            ((ColorDrawable) background.mutate()).setColor(i10);
        }
    }
}
