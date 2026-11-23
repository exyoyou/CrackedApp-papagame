package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class ah extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RectF f79889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f79890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f79891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f79892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f79893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79894g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f79895h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f79896i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f79897j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f79898k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f79899l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Path f79900m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AnimatorSet f79901n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f79902o;

    public ah(Context context) {
        super(context);
        this.f79888a = new Paint(1);
        this.f79900m = new Path();
        this.f79889b = new RectF();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f79898k = getWidth();
        int height = getHeight();
        this.f79899l = height;
        if (this.f79898k == 0 || height == 0) {
            return;
        }
        this.f79888a.setStyle(Paint.Style.STROKE);
        int iDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f79894g = iDipsToIntPixels;
        this.f79888a.setStrokeWidth(iDipsToIntPixels);
        this.f79888a.setColor(-1);
        this.f79893f = (int) ((this.f79898k / (this.f79894g * 75.0f)) * Dips.dipsToIntPixels(5.0f, getContext()));
        setLayerType(2, null);
        float f10 = this.f79898k;
        int i10 = this.f79894g;
        this.f79895h = Math.max((int) ((f10 / (i10 * 25.0f)) * i10 * 11.0f), i10 * 3);
        float f11 = this.f79898k;
        int i11 = this.f79894g;
        this.f79896i = Math.max((int) ((f11 / (i11 * 25.0f)) * 3.0f * i11), i11 * 2);
        float f12 = this.f79898k;
        int i12 = this.f79894g;
        this.f79897j = Math.max((int) ((f12 / (i12 * 25.0f)) * 11.0f * i12), i12 * 5);
        e();
    }

    private void e() {
        AnimatorSet animatorSet = this.f79901n;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f79901n = new AnimatorSet();
        this.f79901n.playSequentially(a(-45), a(45), getFlipLeftAnimation(), getFlipRightAnimation());
        this.f79901n.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.ah.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ah.this.f79901n == null || !ah.this.f79902o) {
                    return;
                }
                ah.this.f79901n.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.f79902o) {
            this.f79901n.start();
        }
    }

    private Animator getFlipLeftAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationY", 0.0f, 45.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.f79898k * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.d0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f80001b.b(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    private Animator getFlipRightAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationY", 0.0f, -45.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (-this.f79898k) * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.c0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f79979b.a(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f79898k == 0 || this.f79899l == 0) {
            return;
        }
        this.f79888a.setStyle(Paint.Style.STROKE);
        this.f79888a.setColor(-1);
        this.f79900m.reset();
        RectF rectF = this.f79889b;
        int i10 = this.f79894g;
        rectF.set(i10, i10, this.f79898k - i10, this.f79899l - i10);
        Path path = this.f79900m;
        RectF rectF2 = this.f79889b;
        int i11 = this.f79893f;
        path.addRoundRect(rectF2, i11, i11, Path.Direction.CCW);
        canvas.drawPath(this.f79900m, this.f79888a);
        canvas.clipPath(this.f79900m);
        this.f79888a.setStyle(Paint.Style.FILL);
        this.f79888a.setColor(-7829368);
        this.f79888a.setAlpha(204);
        canvas.drawRect(0.0f, 0.0f, this.f79898k, this.f79899l, this.f79888a);
        this.f79888a.setColor(-3355444);
        this.f79888a.setAlpha(255);
        int i12 = this.f79899l;
        canvas.drawRect(0.0f, i12 + this.f79890c, this.f79898k, i12, this.f79888a);
        float f10 = (-this.f79898k) * 0.6f;
        float f11 = this.f79891d;
        canvas.drawRect(f10 + f11, 0.0f, f11, this.f79899l, this.f79888a);
        int i13 = this.f79898k;
        float f12 = this.f79892e;
        canvas.drawRect(i13 + f12, 0.0f, (i13 * 1.6f) + f12, this.f79899l, this.f79888a);
        this.f79888a.setStyle(Paint.Style.FILL);
        int i14 = this.f79898k;
        int i15 = this.f79895h;
        int i16 = (i14 - i15) / 2;
        int i17 = this.f79899l - this.f79897j;
        float f13 = i16 + i15;
        int i18 = this.f79896i;
        canvas.drawRoundRect(i16, i17, f13, i17 + i18, i18, i18, this.f79888a);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        c();
    }

    public ah(Context context, AttributeSet attrs) {
        super(context, attrs);
        c();
    }

    private Animator a(int angle) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotation", 0.0f, angle, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (-this.f79899l) * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.e0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f80006b.c(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    private void c() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.ah.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ah.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ah.this.d();
            }
        });
    }

    public ah(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(ValueAnimator valueAnimator) {
        this.f79890c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void a() {
        this.f79902o = true;
        AnimatorSet animatorSet = this.f79901n;
        if (animatorSet == null) {
            return;
        }
        animatorSet.start();
    }

    public void b() {
        this.f79902o = false;
        AnimatorSet animatorSet = this.f79901n;
        if (animatorSet == null) {
            return;
        }
        animatorSet.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.f79892e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        this.f79891d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }
}
