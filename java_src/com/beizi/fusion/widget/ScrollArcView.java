package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class ScrollArcView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Path f10826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f10827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f10828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f10829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f10830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f10832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10833h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10835j;

    public ScrollArcView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10830e = 100.0f;
        this.f10831f = 0.0f;
        this.f10832g = 0.0f;
        a();
    }

    private void a() {
        float fApplyDimension = TypedValue.applyDimension(1, this.f10830e, getResources().getDisplayMetrics());
        this.f10830e = fApplyDimension;
        this.f10834i = ((int) fApplyDimension) + 10;
        Paint paint = new Paint();
        this.f10828c = paint;
        paint.setColor(Color.parseColor("#E5E5E5"));
        this.f10828c.setStyle(Paint.Style.STROKE);
        this.f10828c.setStrokeWidth(8.0f);
        this.f10828c.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f10829d = paint2;
        paint2.setColor(Color.parseColor("#000000"));
        this.f10829d.setStyle(Paint.Style.FILL);
        this.f10829d.setAntiAlias(true);
        this.f10826a = new Path();
        this.f10827b = new Path();
    }

    private void b() {
        this.f10826a.reset();
        this.f10827b.reset();
        int i10 = this.f10835j;
        if (i10 == 0) {
            c();
            return;
        }
        if (i10 == 1) {
            d();
            return;
        }
        if (i10 == 2) {
            e();
        } else if (i10 == 3) {
            f();
        } else {
            if (i10 != 4) {
                return;
            }
            g();
        }
    }

    private void c() {
        float f10 = ((this.f10830e + 10.0f) / 2.0f) + this.f10832g;
        this.f10826a.moveTo(0.0f, f10);
        Path path = this.f10826a;
        int i10 = this.f10833h;
        path.quadTo(i10 / 2.0f, f10 - this.f10830e, i10, f10);
        this.f10827b.moveTo(0.0f, f10);
        Path path2 = this.f10827b;
        int i11 = this.f10833h;
        path2.quadTo(i11 / 2.0f, f10 - this.f10830e, i11, f10);
        this.f10827b.lineTo(this.f10833h, this.f10834i);
        this.f10827b.lineTo(0.0f, this.f10834i);
        this.f10827b.close();
    }

    private void d() {
        float f10 = ((this.f10830e + 10.0f) / 2.0f) + this.f10831f;
        this.f10826a.moveTo(f10, 0.0f);
        Path path = this.f10826a;
        float f11 = this.f10830e + f10;
        int i10 = this.f10834i;
        path.quadTo(f11, i10 / 2.0f, f10, i10);
        this.f10827b.moveTo(f10, 0.0f);
        Path path2 = this.f10827b;
        float f12 = this.f10830e + f10;
        int i11 = this.f10834i;
        path2.quadTo(f12, i11 / 2.0f, f10, i11);
        this.f10827b.lineTo(0.0f, this.f10834i);
        this.f10827b.lineTo(0.0f, 0.0f);
        this.f10827b.close();
    }

    private void e() {
        float f10 = (this.f10833h - ((this.f10830e + 10.0f) / 2.0f)) - this.f10831f;
        this.f10826a.moveTo(f10, 0.0f);
        Path path = this.f10826a;
        float f11 = f10 - this.f10830e;
        int i10 = this.f10834i;
        path.quadTo(f11, i10 / 2.0f, f10, i10);
        this.f10827b.moveTo(f10, 0.0f);
        Path path2 = this.f10827b;
        float f12 = f10 - this.f10830e;
        int i11 = this.f10834i;
        path2.quadTo(f12, i11 / 2.0f, f10, i11);
        this.f10827b.lineTo(this.f10833h, this.f10834i);
        this.f10827b.lineTo(this.f10833h, 0.0f);
        this.f10827b.close();
    }

    private void f() {
        float f10 = (this.f10834i - ((this.f10830e + 10.0f) / 2.0f)) - this.f10832g;
        this.f10826a.moveTo(0.0f, f10);
        Path path = this.f10826a;
        int i10 = this.f10833h;
        path.quadTo(i10 / 2.0f, this.f10830e + f10, i10, f10);
        this.f10827b.moveTo(0.0f, f10);
        Path path2 = this.f10827b;
        int i11 = this.f10833h;
        path2.quadTo(i11 / 2.0f, this.f10830e + f10, i11, f10);
        this.f10827b.lineTo(this.f10833h, 0.0f);
        this.f10827b.lineTo(0.0f, 0.0f);
        this.f10827b.close();
    }

    private void g() {
        int i10 = this.f10833h;
        float f10 = i10 / 2.0f;
        int i11 = this.f10834i;
        float f11 = i11 / 2.0f;
        float fMin = Math.min(i10, i11) / 2.0f;
        this.f10826a.reset();
        this.f10827b.reset();
        this.f10827b.addCircle(f10, f11, fMin, Path.Direction.CW);
        this.f10826a.addCircle(f10, f11, fMin, Path.Direction.CW);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f10827b, this.f10829d);
        canvas.drawPath(this.f10826a, this.f10828c);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f10833h = i10;
        this.f10834i = i11;
        b();
    }

    public void setArcColor(int i10) {
        this.f10828c.setColor(i10);
        invalidate();
    }

    public void setArcDirection(int i10) {
        this.f10835j = i10;
        b();
        invalidate();
    }

    public void setArcHeight(int i10) {
        this.f10830e = i10;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.f10829d.setColor(i10);
        invalidate();
    }

    public void setOffset(float f10) {
        this.f10832g = TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
        b();
        invalidate();
    }

    public void setOffsetX(float f10) {
        this.f10831f = f10;
        b();
        invalidate();
    }

    public void setOffsetY(float f10) {
        this.f10832g = f10;
        b();
        invalidate();
    }

    public void setArcHeight(float f10) {
        this.f10830e = TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
        b();
        invalidate();
    }
}
