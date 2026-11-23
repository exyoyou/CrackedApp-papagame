package com.byazt.nwh;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.byazt.aq.sp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 668, 669})
public class AnimationImageView extends ImageView implements tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public sp f17665a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f17666c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f17667n;
    public float tt;
    public float uj;
    public float ve;

    public AnimationImageView(Context context) {
        super(context);
        this.f17666c = new c();
    }

    public sp getBrickNativeValue() {
        return this.f17665a;
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
        return this.f17667n;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        sp spVar;
        super.onDraw(canvas);
        this.f17666c.c(canvas, this, this);
        if (getRippleValue() == 0.0f || (spVar = this.f17665a) == null || spVar.tt() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f17666c.c(this, i10, i11);
    }

    public void setBrickNativeValue(sp spVar) {
        this.f17665a = spVar;
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
        this.f17667n = f10;
        this.f17666c.c(this, f10);
    }
}
