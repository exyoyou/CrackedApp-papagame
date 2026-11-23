package com.join.mgps.customview.hmfloat;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes3.dex */
public class HMBallView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f66479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f66480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Shape f66481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f66482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Shape f66483f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f66484g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ValueAnimator f66485h;

    public enum Shape {
        CIRCLE,
        SEMICIRCLE_LEFT,
        SEMICIRCLE_RIGHT
    }

    class a extends Paint {
        a() {
            setColor(Color.parseColor("#ccbfbfbf"));
            setAntiAlias(true);
        }
    }

    class b extends Paint {
        b() {
            setColor(-1728053248);
            setStyle(Paint.Style.STROKE);
            setStrokeWidth(HMBallView.this.f66484g);
            setAntiAlias(true);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animator) {
            HMBallView.this.f66482e = ((Float) animator.getAnimatedValue()).floatValue();
            HMBallView.this.invalidate();
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            HMBallView hMBallView = HMBallView.this;
            hMBallView.f66481d = hMBallView.f66483f;
            HMBallView.this.invalidate();
        }
    }

    public HMBallView(Context context) {
        super(context);
        this.f66479b = new a();
        this.f66480c = new b();
        Shape shape = Shape.CIRCLE;
        this.f66481d = shape;
        this.f66482e = 0.0f;
        this.f66483f = shape;
        this.f66484g = 6.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f66485h = valueAnimator;
        valueAnimator.setFloatValues(0.0f, 1.0f);
        this.f66485h.setDuration(500L);
        this.f66485h.setInterpolator(new DecelerateInterpolator());
        this.f66485h.addUpdateListener(new c());
        this.f66485h.addListener(new d());
        l();
    }

    private int f(float dp) {
        return (int) ((dp * getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void g(Canvas canvas, float width, float height, float radius) {
        float f10 = (width / 2.0f) * this.f66482e;
        canvas.translate(f10, 0.0f);
        float f11 = width - f10;
        canvas.drawArc(new RectF(f10, 0.0f, f11, height), 270.0f, 180.0f, false, this.f66479b);
        float f12 = this.f66484g / 2.0f;
        float f13 = height - f12;
        canvas.drawArc(new RectF(f10 + f12, f12, f11 - f12, f13), 270.0f, 180.0f, false, this.f66480c);
        canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 90.0f, 180.0f, false, this.f66479b);
        canvas.drawArc(new RectF(f12, f12, width - f12, f13), 90.0f, 180.0f, false, this.f66480c);
    }

    private void h(Canvas canvas, float width, float height, float radius) {
        float f10 = this.f66482e;
        canvas.translate(((-width) / 2.0f) * f10, 0.0f);
        float f11 = (width / 2.0f) * f10;
        float f12 = width - f11;
        canvas.drawArc(new RectF(f11, 0.0f, f12, height), 90.0f, 180.0f, false, this.f66479b);
        float f13 = this.f66484g / 2.0f;
        float f14 = height - f13;
        canvas.drawArc(new RectF(f11 + f13, f13, f12 - f13, f14), 90.0f, 180.0f, false, this.f66480c);
        canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 270.0f, 180.0f, false, this.f66479b);
        canvas.drawArc(new RectF(f13, f13, width - f13, f14), 270.0f, 180.0f, false, this.f66480c);
    }

    private void i(Canvas canvas, float width, float height, float radius) {
        canvas.translate(radius, 0.0f);
        canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 90.0f, 180.0f, true, this.f66479b);
        float f10 = this.f66484g / 2.0f;
        canvas.drawArc(new RectF(f10, f10, width - f10, height - f10), 90.0f, 180.0f, true, this.f66480c);
    }

    private void j(Canvas canvas, float width, float height, float radius) {
        canvas.translate(-radius, 0.0f);
        canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 270.0f, 180.0f, true, this.f66479b);
        float f10 = this.f66484g / 2.0f;
        canvas.drawArc(new RectF(f10, f10, width - f10, height - f10), 270.0f, 180.0f, true, this.f66480c);
    }

    private void k(Canvas canvas, float width, float height, float radius) {
        float f10 = 1.0f - this.f66482e;
        if (this.f66481d == Shape.SEMICIRCLE_RIGHT) {
            canvas.translate(((-width) / 2.0f) * f10, 0.0f);
            float f11 = (width / 2.0f) * f10;
            float f12 = width - f11;
            canvas.drawArc(new RectF(f11, 0.0f, f12, height), 90.0f, 180.0f, false, this.f66479b);
            float f13 = this.f66484g / 2.0f;
            float f14 = height - f13;
            canvas.drawArc(new RectF(f11 + f13, f13, f12 - f13, f14), 90.0f, 180.0f, false, this.f66480c);
            canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 270.0f, 180.0f, false, this.f66479b);
            canvas.drawArc(new RectF(f13, f13, width - f13, f14), 270.0f, 180.0f, false, this.f66480c);
            return;
        }
        float f15 = (width / 2.0f) * f10;
        canvas.translate(f15, 0.0f);
        float f16 = width - f15;
        canvas.drawArc(new RectF(f15, 0.0f, f16, height), 270.0f, 180.0f, false, this.f66479b);
        float f17 = this.f66484g / 2.0f;
        float f18 = height - f17;
        canvas.drawArc(new RectF(f15 + f17, f17, f16 - f17, f18), 270.0f, 180.0f, false, this.f66480c);
        canvas.drawArc(new RectF(0.0f, 0.0f, width, height), 90.0f, 180.0f, false, this.f66479b);
        canvas.drawArc(new RectF(f17, f17, width - f17, f18), 90.0f, 180.0f, false, this.f66480c);
    }

    private void l() {
        float f10 = f(4.0f);
        this.f66484g = f10;
        this.f66480c.setStrokeWidth(f10);
    }

    public void e(Shape target) {
        if (this.f66481d == target) {
            return;
        }
        this.f66481d = this.f66485h.isRunning() ? this.f66483f : this.f66481d;
        this.f66483f = target;
        if (this.f66485h.isRunning()) {
            this.f66485h.reverse();
        } else {
            this.f66485h.start();
        }
    }

    public void m() {
        this.f66485h.cancel();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        float fMin = (Math.min(width, height) / 2.0f) - (this.f66484g / 2.0f);
        Shape shape = this.f66481d;
        Shape shape2 = Shape.CIRCLE;
        if (shape == shape2 && this.f66483f == Shape.SEMICIRCLE_RIGHT) {
            h(canvas, width, height, fMin);
            return;
        }
        if (shape == shape2 && this.f66483f == Shape.SEMICIRCLE_LEFT) {
            g(canvas, width, height, fMin);
            return;
        }
        Shape shape3 = Shape.SEMICIRCLE_LEFT;
        if ((shape == shape3 || shape == Shape.SEMICIRCLE_RIGHT) && this.f66483f == shape2) {
            k(canvas, width, height, fMin);
            return;
        }
        if (shape == shape2) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            canvas.drawCircle(f10, f11, fMin, this.f66479b);
            canvas.drawCircle(f10, f11, fMin, this.f66480c);
            return;
        }
        if (shape == Shape.SEMICIRCLE_RIGHT) {
            j(canvas, width, height, fMin);
        } else if (shape == shape3) {
            i(canvas, width, height, fMin);
            canvas.translate(fMin, 0.0f);
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public HMBallView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66479b = new a();
        this.f66480c = new b();
        Shape shape = Shape.CIRCLE;
        this.f66481d = shape;
        this.f66482e = 0.0f;
        this.f66483f = shape;
        this.f66484g = 6.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f66485h = valueAnimator;
        valueAnimator.setFloatValues(0.0f, 1.0f);
        this.f66485h.setDuration(500L);
        this.f66485h.setInterpolator(new DecelerateInterpolator());
        this.f66485h.addUpdateListener(new c());
        this.f66485h.addListener(new d());
        l();
    }

    public HMBallView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66479b = new a();
        this.f66480c = new b();
        Shape shape = Shape.CIRCLE;
        this.f66481d = shape;
        this.f66482e = 0.0f;
        this.f66483f = shape;
        this.f66484g = 6.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f66485h = valueAnimator;
        valueAnimator.setFloatValues(0.0f, 1.0f);
        this.f66485h.setDuration(500L);
        this.f66485h.setInterpolator(new DecelerateInterpolator());
        this.f66485h.addUpdateListener(new c());
        this.f66485h.addListener(new d());
        l();
    }
}
