package ru.noties.scrollable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class ScrollableLayout extends FrameLayout {
    private static final long M = 200;
    private static final int N = 100;
    private static final float O = 0.0565f;
    private boolean A;
    private ViewTreeObserver.OnGlobalLayoutListener B;
    private int C;
    private boolean D;
    private l E;
    private int F;
    private View G;
    private ValueAnimator H;
    private ValueAnimator.AnimatorUpdateListener I;
    private boolean J;
    private final Runnable K;
    private final Runnable L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f96887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<k> f96888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f96889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GestureDetector f96890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private GestureDetector f96891f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ru.noties.scrollable.b f96892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f96893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f96894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f96895j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private g f96896k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ru.noties.scrollable.c f96897l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f96898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f96899n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f96900o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f96901p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f96902q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ru.noties.scrollable.e f96903r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ru.noties.scrollable.d f96904s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f96905t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f96906u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f96907v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f96908w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f96909x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f96910y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ru.noties.scrollable.j f96911z;

    class a implements h {
        a() {
        }

        @Override // ru.noties.scrollable.ScrollableLayout.h
        public void a(MotionEvent event) {
            ScrollableLayout.super.dispatchTouchEvent(event);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f96915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f96916c;

        b(final int val$startY, final int val$diff) {
            this.f96915b = val$startY;
            this.f96916c = val$diff;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            ScrollableLayout.this.scrollTo(0, (int) (this.f96915b + (this.f96916c * animation.getAnimatedFraction()) + 0.5f));
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f96918b;

        c(final View val$view) {
            this.f96918b = val$view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ScrollableLayout.this.f96893h = this.f96918b.getMeasuredHeight();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zC = ScrollableLayout.this.f96889d.c();
            ScrollableLayout.this.f96901p = zC;
            if (zC) {
                int iF = ScrollableLayout.this.f96889d.f();
                if (iF - ScrollableLayout.this.getScrollY() != 0) {
                    ScrollableLayout.this.scrollTo(0, iF);
                }
                ScrollableLayout.this.post(this);
            }
        }
    }

    class e implements Runnable {

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f96922b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f96923c;

            a(final int val$nowY, final int val$diff) {
                this.f96922b = val$nowY;
                this.f96923c = val$diff;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                ScrollableLayout.this.scrollTo(0, (int) (this.f96922b + (this.f96923c * animation.getAnimatedFraction()) + 0.5f));
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int scrollY;
            long jA;
            ScrollableLayout.this.z(false);
            if (ScrollableLayout.this.f96900o || ScrollableLayout.this.f96901p || (scrollY = ScrollableLayout.this.getScrollY()) == 0 || scrollY == ScrollableLayout.this.f96893h) {
                return;
            }
            ru.noties.scrollable.c cVar = ScrollableLayout.this.f96897l;
            ScrollableLayout scrollableLayout = ScrollableLayout.this;
            int iB = cVar.b(scrollableLayout, scrollY, scrollableLayout.f96893h);
            if (scrollY == iB) {
                return;
            }
            if (ScrollableLayout.this.f96898m == null) {
                ScrollableLayout.this.f96898m = ValueAnimator.ofFloat(0.0f, 1.0f);
                ScrollableLayout.this.f96898m.setEvaluator(new FloatEvaluator());
                ScrollableLayout.this.f96898m.addListener(new j(ScrollableLayout.this, null));
            } else {
                if (ScrollableLayout.this.f96899n != null) {
                    ScrollableLayout.this.f96898m.removeUpdateListener(ScrollableLayout.this.f96899n);
                }
                if (ScrollableLayout.this.f96898m.isRunning()) {
                    ScrollableLayout.this.f96898m.end();
                }
            }
            ScrollableLayout.this.f96899n = new a(scrollY, iB - scrollY);
            ScrollableLayout.this.f96898m.addUpdateListener(ScrollableLayout.this.f96899n);
            if (ScrollableLayout.this.f96903r != null) {
                ru.noties.scrollable.e eVar = ScrollableLayout.this.f96903r;
                ScrollableLayout scrollableLayout2 = ScrollableLayout.this;
                jA = eVar.a(scrollableLayout2, scrollY, iB, scrollableLayout2.f96893h);
            } else {
                jA = 200;
            }
            ScrollableLayout.this.f96898m.setDuration(jA);
            if (ScrollableLayout.this.f96904s != null) {
                ScrollableLayout.this.f96904s.a(ScrollableLayout.this.f96898m);
            }
            ScrollableLayout.this.f96898m.start();
        }
    }

    private class f extends ru.noties.scrollable.h {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f96925e = 12;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f96926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f96927c;

        f(Context context) {
            this.f96926b = ru.noties.scrollable.g.a(context, 12);
            this.f96927c = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        }

        @Override // ru.noties.scrollable.h, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            int scrollY;
            if (Math.abs(velocityY) < this.f96927c || Math.abs(velocityX) > Math.abs(velocityY) || (scrollY = ScrollableLayout.this.getScrollY()) < 0 || scrollY > ScrollableLayout.this.f96893h) {
                return false;
            }
            int i10 = -((int) (0.5f + velocityY));
            if (!ScrollableLayout.this.f96906u && ScrollableLayout.this.f96911z != null && ScrollableLayout.this.f96893h != ScrollableLayout.this.getScrollY() && i10 > 0 && ScrollableLayout.this.f96892g != null && ScrollableLayout.this.f96892g.i(1)) {
                ScrollableLayout.this.f96889d.d(0, scrollY, 0, i10, 0, 0, 0, Integer.MAX_VALUE);
                ScrollableLayout.this.f96911z.C(ScrollableLayout.this.f96889d.h() - ScrollableLayout.this.f96893h, ScrollableLayout.this.f96889d.k(velocityY));
                ScrollableLayout.this.f96889d.a();
            }
            ScrollableLayout.this.f96889d.d(0, scrollY, 0, i10, 0, 0, 0, ScrollableLayout.this.f96893h);
            if (!ScrollableLayout.this.f96889d.c()) {
                return false;
            }
            int iH = ScrollableLayout.this.f96889d.h();
            if (Math.abs(scrollY - iH) < this.f96926b) {
                ScrollableLayout.this.f96889d.a();
                return false;
            }
            if (iH != scrollY && ScrollableLayout.this.f96897l != null) {
                ru.noties.scrollable.c cVar = ScrollableLayout.this.f96897l;
                ScrollableLayout scrollableLayout = ScrollableLayout.this;
                iH = cVar.a(scrollableLayout, iH - scrollY < 0, scrollY, iH, scrollableLayout.f96893h);
                ScrollableLayout.this.f96889d.l(iH);
            }
            return iH != scrollY && ScrollableLayout.this.B(iH) >= 0;
        }
    }

    private static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h f96929a;

        g(h callback) {
            this.f96929a = callback;
        }

        void a(MotionEvent event, int action) {
            int action2 = event.getAction();
            event.setAction(action);
            this.f96929a.a(event);
            event.setAction(action2);
        }
    }

    private interface h {
        void a(MotionEvent event);
    }

    private class j extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f96932b;

        private j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            ScrollableLayout.this.f96900o = this.f96932b;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            ScrollableLayout.this.f96900o = this.f96932b;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            this.f96932b = ScrollableLayout.this.f96900o;
            ScrollableLayout.this.f96900o = true;
        }

        /* synthetic */ j(ScrollableLayout scrollableLayout, a aVar) {
            this();
        }
    }

    public ScrollableLayout(Context context) {
        super(context);
        this.f96887b = new Rect();
        this.f96888c = new ArrayList(3);
        this.K = new d();
        this.L = new e();
        C(context, null);
    }

    private void A() {
        l lVar = this.E;
        if (lVar != null && this.D) {
            lVar.c(this);
        }
        this.D = false;
    }

    private void C(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollableLayout);
        try {
            a aVar = null;
            this.f96889d = D(context, null, typedArrayObtainStyledAttributes.getBoolean(8, false));
            setFriction(typedArrayObtainStyledAttributes.getFloat(6, O));
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
            this.f96893h = dimensionPixelSize;
            this.A = typedArrayObtainStyledAttributes.getBoolean(0, dimensionPixelSize == 0);
            this.C = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            setConsiderIdleMillis(typedArrayObtainStyledAttributes.getInteger(4, 100));
            if (typedArrayObtainStyledAttributes.getBoolean(5, false)) {
                setCloseUpAlgorithm(new ru.noties.scrollable.f());
            }
            int integer = typedArrayObtainStyledAttributes.getInteger(2, -1);
            if (integer != -1) {
                setCloseUpIdleAnimationTime(new o(integer));
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0);
            if (resourceId != 0) {
                setCloseAnimatorConfigurator(new ru.noties.scrollable.i(AnimationUtils.loadInterpolator(context, resourceId)));
            }
            this.F = typedArrayObtainStyledAttributes.getResourceId(9, 0);
            typedArrayObtainStyledAttributes.recycle();
            this.f96890e = new GestureDetector(context, new i(this, aVar));
            this.f96891f = new GestureDetector(context, new f(context));
            this.f96896k = new g(new a());
            this.f96910y = ViewConfiguration.get(context).getScaledTouchSlop();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private boolean y(int direction) {
        View view = this.G;
        return view != null && view.canScrollVertically(direction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(boolean removeCallbacks) {
        if (removeCallbacks) {
            removeCallbacks(this.L);
        }
        ValueAnimator valueAnimator = this.f96898m;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f96899n;
        if (animatorUpdateListener != null) {
            this.f96898m.removeUpdateListener(animatorUpdateListener);
        }
        this.f96898m.end();
    }

    protected int B(int y10) {
        int scrollY = getScrollY();
        if (scrollY == y10) {
            return -1;
        }
        int i10 = y10 - scrollY;
        boolean z10 = i10 < 0;
        ru.noties.scrollable.b bVar = this.f96892g;
        if (bVar != null) {
            if (z10) {
                if (!this.f96906u && !this.f96900o && bVar.i(i10)) {
                    return -1;
                }
            } else if ((!this.f96906u && !this.f96900o && y(i10)) || (scrollY == this.f96893h && !this.f96892g.i(i10))) {
                return -1;
            }
        }
        if (y10 < 0) {
            return 0;
        }
        int i11 = this.f96893h;
        return y10 > i11 ? i11 : y10;
    }

    protected n D(Context context, Interpolator interpolator, boolean flywheel) {
        return new n(context, interpolator, flywheel);
    }

    public boolean E() {
        return this.A;
    }

    public boolean F() {
        return this.f96900o;
    }

    protected void G(boolean autoMaxScroll) {
        if (getChildCount() == 0) {
            return;
        }
        int i10 = this.C;
        View viewFindViewById = i10 != 0 ? findViewById(i10) : getChildAt(0);
        if (viewFindViewById == null) {
            return;
        }
        if (autoMaxScroll) {
            if (this.B == null) {
                this.B = new c(viewFindViewById);
                viewFindViewById.getViewTreeObserver().addOnGlobalLayoutListener(this.B);
                return;
            }
            return;
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.B;
        if (onGlobalLayoutListener != null) {
            p.a(viewFindViewById, onGlobalLayoutListener);
            this.B = null;
        }
    }

    public void H(k listener) {
        if (listener != null) {
            this.f96888c.remove(listener);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int direction) {
        return false;
    }

    @Override // android.view.View
    public boolean canScrollVertically(int direction) {
        ru.noties.scrollable.b bVar;
        boolean z10 = getScrollY() > 0;
        if (direction >= 0 || !z10) {
            return direction > 0 && (bVar = this.f96892g) != null && bVar.i(direction);
        }
        return true;
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return this.f96893h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (this.f96900o) {
            this.f96902q = false;
            this.f96906u = false;
            this.f96894i = false;
            this.f96895j = false;
            this.D = false;
            removeCallbacks(this.L);
            removeCallbacks(this.K);
            return super.dispatchTouchEvent(event);
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.f96902q = true;
            this.f96889d.a();
            View view = this.f96905t;
            if (view == null || !view.getGlobalVisibleRect(this.f96887b)) {
                this.f96906u = false;
            } else {
                this.f96906u = this.f96887b.contains((int) (event.getRawX() + 0.5f), (int) (event.getRawY() + 0.5f));
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f96902q = false;
            if (this.f96897l != null) {
                removeCallbacks(this.L);
                postDelayed(this.L, this.f96907v);
            }
            if (this.f96908w) {
                if (actionMasked == 1 && Float.compare(Math.abs(event.getRawY() - this.f96909x), this.f96910y) < 0) {
                    event.setAction(3);
                }
                this.f96908w = false;
            }
            A();
        }
        boolean z10 = this.f96894i;
        boolean z11 = this.f96895j;
        this.f96895j = this.f96891f.onTouchEvent(event);
        this.f96894i = this.f96890e.onTouchEvent(event);
        removeCallbacks(this.K);
        post(this.K);
        boolean z12 = this.f96894i || this.f96895j;
        boolean z13 = z10 || z11;
        boolean z14 = actionMasked == 2 && !z12 && z13 && getScrollY() == this.f96893h;
        if (z12 || z13) {
            this.f96896k.a(event, 3);
            if (!z13) {
                return true;
            }
        }
        if (z14) {
            this.f96896k.a(event, 0);
            this.f96909x = event.getRawY();
            this.f96908w = true;
        }
        super.dispatchTouchEvent(event);
        return true;
    }

    public long getConsiderIdleMillis() {
        return this.f96907v;
    }

    public int getMaxScrollY() {
        return this.f96893h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.H;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.H.cancel();
        }
        ValueAnimator valueAnimator2 = this.f96898m;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.f96898m.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        View childAt;
        super.onFinishInflate();
        if (this.A) {
            G(true);
        }
        int i10 = this.F;
        if (i10 != 0) {
            childAt = findViewById(i10);
        } else {
            childAt = getChildCount() > 0 ? getChildAt(0) : null;
        }
        this.G = childAt;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int childCount = getChildCount();
        if (childCount > 0) {
            int measuredHeight = 0;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                childAt.layout(left, measuredHeight, right, childAt.getMeasuredHeight() + measuredHeight);
                measuredHeight += childAt.getMeasuredHeight();
            }
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof ScrollableLayoutSavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        ScrollableLayoutSavedState scrollableLayoutSavedState = (ScrollableLayoutSavedState) state;
        super.onRestoreInstanceState(scrollableLayoutSavedState.getSuperState());
        setScrollY(scrollableLayoutSavedState.f96912b);
        boolean z10 = scrollableLayoutSavedState.f96913c;
        this.A = z10;
        G(z10);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ScrollableLayoutSavedState scrollableLayoutSavedState = new ScrollableLayoutSavedState(super.onSaveInstanceState());
        scrollableLayoutSavedState.f96912b = getScrollY();
        scrollableLayoutSavedState.f96913c = this.A;
        return scrollableLayoutSavedState;
    }

    @Override // android.view.View
    public void onScrollChanged(int l10, int t10, int oldL, int oldT) {
        boolean z10 = t10 != oldT;
        int size = z10 ? this.f96888c.size() : 0;
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.f96888c.get(i10).a(t10, oldT, this.f96893h);
            }
        }
        if (this.f96897l != null) {
            removeCallbacks(this.L);
            if (!this.f96900o && z10 && !this.f96902q) {
                postDelayed(this.L, this.f96907v);
            }
        }
        super.onScrollChanged(l10, t10, oldL, oldT);
    }

    @Override // android.view.View
    public void scrollTo(int x10, int y10) {
        int iB = B(y10);
        if (iB < 0) {
            return;
        }
        super.scrollTo(0, iB);
    }

    public void setAutoMaxScroll(boolean autoMaxScroll) {
        this.A = autoMaxScroll;
        G(autoMaxScroll);
    }

    public void setCanScrollVerticallyDelegate(ru.noties.scrollable.b delegate) {
        this.f96892g = delegate;
    }

    public void setCloseAnimatorConfigurator(ru.noties.scrollable.d configurator) {
        this.f96904s = configurator;
    }

    public void setCloseUpAlgorithm(ru.noties.scrollable.c closeUpAlgorithm) {
        this.f96897l = closeUpAlgorithm;
    }

    public void setCloseUpIdleAnimationTime(ru.noties.scrollable.e closeUpIdleAnimationTime) {
        this.f96903r = closeUpIdleAnimationTime;
    }

    public void setConsiderIdleMillis(long millis) {
        this.f96907v = millis;
    }

    public void setDraggableView(View view) {
        this.f96905t = view;
    }

    public void setFriction(float friction) {
        this.f96889d.m(friction);
    }

    public void setIsIndex(boolean isIndex) {
        this.J = isIndex;
    }

    public void setMaxScrollY(int maxY) {
        this.f96893h = maxY;
        G(false);
    }

    public void setOnFlingOverListener(ru.noties.scrollable.j onFlingOverListener) {
        this.f96911z = onFlingOverListener;
    }

    @Deprecated
    public void setOnScrollChangedListener(k listener) {
        this.f96888c.clear();
        w(listener);
    }

    public void setOverScrollListener(l listener) {
        this.E = listener;
    }

    public void setSelfUpdateScroll(boolean value) {
        this.f96900o = value;
    }

    public void w(k listener) {
        if (listener != null) {
            this.f96888c.add(listener);
        }
    }

    public ValueAnimator x(final int scrollY) {
        ValueAnimator valueAnimator = this.H;
        if (valueAnimator == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.H = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setEvaluator(new FloatEvaluator());
            this.H.addListener(new j(this, null));
        } else {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.I;
            if (animatorUpdateListener != null) {
                valueAnimator.removeUpdateListener(animatorUpdateListener);
            }
            if (this.H.isRunning()) {
                this.H.end();
            }
        }
        if (scrollY < 0) {
            scrollY = 0;
        } else {
            int i10 = this.f96893h;
            if (scrollY > i10) {
                scrollY = i10;
            }
        }
        int scrollY2 = getScrollY();
        b bVar = new b(scrollY2, scrollY - scrollY2);
        this.I = bVar;
        this.H.addUpdateListener(bVar);
        return this.H;
    }

    private static class ScrollableLayoutSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ScrollableLayoutSavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f96912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f96913c;

        class a implements Parcelable.Creator<ScrollableLayoutSavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ScrollableLayoutSavedState createFromParcel(Parcel in2) {
                return new ScrollableLayoutSavedState(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public ScrollableLayoutSavedState[] newArray(int size) {
                return new ScrollableLayoutSavedState[size];
            }
        }

        ScrollableLayoutSavedState(Parcel source) {
            super(source);
            this.f96912b = source.readInt();
            this.f96913c = source.readByte() == 1;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f96912b);
            parcel.writeByte(this.f96913c ? (byte) 1 : (byte) 0);
        }

        ScrollableLayoutSavedState(Parcelable superState) {
            super(superState);
        }
    }

    private class i extends ru.noties.scrollable.h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f96930b;

        private i() {
            this.f96930b = ViewConfiguration.get(ScrollableLayout.this.getContext()).getScaledTouchSlop();
        }

        @Override // ru.noties.scrollable.h, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            boolean z10;
            float fAbs = Math.abs(distanceX);
            if (fAbs > Math.abs(distanceY) || fAbs > this.f96930b) {
                return false;
            }
            int scrollY = ScrollableLayout.this.getScrollY();
            int i10 = (int) (distanceY + 0.5f);
            if (ScrollableLayout.this.E == null) {
                ScrollableLayout.this.scrollTo(0, i10 + scrollY);
                return scrollY != ScrollableLayout.this.getScrollY();
            }
            byte b10 = i10 < 0 ? (byte) -1 : (byte) 1;
            if (!ScrollableLayout.this.D) {
                ScrollableLayout.this.D = scrollY == 0 && b10 == -1;
            }
            if (ScrollableLayout.this.D) {
                if (b10 != 1 || scrollY != 0) {
                    ScrollableLayout.this.E.a(ScrollableLayout.this, i10);
                } else if (ScrollableLayout.this.E.b(ScrollableLayout.this, i10)) {
                    ScrollableLayout.this.E.a(ScrollableLayout.this, i10);
                    z10 = true;
                } else {
                    ScrollableLayout.this.E.clear();
                    ScrollableLayout.this.D = false;
                }
                z10 = false;
            } else {
                z10 = false;
            }
            if (z10) {
                return true;
            }
            ScrollableLayout.this.scrollTo(0, i10 + scrollY);
            return scrollY != ScrollableLayout.this.getScrollY();
        }

        /* synthetic */ i(ScrollableLayout scrollableLayout, a aVar) {
            this();
        }
    }

    public ScrollableLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f96887b = new Rect();
        this.f96888c = new ArrayList(3);
        this.K = new d();
        this.L = new e();
        C(context, attrs);
    }

    public ScrollableLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f96887b = new Rect();
        this.f96888c = new ArrayList(3);
        this.K = new d();
        this.L = new e();
        C(context, attrs);
    }
}
