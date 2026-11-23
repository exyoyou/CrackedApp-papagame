package com.byazt.nwh;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 668, 2020})
public class AnimationButton extends TextView implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f17663c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f17664n;
    public float tt;
    public float uj;
    public float ve;

    public AnimationButton(Context context) {
        super(context);
        this.f17663c = new c();
    }

    @Override // com.byazt.nwh.tt
    public float getMarqueeValue() {
        return this.uj;
    }

    @Override // com.byazt.nwh.tt
    public float getRippleValue() {
        return this.tt;
    }

    @Override // com.byazt.nwh.tt
    public float getShineValue() {
        return this.ve;
    }

    public float getStretchValue() {
        return this.f17664n;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f17663c.c(canvas, this, this);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f17663c.c(this, i10, i11);
    }

    public void setMarqueeValue(float f10) {
        this.uj = f10;
        postInvalidate();
    }

    public void setRippleValue(float f10) {
        this.tt = f10;
        postInvalidate();
    }

    public void setShineValue(float f10) {
        this.ve = f10;
        postInvalidate();
    }

    public void setStretchValue(float f10) {
        this.f17664n = f10;
        this.f17663c.c(this, f10);
    }
}
