package com.join.mgps.ptr.header;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.h1;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
public class DropBounceHeaderView extends PtrUIHeader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f71994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PtrFrameLayout f71995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.mgps.ptr.indicator.b f71996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AnimationDrawable f71997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Path f71998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f71999g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f72000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f72001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f72002j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RectF f72003k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f72004l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f72005m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f72006n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f72007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f72008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f72009q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f72010r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ValueAnimator f72011s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ValueAnimator f72012t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ValueAnimator f72013u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f72014v;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBounceHeaderView.this.postInvalidate();
        }
    }

    class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            DropBounceHeaderView.this.q();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            DropBounceHeaderView.this.f72008p = ((Float) animation.getAnimatedValue()).floatValue();
            ViewCompat.postInvalidateOnAnimation(DropBounceHeaderView.this);
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            DropBounceHeaderView.this.f72008p = ((Float) animation.getAnimatedValue()).floatValue();
            ViewCompat.postInvalidateOnAnimation(DropBounceHeaderView.this);
        }
    }

    public DropBounceHeaderView(Context context) {
        super(context);
        this.f71994b = "DropBounceHeaderView";
        this.f72000h = 1.0f;
        this.f72001i = 0.8f;
        this.f72002j = 100.0f;
        this.f72006n = -1;
        this.f72007o = 0;
        this.f72009q = false;
        this.f72014v = new a();
        i();
    }

    private void h(ValueAnimator animator) {
        if (animator == null || animator.getListeners() == null) {
            return;
        }
        animator.getListeners().clear();
    }

    private void i() {
        Resources resources = getResources();
        this.f72003k = new RectF();
        AnimationDrawable animationDrawable = (AnimationDrawable) resources.getDrawable(R.drawable.loading_animation1);
        this.f71997e = animationDrawable;
        setBackgroundDrawable(animationDrawable);
        this.f72002j = (this.f71997e.getIntrinsicHeight() * this.f72001i) / 2.0f;
        setLayerType(1, null);
        m();
        n();
        k();
    }

    private void j() {
    }

    private void k() {
        h(this.f72011s);
        h(this.f72010r);
        h(this.f72012t);
        h(this.f72013u);
        this.f72010r = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f72011s = ValueAnimator.ofFloat(0.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f72012t = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f72013u = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(1L);
        this.f72013u.start();
    }

    private void l() {
    }

    private void m() {
        Paint paint = new Paint();
        this.f71999g = paint;
        paint.setTextSize(22.0f);
        this.f71999g.setColor(this.f72006n);
        this.f71999g.setAntiAlias(true);
        this.f71999g.setStyle(Paint.Style.FILL);
    }

    private void n() {
        this.f71998f = new Path();
    }

    private void o() {
        this.f72007o = 1;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f);
        this.f72010r = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f72010r.addUpdateListener(this.f72014v);
        this.f72010r.setInterpolator(new DropBounceInterpolator());
        this.f72010r.setStartDelay(180L);
        this.f72010r.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 0.1f);
        this.f72011s = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(500L);
        this.f72011s.addUpdateListener(this.f72014v);
        this.f72011s.setInterpolator(new DropBounceInterpolator());
        this.f72011s.setStartDelay((long) (180 + (500 * 0.25d)));
        this.f72011s.start();
    }

    private void p() {
        j();
        this.f72009q = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) this.f72013u.getAnimatedValue()).floatValue(), 0.33333334f);
        this.f72013u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f72013u.setInterpolator(new AccelerateInterpolator());
        this.f72013u.addListener(new b());
        this.f72013u.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(((Float) this.f72011s.getAnimatedValue()).floatValue(), 0.0f);
        this.f72011s = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(200L);
        this.f72011s.setInterpolator(new AccelerateInterpolator());
        this.f72011s.start();
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(((Float) this.f72012t.getAnimatedValue()).floatValue(), (getHeight() - ((this.f72002j * 1.0f) / 3.0f)) - (TypedValue.applyDimension(1, this.f72000h, getResources().getDisplayMetrics()) / this.f72001i));
        this.f72012t = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(200L);
        this.f72012t.addUpdateListener(new c());
        this.f72012t.setInterpolator(new AccelerateInterpolator());
        this.f72012t.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.f71997e.isRunning()) {
            this.f71997e.start();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.33333334f, 1.0f);
        this.f72013u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f72013u.setInterpolator(new AccelerateInterpolator());
        this.f72013u.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(((Float) this.f72012t.getAnimatedValue()).floatValue(), (getHeight() - this.f72002j) - (TypedValue.applyDimension(1, this.f72000h, getResources().getDisplayMetrics()) / this.f72001i));
        this.f72012t = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(200L);
        this.f72012t.addUpdateListener(new d());
        this.f72012t.setInterpolator(new AccelerateInterpolator());
        this.f72012t.start();
        o();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        h1.e("DropBounceHeaderView", "onUIRefreshComplete method called.");
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
        h1.e("DropBounceHeaderView", "onUIRefreshPrepare method called.");
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        float height;
        h1.e("DropBounceHeaderView", "onUIPositionChange method called.");
        if (this.f72009q) {
            return;
        }
        float fN = this.f71996d.N();
        float fD = this.f71996d.d();
        ((Float) this.f72012t.getAnimatedValue()).floatValue();
        ((Float) this.f72013u.getAnimatedValue()).floatValue();
        ((Float) this.f72011s.getAnimatedValue()).floatValue();
        float f10 = 0.0f;
        if (fN > 0.0f && fN < 0.33333334f) {
            height = getHeight() - (fD / 2.0f);
            this.f72007o = 0;
        } else if (fN < 0.6666667f) {
            float height2 = getHeight() - (fD / 2.0f);
            f10 = (fN - 0.33333334f) * 2.0f;
            this.f72007o = 0;
            height = height2;
        } else {
            if (fN >= 1.0f) {
                p();
                return;
            }
            float f11 = (fN * 2.0f) - 0.6666667f;
            float height3 = getHeight() - (((fD * 1.0f) / 3.0f) / fN);
            f10 = (f11 - 0.33333334f) * 2.0f;
            this.f72007o = 0;
            height = height3;
            fN = f11;
        }
        this.f72013u = ValueAnimator.ofFloat(fN, fN);
        this.f72012t = ValueAnimator.ofFloat(height, height);
        this.f72011s = ValueAnimator.ofFloat(f10, f10);
        this.f72013u.start();
        this.f72012t.start();
        this.f72010r.start();
        this.f72011s.start();
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        h1.e("DropBounceHeaderView", "onUIReset method called.");
        k();
        this.f72009q = false;
        if (this.f71997e.isRunning()) {
            this.f71997e.stop();
        }
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        h1.e("DropBounceHeaderView", "onUIRefreshBegin method called.");
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f72013u;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f72013u.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.f72012t;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
            this.f72012t.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator3 = this.f72011s;
        if (valueAnimator3 != null) {
            valueAnimator3.end();
            this.f72011s.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f72010r;
        if (valueAnimator4 != null) {
            valueAnimator4.end();
            this.f72010r.removeAllUpdateListeners();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f71998f.reset();
        this.f72003k.setEmpty();
        float fFloatValue = ((Float) this.f72012t.getAnimatedValue()).floatValue();
        this.f72008p = fFloatValue;
        float f10 = this.f72005m / 2.0f;
        float fFloatValue2 = ((Float) this.f72013u.getAnimatedValue()).floatValue();
        float fFloatValue3 = ((Float) this.f72010r.getAnimatedValue()).floatValue();
        float fFloatValue4 = ((Float) this.f72011s.getAnimatedValue()).floatValue();
        float f11 = this.f72007o;
        float f12 = this.f72002j;
        float f13 = (fFloatValue3 * f11) + 1.0f;
        float f14 = (f10 - ((f12 * f13) * fFloatValue2)) + ((f12 * fFloatValue4) / 2.0f);
        float f15 = (f11 * fFloatValue4) + 1.0f;
        float f16 = (((f12 * f15) * fFloatValue2) + fFloatValue) - ((f12 * fFloatValue3) / 2.0f);
        float f17 = (f10 + ((f13 * f12) * fFloatValue2)) - ((fFloatValue4 * f12) / 2.0f);
        float f18 = (fFloatValue - ((f15 * f12) * fFloatValue2)) + ((f12 * fFloatValue3) / 2.0f);
        float fApplyDimension = TypedValue.applyDimension(1, this.f72000h, getResources().getDisplayMetrics());
        float f19 = fApplyDimension / 2.0f;
        float f20 = f14 + f19;
        float f21 = f16 + fApplyDimension;
        float f22 = f17 - f19;
        this.f72003k.set(f20, f21, f22, f18);
        this.f71998f.addOval(this.f72003k, Path.Direction.CCW);
        canvas.drawPath(this.f71998f, this.f71999g);
        if (this.f71997e.isRunning()) {
            float fApplyDimension2 = TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
            this.f71997e.setBounds((int) (f20 + fApplyDimension2), (int) (f18 + fApplyDimension2), (int) (f22 - fApplyDimension2), (int) (f21 - fApplyDimension2));
            this.f71997e.getCurrent().draw(canvas);
        } else {
            this.f71997e.setBounds(0, 0, 0, 0);
        }
        if (!this.f72011s.isRunning() && !this.f72010r.isRunning() && !this.f72013u.isRunning() && !this.f72012t.isRunning()) {
            l();
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(((int) (this.f71997e.getIntrinsicHeight() * this.f72001i)) + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        this.f72005m = w10;
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    public void setColor(int color) {
        this.f72006n = color;
        this.f71999g.setColor(color);
        invalidate();
    }

    public void setUp(PtrFrameLayout ptrFrameLayout) {
        this.f71995c = ptrFrameLayout;
        com.join.mgps.ptr.indicator.b bVar = new com.join.mgps.ptr.indicator.b();
        this.f71996d = bVar;
        this.f71995c.setPtrIndicator(bVar);
    }

    public DropBounceHeaderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f71994b = "DropBounceHeaderView";
        this.f72000h = 1.0f;
        this.f72001i = 0.8f;
        this.f72002j = 100.0f;
        this.f72006n = -1;
        this.f72007o = 0;
        this.f72009q = false;
        this.f72014v = new a();
        i();
    }

    public DropBounceHeaderView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f71994b = "DropBounceHeaderView";
        this.f72000h = 1.0f;
        this.f72001i = 0.8f;
        this.f72002j = 100.0f;
        this.f72006n = -1;
        this.f72007o = 0;
        this.f72009q = false;
        this.f72014v = new a();
        i();
    }
}
