package com.join.mgps.customview.popwindow.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
public class b extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    RectF f66770e;

    public b(o6.a target) {
        super(target);
        f();
    }

    private void f() {
        RectF rectF = new RectF();
        rectF.set(this.f66766a.b());
        float f10 = rectF.left;
        int i10 = this.f66767b;
        rectF.left = f10 - i10;
        rectF.top -= i10;
        rectF.right += i10;
        rectF.bottom += i10 + this.f66769d;
        this.f66770e = rectF;
    }

    @Override // com.join.mgps.customview.popwindow.shape.a
    public void a(Canvas canvas, Paint eraser, int padding, int radius) {
        float f10 = radius;
        canvas.drawRoundRect(this.f66770e, f10, f10, eraser);
    }

    @Override // com.join.mgps.customview.popwindow.shape.a
    public int b() {
        return (int) this.f66770e.height();
    }

    @Override // com.join.mgps.customview.popwindow.shape.a
    public Point c() {
        return this.f66766a.a();
    }

    @Override // com.join.mgps.customview.popwindow.shape.a
    public boolean d(double x10, double y10) {
        return this.f66770e.contains((float) x10, (float) y10);
    }

    @Override // com.join.mgps.customview.popwindow.shape.a
    public void e() {
        f();
    }

    public b(o6.a target, int padding, int radius, int dropHeight) {
        super(target, padding, radius, dropHeight);
        f();
    }
}
