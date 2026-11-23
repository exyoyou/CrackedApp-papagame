package com.join.mgps.ptr.header;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;

/* JADX INFO: loaded from: classes3.dex */
public class c extends Animation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PointF f72145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f72146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f72147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f72148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f72149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f72150g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PointF f72151h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PointF f72152i;

    public c(int index, PointF start, PointF end, int color, int lineWidth) {
        Paint paint = new Paint();
        this.f72148e = paint;
        this.f72149f = 1.0f;
        this.f72150g = 0.4f;
        this.f72147d = index;
        this.f72145b = new PointF((start.x + end.x) / 2.0f, (start.y + end.y) / 2.0f);
        float f10 = start.x;
        PointF pointF = this.f72145b;
        this.f72151h = new PointF(f10 - pointF.x, start.y - pointF.y);
        float f11 = end.x;
        PointF pointF2 = this.f72145b;
        this.f72152i = new PointF(f11 - pointF2.x, end.y - pointF2.y);
        d(color);
        e(lineWidth);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
    }

    public void a(Canvas canvas) {
        PointF pointF = this.f72151h;
        float f10 = pointF.x;
        float f11 = pointF.y;
        PointF pointF2 = this.f72152i;
        canvas.drawLine(f10, f11, pointF2.x, pointF2.y, this.f72148e);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float interpolatedTime, Transformation t10) {
        float f10 = this.f72149f;
        c(f10 + ((this.f72150g - f10) * interpolatedTime));
    }

    public void b(int horizontalRandomness) {
        this.f72146c = (-new Random().nextInt(horizontalRandomness)) + horizontalRandomness;
    }

    public void c(float alpha) {
        this.f72148e.setAlpha((int) (alpha * 255.0f));
    }

    public void d(int color) {
        this.f72148e.setColor(color);
    }

    public void e(int width) {
        this.f72148e.setStrokeWidth(width);
    }

    public void f(float fromAlpha, float toAlpha) {
        this.f72149f = fromAlpha;
        this.f72150g = toAlpha;
        super.start();
    }
}
