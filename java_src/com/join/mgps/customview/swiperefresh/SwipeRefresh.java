package com.join.mgps.customview.swiperefresh;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public class SwipeRefresh extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    public static final int O = 0;
    public static final int P = 1;

    @VisibleForTesting
    static final int Q = 50;

    @VisibleForTesting
    static final int R = 56;
    private static final String S = "SwipeRefresh";
    private static final int T = 255;
    private static final int U = 76;
    private static final float V = 2.0f;
    private static final int W = -1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final float f66950b1 = 0.8f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f66951f1 = 150;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f66952i1 = 300;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final int f66953l1 = 200;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final float f66954p0 = 0.5f;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final int f66955p1 = 200;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final int f66956q1 = 16777215;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final int f66957r1 = 64;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final int[] f66958v1 = {R.attr.enabled};
    int A;
    MaterialProgressDrawable B;
    private Animation C;
    private Animation D;
    private Animation E;
    private Animation F;
    private Animation G;
    boolean H;
    private int I;
    boolean J;
    private i K;
    private Animation.AnimationListener L;
    private final Animation M;
    private final Animation N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f66959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    j f66960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f66961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f66962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f66963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f66964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final NestedScrollingParentHelper f66965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final NestedScrollingChildHelper f66966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f66967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f66968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f66969l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f66970m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f66971n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f66972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f66973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f66974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f66975r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f66976s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f66977t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final DecelerateInterpolator f66978u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    CircleImageView f66979v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f66980w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f66981x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f66982y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f66983z;

    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        @SuppressLint({"NewApi"})
        public void onAnimationEnd(Animation animation) {
            j jVar;
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            if (!swipeRefresh.f66961d) {
                swipeRefresh.m();
                return;
            }
            swipeRefresh.B.setAlpha(255);
            SwipeRefresh.this.B.start();
            SwipeRefresh swipeRefresh2 = SwipeRefresh.this;
            if (swipeRefresh2.H && (jVar = swipeRefresh2.f66960c) != null) {
                jVar.onRefresh();
            }
            SwipeRefresh swipeRefresh3 = SwipeRefresh.this;
            swipeRefresh3.f66971n = swipeRefresh3.f66979v.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class b extends Animation {
        b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            SwipeRefresh.this.setAnimationProgress(interpolatedTime);
        }
    }

    class c extends Animation {
        c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            SwipeRefresh.this.setAnimationProgress(1.0f - interpolatedTime);
        }
    }

    class d extends Animation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f66987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f66988c;

        d(final int val$startingAlpha, final int val$endingAlpha) {
            this.f66987b = val$startingAlpha;
            this.f66988c = val$endingAlpha;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            MaterialProgressDrawable materialProgressDrawable = SwipeRefresh.this.B;
            int i10 = this.f66987b;
            materialProgressDrawable.setAlpha((int) (i10 + ((this.f66988c - i10) * interpolatedTime)));
        }
    }

    class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            if (swipeRefresh.f66976s) {
                return;
            }
            swipeRefresh.t(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class f extends Animation {
        f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            int iAbs = !swipeRefresh.J ? swipeRefresh.A - Math.abs(swipeRefresh.f66983z) : swipeRefresh.A;
            SwipeRefresh swipeRefresh2 = SwipeRefresh.this;
            int i10 = swipeRefresh2.f66981x;
            SwipeRefresh.this.o((i10 + ((int) ((iAbs - i10) * interpolatedTime))) - swipeRefresh2.f66979v.getTop(), false);
            SwipeRefresh.this.B.e(1.0f - interpolatedTime);
        }
    }

    class g extends Animation {
        g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            SwipeRefresh.this.k(interpolatedTime);
        }
    }

    class h extends Animation {
        h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            SwipeRefresh swipeRefresh = SwipeRefresh.this;
            float f10 = swipeRefresh.f66982y;
            swipeRefresh.setAnimationProgress(f10 + ((-f10) * interpolatedTime));
            SwipeRefresh.this.k(interpolatedTime);
        }
    }

    public interface i {
        boolean a(SwipeRefresh parent, @Nullable View child);
    }

    public interface j {
        void onRefresh();
    }

    public SwipeRefresh(Context context) {
        this(context, null);
    }

    private void a(int from, Animation.AnimationListener listener) {
        this.f66981x = from;
        this.M.reset();
        this.M.setDuration(200L);
        this.M.setInterpolator(this.f66978u);
        if (listener != null) {
            this.f66979v.setAnimationListener(listener);
        }
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(this.M);
    }

    private void b(int from, Animation.AnimationListener listener) {
        if (this.f66976s) {
            u(from, listener);
            return;
        }
        this.f66981x = from;
        this.N.reset();
        this.N.setDuration(200L);
        this.N.setInterpolator(this.f66978u);
        if (listener != null) {
            this.f66979v.setAnimationListener(listener);
        }
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(this.N);
    }

    private void d() {
        this.f66979v = new CircleImageView(getContext(), 16777215);
        MaterialProgressDrawable materialProgressDrawable = new MaterialProgressDrawable(getContext(), this);
        this.B = materialProgressDrawable;
        materialProgressDrawable.f(16777215);
        AnimationDrawable animationDrawable = (AnimationDrawable) getResources().getDrawable(com.join.android.app.mgsim.wufun.R.drawable.loading_animation1);
        this.f66979v.setImageDrawable(animationDrawable);
        animationDrawable.start();
        this.f66979v.setVisibility(8);
        addView(this.f66979v);
    }

    private void e() {
        if (this.f66959b == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (!childAt.equals(this.f66979v)) {
                    this.f66959b = childAt;
                    return;
                }
            }
        }
    }

    private void f(float overscrollTop) {
        if (overscrollTop > this.f66963f) {
            n(true, true);
            return;
        }
        this.f66961d = false;
        this.B.k(0.0f, 0.0f);
        b(this.f66971n, !this.f66976s ? new e() : null);
        this.B.m(false);
    }

    private boolean g() {
        return false;
    }

    private boolean h(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    @SuppressLint({"NewApi"})
    private void j(float overscrollTop) {
        this.B.m(true);
        float fMin = Math.min(1.0f, Math.abs(overscrollTop / this.f66963f));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(overscrollTop) - this.f66963f;
        float f10 = this.J ? this.A - this.f66983z : this.A;
        double dMax = Math.max(0.0f, Math.min(fAbs, f10 * 2.0f) / f10) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i10 = this.f66983z + ((int) ((f10 * fMin) + (f10 * fPow * 2.0f)));
        if (this.f66979v.getVisibility() != 0) {
            this.f66979v.setVisibility(0);
        }
        if (!this.f66976s) {
            ViewCompat.setScaleX(this.f66979v, 1.0f);
            ViewCompat.setScaleY(this.f66979v, 1.0f);
        }
        if (this.f66976s) {
            setAnimationProgress(Math.min(1.0f, overscrollTop / this.f66963f));
        }
        if (overscrollTop < this.f66963f) {
            if (this.B.getAlpha() > 76 && !h(this.E)) {
                s();
            }
        } else if (this.B.getAlpha() < 255 && !h(this.F)) {
            r();
        }
        this.B.k(0.0f, Math.min(f66950b1, fMax * f66950b1));
        this.B.e(Math.min(1.0f, fMax));
        this.B.h((((fMax * 0.4f) - 0.25f) + (fPow * 2.0f)) * 0.5f);
        o(i10 - this.f66971n, true);
    }

    private void l(MotionEvent ev) {
        int actionIndex = MotionEventCompat.getActionIndex(ev);
        if (ev.getPointerId(actionIndex) == this.f66975r) {
            this.f66975r = ev.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private void n(boolean refreshing, final boolean notify) {
        if (this.f66961d != refreshing) {
            this.H = notify;
            e();
            this.f66961d = refreshing;
            if (refreshing) {
                a(this.f66971n, this.L);
            } else {
                t(this.L);
            }
        }
    }

    @SuppressLint({"NewApi"})
    private Animation p(final int startingAlpha, final int endingAlpha) {
        if (this.f66976s && g()) {
            return null;
        }
        d dVar = new d(startingAlpha, endingAlpha);
        dVar.setDuration(300L);
        this.f66979v.setAnimationListener(null);
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(dVar);
        return dVar;
    }

    @SuppressLint({"NewApi"})
    private void q(float y10) {
        float f10 = this.f66973p;
        float f11 = y10 - f10;
        int i10 = this.f66962e;
        if (f11 <= i10 || this.f66974q) {
            return;
        }
        this.f66972o = f10 + i10;
        this.f66974q = true;
        this.B.setAlpha(76);
    }

    @SuppressLint({"NewApi"})
    private void r() {
        this.F = p(this.B.getAlpha(), 255);
    }

    @SuppressLint({"NewApi"})
    private void s() {
        this.E = p(this.B.getAlpha(), 76);
    }

    @SuppressLint({"NewApi"})
    private void setColorViewAlpha(int targetAlpha) {
        this.f66979v.getBackground().setAlpha(targetAlpha);
        this.B.setAlpha(targetAlpha);
    }

    @SuppressLint({"NewApi"})
    private void u(int from, Animation.AnimationListener listener) {
        this.f66981x = from;
        if (g()) {
            this.f66982y = this.B.getAlpha();
        } else {
            this.f66982y = ViewCompat.getScaleX(this.f66979v);
        }
        h hVar = new h();
        this.G = hVar;
        hVar.setDuration(150L);
        if (listener != null) {
            this.f66979v.setAnimationListener(listener);
        }
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(this.G);
    }

    @SuppressLint({"NewApi"})
    private void v(Animation.AnimationListener listener) {
        this.f66979v.setVisibility(0);
        this.B.setAlpha(255);
        b bVar = new b();
        this.C = bVar;
        bVar.setDuration(this.f66970m);
        if (listener != null) {
            this.f66979v.setAnimationListener(listener);
        }
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(this.C);
    }

    public boolean c() {
        i iVar = this.K;
        return iVar != null ? iVar.a(this, this.f66959b) : ViewCompat.canScrollVertically(this.f66959b, -1);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.f66966i.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.f66966i.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return this.f66966i.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return this.f66966i.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int childCount, int i10) {
        int i11 = this.f66980w;
        if (i11 < 0) {
            return i10;
        }
        if (i10 == childCount - 1) {
            return i11;
        }
        return i10 >= i11 ? i10 + 1 : i10;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f66965h.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.I;
    }

    public int getProgressViewEndOffset() {
        return this.A;
    }

    public int getProgressViewStartOffset() {
        return this.f66983z;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f66966i.hasNestedScrollingParent();
    }

    public boolean i() {
        return this.f66961d;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f66966i.isNestedScrollingEnabled();
    }

    void k(float interpolatedTime) {
        int i10 = this.f66981x;
        o((i10 + ((int) ((this.f66983z - i10) * interpolatedTime))) - this.f66979v.getTop(), false);
    }

    void m() {
        this.f66979v.clearAnimation();
        this.B.stop();
        this.f66979v.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f66976s) {
            setAnimationProgress(0.0f);
        } else {
            o(this.f66983z - this.f66971n, true);
        }
        this.f66971n = this.f66979v.getTop();
    }

    void o(int offset, boolean requiresUpdate) {
        this.f66979v.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f66979v, offset);
        this.f66971n = this.f66979v.getTop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0051  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int iFindPointerIndex;
        e();
        int actionMasked = MotionEventCompat.getActionMasked(ev);
        if (this.f66977t && actionMasked == 0) {
            this.f66977t = false;
        }
        if (!isEnabled() || this.f66977t || c() || this.f66961d || this.f66969l) {
            return false;
        }
        if (actionMasked == 0) {
            o(this.f66983z - this.f66979v.getTop(), true);
            int pointerId = ev.getPointerId(0);
            this.f66975r = pointerId;
            this.f66974q = false;
            int iFindPointerIndex2 = ev.findPointerIndex(pointerId);
            if (iFindPointerIndex2 < 0) {
                return false;
            }
            this.f66973p = ev.getY(iFindPointerIndex2);
        } else if (actionMasked == 1) {
            this.f66974q = false;
            this.f66975r = -1;
        } else if (actionMasked == 2) {
            int i10 = this.f66975r;
            if (i10 == -1 || (iFindPointerIndex = ev.findPointerIndex(i10)) < 0) {
                return false;
            }
            q(ev.getY(iFindPointerIndex));
        } else if (actionMasked == 3) {
            this.f66974q = false;
            this.f66975r = -1;
        } else if (actionMasked == 6) {
            l(ev);
        }
        return this.f66974q;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f66959b == null) {
            e();
        }
        View view = this.f66959b;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f66979v.getMeasuredWidth();
        int measuredHeight2 = this.f66979v.getMeasuredHeight();
        int i10 = measuredWidth / 2;
        int i11 = measuredWidth2 / 2;
        int i12 = this.f66971n;
        this.f66979v.layout(i10 - i11, i12, i10 + i11, measuredHeight2 + i12);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.f66959b == null) {
            e();
        }
        View view = this.f66959b;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f66979v.measure(View.MeasureSpec.makeMeasureSpec(this.I, 1073741824), View.MeasureSpec.makeMeasureSpec(this.I, 1073741824));
        this.f66980w = -1;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if (getChildAt(i10) == this.f66979v) {
                this.f66980w = i10;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        return dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        if (dy > 0) {
            float f10 = this.f66964g;
            if (f10 > 0.0f) {
                float f11 = dy;
                if (f11 > f10) {
                    consumed[1] = dy - ((int) f10);
                    this.f66964g = 0.0f;
                } else {
                    this.f66964g = f10 - f11;
                    consumed[1] = dy;
                }
                j(this.f66964g);
            }
        }
        if (this.J && dy > 0 && this.f66964g == 0.0f && Math.abs(dy - consumed[1]) > 0) {
            this.f66979v.setVisibility(8);
        }
        int[] iArr = this.f66967j;
        if (dispatchNestedPreScroll(dx - consumed[0], dy - consumed[1], iArr, null)) {
            consumed[0] = consumed[0] + iArr[0];
            consumed[1] = consumed[1] + iArr[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(final View target, final int dxConsumed, final int dyConsumed, final int dxUnconsumed, final int dyUnconsumed) {
        dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, this.f66968k);
        int i10 = dyUnconsumed + this.f66968k[1];
        if (i10 >= 0 || c()) {
            return;
        }
        float fAbs = this.f66964g + Math.abs(i10);
        this.f66964g = fAbs;
        j(fAbs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View child, View target, int axes) {
        this.f66965h.onNestedScrollAccepted(child, target, axes);
        startNestedScroll(axes & 2);
        this.f66964g = 0.0f;
        this.f66969l = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return (!isEnabled() || this.f66977t || this.f66961d || (nestedScrollAxes & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View target) {
        this.f66965h.onStopNestedScroll(target);
        this.f66969l = false;
        float f10 = this.f66964g;
        if (f10 > 0.0f) {
            f(f10);
            this.f66964g = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int actionMasked = MotionEventCompat.getActionMasked(ev);
        if (this.f66977t && actionMasked == 0) {
            this.f66977t = false;
        }
        if (!isEnabled() || this.f66977t || c() || this.f66961d || this.f66969l) {
            return false;
        }
        if (actionMasked == 0) {
            this.f66975r = ev.getPointerId(0);
            this.f66974q = false;
        } else {
            if (actionMasked == 1) {
                int iFindPointerIndex = ev.findPointerIndex(this.f66975r);
                if (iFindPointerIndex < 0) {
                    return false;
                }
                if (this.f66974q) {
                    float y10 = (ev.getY(iFindPointerIndex) - this.f66972o) * 0.5f;
                    this.f66974q = false;
                    f(y10);
                }
                this.f66975r = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = ev.findPointerIndex(this.f66975r);
                if (iFindPointerIndex2 < 0) {
                    return false;
                }
                float y11 = ev.getY(iFindPointerIndex2);
                q(y11);
                if (this.f66974q) {
                    float f10 = (y11 - this.f66972o) * 0.5f;
                    if (f10 <= 0.0f) {
                        return false;
                    }
                    j(f10);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = MotionEventCompat.getActionIndex(ev);
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.f66975r = ev.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    l(ev);
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean b10) {
        View view = this.f66959b;
        if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
            super.requestDisallowInterceptTouchEvent(b10);
        }
    }

    void setAnimationProgress(float progress) {
        if (g()) {
            setColorViewAlpha((int) (progress * 255.0f));
        } else {
            ViewCompat.setScaleX(this.f66979v, progress);
            ViewCompat.setScaleY(this.f66979v, progress);
        }
    }

    @Deprecated
    public void setColorScheme(@ColorInt int... colors) {
        setColorSchemeResources(colors);
    }

    public void setColorSchemeColors(@ColorInt int... colors) {
        e();
        this.B.g(colors);
    }

    public void setColorSchemeResources(@ColorRes int... colorResIds) {
        Context context = getContext();
        int[] iArr = new int[colorResIds.length];
        for (int i10 = 0; i10 < colorResIds.length; i10++) {
            iArr[i10] = ContextCompat.getColor(context, colorResIds[i10]);
        }
        setColorSchemeColors(iArr);
    }

    public void setDistanceToTriggerSync(int distance) {
        this.f66963f = distance;
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            return;
        }
        m();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.f66966i.setNestedScrollingEnabled(enabled);
    }

    public void setOnChildScrollUpCallback(@Nullable i callback) {
        this.K = callback;
    }

    public void setOnRefreshListener(j listener) {
        this.f66960c = listener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int colorRes) {
        setProgressBackgroundColorSchemeResource(colorRes);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int color) {
        this.f66979v.setBackgroundColor(color);
        this.B.f(color);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int colorRes) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), colorRes));
    }

    public void setProgressViewEndTarget(boolean scale, int end) {
        this.A = end;
        this.f66976s = scale;
        this.f66979v.invalidate();
    }

    public void setProgressViewOffset(boolean scale, int start, int end) {
        this.f66976s = scale;
        this.f66983z = start;
        this.A = end;
        this.J = true;
        m();
        this.f66961d = false;
    }

    public void setRefreshing(boolean refreshing) {
        if (!refreshing || this.f66961d == refreshing) {
            n(refreshing, false);
            return;
        }
        this.f66961d = refreshing;
        o((!this.J ? this.A + this.f66983z : this.A) - this.f66971n, true);
        this.H = false;
        v(this.L);
    }

    public void setSize(int size) {
        if (size == 0 || size == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (size == 0) {
                this.I = (int) (displayMetrics.density * 56.0f);
            } else {
                this.I = (int) (displayMetrics.density * 50.0f);
            }
            this.f66979v.setImageDrawable(null);
            this.B.o(size);
            this.f66979v.setImageDrawable(this.B);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int axes) {
        return this.f66966i.startNestedScroll(axes);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f66966i.stopNestedScroll();
    }

    void t(Animation.AnimationListener listener) {
        c cVar = new c();
        this.D = cVar;
        cVar.setDuration(150L);
        this.f66979v.setAnimationListener(listener);
        this.f66979v.clearAnimation();
        this.f66979v.startAnimation(this.D);
    }

    public SwipeRefresh(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66961d = false;
        this.f66963f = -1.0f;
        this.f66967j = new int[2];
        this.f66968k = new int[2];
        this.f66975r = -1;
        this.f66980w = -1;
        this.L = new a();
        this.M = new f();
        this.N = new g();
        this.f66962e = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f66970m = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f66978u = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.I = (int) (displayMetrics.density * 50.0f);
        d();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
        int i10 = (int) (displayMetrics.density * 64.0f);
        this.A = i10;
        this.f66963f = i10;
        this.f66965h = new NestedScrollingParentHelper(this);
        this.f66966i = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i11 = -this.I;
        this.f66971n = i11;
        this.f66983z = i11;
        k(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, f66958v1);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }
}
