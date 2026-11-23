package com.sigmob.sdk.base.views;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class af extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f79867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RectF f79868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f79869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f79870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f79871f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f79872g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f79873h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PointF f79874i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Path f79875j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f79876k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f79877l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f79878m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f79879n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f79880o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f79881p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private PointF f79882q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f79883r;

    public af(Context context) {
        super(context);
        this.f79870e = 0.0f;
        this.f79871f = 1.0f;
    }

    private void a() {
        Paint paint = new Paint(1);
        this.f79866a = paint;
        paint.setColor(-1);
        this.f79866a.setStyle(Paint.Style.STROKE);
        float fDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f79871f = fDipsToIntPixels;
        this.f79866a.setStrokeWidth((this.f79877l / (100.0f * fDipsToIntPixels)) * 3.0f * fDipsToIntPixels);
        Paint paint2 = new Paint(1);
        this.f79867b = paint2;
        paint2.setColor(Color.parseColor("#B7B7B7"));
        this.f79867b.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f79872g = paint3;
        paint3.setColor(-1);
        this.f79872g.setStyle(Paint.Style.FILL);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, getContext());
        int i10 = this.f79877l;
        this.f79883r = (i10 * 1.0f) / iDipsToIntPixels;
        this.f79873h = i10 * 0.1f;
        this.f79868c = new RectF();
        this.f79869d = new RectF();
        float f10 = this.f79877l * 0.2f;
        this.f79874i = new PointF(getWidth() / 2.0f, f10);
        this.f79882q = new PointF(getWidth() / 2.0f, f10 + this.f79873h);
        this.f79875j = new Path();
        Paint paint4 = new Paint(1);
        this.f79876k = paint4;
        paint4.setStyle(Paint.Style.FILL);
        this.f79876k.setColor(-1);
        float f11 = this.f79877l * 0.3f;
        this.f79879n = f11;
        this.f79880o = f11 * 0.9f;
        this.f79881p = this.f79871f * 2.0f;
    }

    private void b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.af.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                af.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(2);
        valueAnimatorOfFloat.setDuration(2000L);
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f10;
        super.onDraw(canvas);
        if (this.f79866a == null) {
            return;
        }
        this.f79875j.reset();
        a(this.f79875j, this.f79874i);
        canvas.drawPath(this.f79875j, this.f79876k);
        this.f79875j.reset();
        a(this.f79875j, this.f79882q);
        canvas.drawPath(this.f79875j, this.f79876k);
        int i10 = this.f79877l;
        float f11 = this.f79878m;
        float f12 = this.f79880o;
        float f13 = (f11 - f12) / 2.0f;
        float f14 = this.f79879n;
        float f15 = (i10 - f14) - (i10 * 0.2f);
        RectF rectF = this.f79868c;
        float f16 = this.f79881p;
        rectF.set(f13 + f16, f15, (f12 + f13) - f16, f14 + f15 + this.f79871f);
        RectF rectF2 = this.f79868c;
        float f17 = this.f79881p;
        canvas.drawRoundRect(rectF2, f17, f17, this.f79866a);
        float f18 = this.f79870e;
        if (f18 > 0.98f) {
            f10 = this.f79871f;
        } else {
            f10 = this.f79871f + ((1.0f - f18) * this.f79879n);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onDraw: ");
        sb2.append(f10);
        float f19 = f10 + f15;
        float f20 = this.f79868c.bottom;
        float f21 = this.f79871f;
        if (f19 >= f20 - f21) {
            f19 = f20 - f21;
        }
        this.f79869d.set(this.f79881p + f13, f19, (f13 + this.f79880o) - (f21 * 2.0f), f20);
        canvas.drawRect(this.f79869d, this.f79867b);
        float fMin = Math.min(this.f79883r * Dips.dipsToIntPixels(3.0f, getContext()), this.f79871f * 2.0f);
        float f22 = this.f79880o;
        float f23 = f22 > 0.0f ? f22 / 5.0f : this.f79871f * 3.0f;
        float f24 = (this.f79878m - f23) / 2.0f;
        float f25 = this.f79879n;
        float f26 = (f15 + f25) - (f25 / 4.0f);
        canvas.drawRect(f24, f26, f24 + f23, f26 + fMin, this.f79872g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f79877l = h10;
        this.f79878m = w10;
        a();
    }

    public af(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79870e = 0.0f;
        this.f79871f = 1.0f;
    }

    public void a(float absoluteZ) {
        if (this.f79876k == null) {
            return;
        }
        float fMax = Math.max(0.0f, absoluteZ);
        this.f79870e = fMax;
        float fMin = Math.min(1.0f, fMax);
        this.f79870e = fMin;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationX", fMin * 40.0f, absoluteZ * 40.0f);
        objectAnimatorOfFloat.setDuration(50L);
        objectAnimatorOfFloat.start();
        this.f79876k.setAlpha((int) (this.f79870e * 255.0f));
        invalidate();
    }

    public af(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79870e = 0.0f;
        this.f79871f = 1.0f;
    }

    private void a(Path path, PointF point) {
        float fTan = (float) (((double) point.x) - (((double) this.f79873h) * Math.tan(0.7853981633974483d)));
        float f10 = point.y;
        float f11 = this.f79873h;
        float f12 = f10 + f11;
        float fTan2 = (float) (((double) point.x) + (((double) f11) * Math.tan(0.7853981633974483d)));
        float f13 = point.y + this.f79873h;
        path.moveTo(fTan, f12);
        path.lineTo(point.x, point.y);
        path.lineTo(fTan2, f13);
        path.lineTo(point.x, point.y + (this.f79873h / 2.0f));
        path.close();
    }
}
