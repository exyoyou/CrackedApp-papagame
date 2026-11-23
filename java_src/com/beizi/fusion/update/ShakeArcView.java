package com.beizi.fusion.update;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.beizi.fusion.tool.ac;

/* JADX INFO: loaded from: classes6.dex */
public class ShakeArcView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f10691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f10692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f10693f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f10694g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10696i;

    public ShakeArcView(Context context) {
        this(context, null);
    }

    private void a() {
        Paint paint = new Paint();
        this.f10691d = paint;
        paint.setAntiAlias(true);
        this.f10691d.setDither(true);
        this.f10691d.setStrokeWidth(this.f10690c);
        this.f10691d.setColor(this.f10688a);
        this.f10691d.setStyle(Paint.Style.STROKE);
        this.f10691d.setStrokeCap(Paint.Cap.ROUND);
    }

    private void b() {
        Paint paint = new Paint();
        this.f10692e = paint;
        paint.setAntiAlias(true);
        this.f10692e.setDither(true);
        this.f10692e.setStrokeWidth(this.f10690c);
        this.f10692e.setColor(this.f10689b);
        this.f10692e.setStyle(Paint.Style.STROKE);
        this.f10692e.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            int i10 = this.f10690c;
            RectF rectF = new RectF(i10 / 2, i10 / 2, getWidth() - (this.f10690c / 2), getHeight() - (this.f10690c / 2));
            canvas.drawArc(rectF, 215.0f, 110.0f, false, this.f10691d);
            double d10 = this.f10694g;
            if (d10 >= 0.0d) {
                double d11 = this.f10693f;
                if (d11 > 0.0d) {
                    if (d10 >= d11) {
                        this.f10694g = d11;
                    }
                    float f10 = (float) (((double) ((float) this.f10694g)) / d11);
                    ac.c("sweepAngle", "sweepAngle:" + f10 + ",mMaxProgress:" + this.f10693f + ",mCurrentProgress:" + this.f10694g);
                    int i11 = this.f10695h;
                    if (i11 == 1) {
                        canvas.drawArc(rectF, 215.0f, f10 * 110.0f, false, this.f10692e);
                    } else if (i11 == 2) {
                        canvas.drawArc(rectF, 325.0f, (-f10) * 110.0f, false, this.f10692e);
                    } else {
                        canvas.drawArc(rectF, 270.0f, (-f10) * 55.0f, false, this.f10692e);
                        canvas.drawArc(rectF, 270.0f, f10 * 55.0f, false, this.f10692e);
                    }
                }
            }
            int color = Color.parseColor("#CACCCA");
            if (this.f10694g == this.f10693f) {
                color = Color.parseColor("#FFFFFF");
            }
            int i12 = color;
            int width = getWidth();
            int height = getHeight();
            int iMin = (Math.min(width, height) / 2) + (this.f10690c * this.f10696i);
            int i13 = width / 2;
            int i14 = height / 2;
            float fCos = (float) Math.cos(Math.toRadians(45.0d));
            int i15 = this.f10695h;
            if (i15 == 1) {
                double d12 = ((double) i13) * 1.5d;
                double d13 = fCos * iMin;
                float f11 = (float) ((0.4d * d13) + d12);
                double d14 = d13 * 0.2d;
                float f12 = i14 / 2;
                a(canvas, true, f11, (float) (((double) (i14 / 2)) - d14), (float) (d12 + d14), f12, f11, f12, i12);
                return;
            }
            if (i15 == 2) {
                double d15 = fCos * iMin;
                float f13 = (float) (((double) (i13 / 2)) - (0.4d * d15));
                double d16 = d15 * 0.2d;
                float f14 = i14 / 2;
                a(canvas, true, f13, (float) (((double) (i14 / 2)) - d16), (float) (((double) (i13 / 2)) - d16), f14, f13, f14, i12);
                return;
            }
            double d17 = fCos * iMin;
            double d18 = d17 * 0.4d;
            float f15 = (float) (((double) (i13 / 2)) - d18);
            double d19 = d17 * 0.2d;
            float f16 = i14 / 2;
            a(canvas, true, f15, (float) (((double) (i14 / 2)) - d19), (float) (((double) (i13 / 2)) - d19), f16, f15, f16, i12);
            double d20 = ((double) i13) * 1.5d;
            float f17 = (float) (d20 + d18);
            float f18 = i14 / 2;
            a(canvas, true, f17, (float) (((double) (i14 / 2)) - d19), (float) (d20 + d19), f18, f17, f18, i12);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10) + (this.f10690c * 2);
        int size2 = View.MeasureSpec.getSize(i11) + (this.f10690c * 2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    public ShakeArcView setArrowDirection(int i10) {
        this.f10695h = i10;
        return this;
    }

    public ShakeArcView setCurrentProgress(double d10) {
        this.f10694g = d10 * 100.0d;
        invalidate();
        return this;
    }

    public void setLineRadius(int i10) {
        this.f10696i = i10;
    }

    public void setLineWidth(int i10) {
        try {
            this.f10690c = i10;
            Paint paint = this.f10691d;
            if (paint != null) {
                paint.setStrokeWidth(i10);
            }
            Paint paint2 = this.f10692e;
            if (paint2 != null) {
                paint2.setStrokeWidth(this.f10690c);
            }
        } catch (Exception unused) {
        }
    }

    public ShakeArcView setMaxProgress(double d10) {
        this.f10693f = d10 * 100.0d;
        return this;
    }

    public ShakeArcView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShakeArcView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10688a = Color.parseColor("#CACCCA");
        this.f10689b = Color.parseColor("#FFFFFF");
        this.f10690c = 6;
        this.f10693f = -1.0d;
        this.f10694g = -1.0d;
        this.f10695h = 0;
        this.f10696i = 2;
        a();
        b();
    }

    private void a(Canvas canvas, boolean z10, float f10, float f11, float f12, float f13, float f14, float f15, int i10) {
        try {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(i10);
            if (z10) {
                paint.setStyle(Paint.Style.FILL);
            } else {
                paint.setStyle(Paint.Style.STROKE);
            }
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            path.lineTo(f14, f15);
            path.lineTo(f10, f11);
            path.close();
            canvas.drawPath(path, paint);
        } catch (Exception unused) {
        }
    }
}
