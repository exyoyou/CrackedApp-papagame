package com.byazt.sgn;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 1691})
public class DislikeView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19624a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19625c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f19626n;
    public Paint sp;
    public int tt;
    public Paint uj;
    public RectF ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f19627x;

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.ve;
        int i10 = this.f19624a;
        canvas.drawRoundRect(rectF, i10, i10, this.f19626n);
        RectF rectF2 = this.ve;
        int i11 = this.f19624a;
        canvas.drawRoundRect(rectF2, i11, i11, this.uj);
        int i12 = this.f19625c;
        int i13 = this.tt;
        canvas.drawLine(i12 * 0.3f, i13 * 0.3f, i12 * 0.7f, i13 * 0.7f, this.sp);
        int i14 = this.f19625c;
        int i15 = this.tt;
        canvas.drawLine(i14 * 0.7f, i15 * 0.3f, i14 * 0.3f, i15 * 0.7f, this.sp);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f19625c = i10;
        this.tt = i11;
        int i14 = this.f19627x;
        this.ve = new RectF(i14, i14, this.f19625c - i14, this.tt - i14);
    }

    public void setBgColor(int i10) {
        this.f19626n.setStyle(Paint.Style.FILL);
        this.f19626n.setColor(i10);
    }

    public void setDislikeColor(int i10) {
        this.sp.setColor(i10);
    }

    public void setDislikeWidth(int i10) {
        this.sp.setStrokeWidth(i10);
    }

    public void setRadius(int i10) {
        this.f19624a = i10;
    }

    public void setStrokeColor(int i10) {
        this.uj.setStyle(Paint.Style.STROKE);
        this.uj.setColor(i10);
    }

    public void setStrokeWidth(int i10) {
        this.uj.setStrokeWidth(i10);
        this.f19627x = i10;
    }
}
