package com.join.mgps.customview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class SlideBottomPanel extends FrameLayout {
    private static final String F = "SlideBottomPanel";
    private static final int G = 1;
    private static final int H = 2;
    private static final int I = -1;
    private static final int J = 60;
    private static final int K = 380;
    private static final int L = 30;
    private static final int M = 250;
    private static final int N = 300;
    private static final boolean O = true;
    private static final boolean P = true;
    private static final boolean Q = false;
    private static float R = 5.0f;
    private boolean A;
    private Interpolator B;
    private Interpolator C;
    private Context D;
    private DarkFrameLayout E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f65618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f65619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65621f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f65622g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f65623h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65624i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65625j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VelocityTracker f65626k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65627l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f65628m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f65629n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f65630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f65631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f65632q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f65633r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f65634s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f65635t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f65636u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f65637v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f65638w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f65639x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f65640y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f65641z;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f65642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f65643c;

        a(final View val$mPanel, final int val$t) {
            this.f65642b = val$mPanel;
            this.f65643c = val$t;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            float fFloatValue = ((Float) animation.getAnimatedValue()).floatValue();
            ViewCompat.setY(this.f65642b, fFloatValue);
            if (SlideBottomPanel.this.E == null || !SlideBottomPanel.this.f65639x || fFloatValue >= this.f65643c) {
                return;
            }
            SlideBottomPanel.this.E.b((int) ((1.0f - (fFloatValue / this.f65643c)) * 159.0f));
        }
    }

    class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f65645b;

        b(final View val$mPanel) {
            this.f65645b = val$mPanel;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            SlideBottomPanel.this.f65619d = false;
            SlideBottomPanel.this.f65620e = false;
            SlideBottomPanel.this.A(this.f65645b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            SlideBottomPanel.this.f65619d = false;
            SlideBottomPanel.this.f65620e = false;
            SlideBottomPanel.this.A(this.f65645b);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            SlideBottomPanel.this.f65619d = true;
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f65647b;

        c(final View val$mPanel) {
            this.f65647b = val$mPanel;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            float fFloatValue = ((Float) animation.getAnimatedValue()).floatValue();
            ViewCompat.setY(this.f65647b, fFloatValue);
            if (SlideBottomPanel.this.E == null || !SlideBottomPanel.this.f65639x || SlideBottomPanel.this.E.getCurrentAlpha() == 159) {
                return;
            }
            SlideBottomPanel.this.E.b((int) ((1.0f - (fFloatValue / (SlideBottomPanel.this.f65627l - SlideBottomPanel.this.f65636u))) * 159.0f));
        }
    }

    class d implements Animator.AnimatorListener {
        d() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            SlideBottomPanel.this.f65619d = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            SlideBottomPanel.this.f65619d = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            SlideBottomPanel.this.f65619d = true;
        }
    }

    public SlideBottomPanel(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(View panel) {
        if ((panel instanceof ViewGroup) && this.f65641z) {
            try {
                View childAt = ((ViewGroup) panel).getChildAt(1);
                if (childAt.getVisibility() != 0) {
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                    childAt.setVisibility(0);
                }
            } catch (NullPointerException e10) {
                e10.printStackTrace();
            }
        }
    }

    private boolean B(int direction) {
        View viewN;
        View viewN2;
        View viewFindViewWithTag = findViewWithTag(2);
        if (!(viewFindViewWithTag instanceof ViewGroup) || (viewN = n((ViewGroup) viewFindViewWithTag, this.f65628m, this.f65629n)) == null) {
            return false;
        }
        if (viewN instanceof AbsListView) {
            return ((AbsListView) viewN).canScrollList(direction);
        }
        if (viewN instanceof ScrollView) {
            return ((ScrollView) viewN).canScrollVertically(direction);
        }
        if ((viewN instanceof ViewGroup) && (viewN2 = n((ViewGroup) viewN, this.f65628m, this.f65629n)) != null && (viewN2 instanceof ViewGroup)) {
            if (viewN2 instanceof AbsListView) {
                return ((AbsListView) viewN2).canScrollList(direction);
            }
            if (viewN2 instanceof ScrollView) {
                return ((ScrollView) viewN2).canScrollVertically(direction);
            }
        }
        return false;
    }

    private boolean a(AbsListView absListView, int direction) {
        int childCount = absListView.getChildCount();
        if (childCount == 0) {
            return false;
        }
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        if (direction > 0) {
            return firstVisiblePosition + childCount < absListView.getCount() || absListView.getChildAt(childCount + (-1)).getBottom() > absListView.getHeight() - absListView.getPaddingTop();
        }
        return firstVisiblePosition > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop();
    }

    private void i() {
        this.f65626k.computeCurrentVelocity(1000, this.f65624i);
        this.f65621f = this.f65626k.getXVelocity();
        this.f65622g = this.f65626k.getYVelocity();
    }

    private int j(ScrollView scrollView) {
        int childCount = scrollView.getChildCount();
        int height = (scrollView.getHeight() - scrollView.getPaddingBottom()) - scrollView.getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = scrollView.getChildAt(0).getBottom();
        int scrollY = scrollView.getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    private double l(float x10, float y10, float x11, float y11) {
        float f10 = x10 - x11;
        float f11 = y10 - y11;
        return Math.sqrt((f10 * f10) + (f11 * f11));
    }

    private int m(int dpValue) {
        return (int) ((dpValue * this.f65618c) + 0.5f);
    }

    private View n(ViewGroup parentView, float x10, float y10) {
        for (int childCount = parentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = parentView.getChildAt(childCount);
            if (x10 >= childAt.getLeft() && x10 < childAt.getRight() && y10 >= (childAt.getTop() + this.f65627l) - this.f65635t && y10 < (childAt.getBottom() + this.f65627l) - this.f65635t) {
                return childAt;
            }
        }
        return null;
    }

    private boolean o(MotionEvent event) {
        this.f65632q = System.currentTimeMillis();
        this.f65628m = event.getX();
        float y10 = event.getY();
        this.f65630o = y10;
        this.f65629n = y10;
        boolean z10 = this.f65620e;
        if (!z10 && y10 > this.f65627l - this.f65636u) {
            this.A = true;
            return true;
        }
        if (!z10 && y10 <= this.f65627l - this.f65636u) {
            this.A = false;
        } else if (z10 && y10 > this.f65627l - this.f65635t) {
            this.A = true;
        } else if (z10 && y10 < this.f65627l - this.f65635t) {
            s();
            this.A = false;
        }
        return false;
    }

    private void p(MotionEvent event) {
        if (this.A) {
            if (this.f65620e && B((int) (this.f65629n - event.getY()))) {
                return;
            }
            i();
            if (Math.abs(this.f65621f) > Math.abs(this.f65622g)) {
                return;
            }
            if (!this.f65633r && Math.abs(event.getY() - this.f65629n) > this.f65623h && Math.abs(event.getX() - this.f65628m) < this.f65623h) {
                this.f65633r = true;
                this.f65630o = event.getY();
            }
            if (this.f65633r) {
                this.f65631p = event.getY() - this.f65630o;
                this.f65630o = event.getY();
                View viewFindViewWithTag = findViewWithTag(2);
                if (this.f65641z && this.f65620e) {
                    t(viewFindViewWithTag);
                }
                if (this.E != null && this.f65639x) {
                    float y10 = ViewCompat.getY(viewFindViewWithTag);
                    int i10 = this.f65627l;
                    if (y10 > i10 - this.f65635t) {
                        float f10 = this.f65636u;
                        if (y10 < i10 - f10) {
                            this.E.b((int) ((1.0f - (y10 / (i10 - f10))) * 159.0f));
                        }
                    }
                }
                if (!this.f65640y) {
                    viewFindViewWithTag.offsetTopAndBottom((int) this.f65631p);
                    return;
                }
                float y11 = ViewCompat.getY(viewFindViewWithTag);
                float f11 = this.f65631p;
                float f12 = y11 + f11;
                int i11 = this.f65627l;
                float f13 = this.f65635t;
                if (f12 <= i11 - f13) {
                    viewFindViewWithTag.offsetTopAndBottom((int) ((i11 - f13) - y11));
                    return;
                }
                float f14 = y11 + f11;
                float f15 = this.f65636u;
                if (f14 >= i11 - f15) {
                    viewFindViewWithTag.offsetTopAndBottom((int) ((i11 - f15) - y11));
                } else {
                    viewFindViewWithTag.offsetTopAndBottom((int) f11);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d2  */
    private void q(MotionEvent event) {
        if (this.A) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f65632q;
            i();
            if (this.f65620e || event.getY() - this.f65629n >= 0.0f || Math.abs(event.getY() - this.f65629n) <= this.f65637v) {
                float f10 = this.f65622g;
                if (f10 < 0.0f && Math.abs(f10) > Math.abs(this.f65621f) && Math.abs(this.f65622g) > this.f65625j) {
                    k();
                } else if (!this.f65620e && jCurrentTimeMillis < 300 && l(this.f65628m, this.f65629n, event.getX(), event.getY()) < R) {
                    k();
                } else if (!this.f65620e && this.f65633r && (event.getY() - this.f65629n > 0.0f || Math.abs(event.getY() - this.f65629n) < this.f65637v)) {
                    s();
                }
            } else {
                k();
            }
            if (this.f65620e) {
                View viewFindViewWithTag = findViewWithTag(2);
                float y10 = ViewCompat.getY(viewFindViewWithTag);
                int i10 = this.f65627l;
                float f11 = this.f65635t;
                if (y10 >= i10 - f11) {
                    float f12 = this.f65637v;
                    if (y10 < (i10 - f11) + f12) {
                        ObjectAnimator.ofFloat(viewFindViewWithTag, "y", y10, i10 - f11).setDuration(this.f65638w).start();
                    } else if (y10 > (i10 - f11) + f12) {
                        s();
                    }
                } else {
                    ObjectAnimator.ofFloat(viewFindViewWithTag, "y", y10, i10 - f11).setDuration(this.f65638w).start();
                }
            }
            this.A = false;
            this.f65633r = false;
            this.f65631p = 0.0f;
        }
    }

    private void s() {
        if (this.f65619d) {
            return;
        }
        View viewFindViewWithTag = findViewWithTag(2);
        int i10 = (int) (this.f65627l - this.f65636u);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(ViewCompat.getY(viewFindViewWithTag), this.f65627l - this.f65636u);
        valueAnimatorOfFloat.setInterpolator(this.C);
        valueAnimatorOfFloat.setTarget(viewFindViewWithTag);
        valueAnimatorOfFloat.addUpdateListener(new a(viewFindViewWithTag, i10));
        valueAnimatorOfFloat.addListener(new b(viewFindViewWithTag));
        valueAnimatorOfFloat.start();
    }

    private void t(View panel) {
        if ((panel instanceof ViewGroup) && this.f65641z) {
            try {
                ((ViewGroup) panel).getChildAt(1).setVisibility(4);
            } catch (NullPointerException e10) {
                e10.printStackTrace();
            }
        }
    }

    private void u() {
        if (this.f65634s != -1) {
            DarkFrameLayout darkFrameLayout = new DarkFrameLayout(this.D);
            this.E = darkFrameLayout;
            darkFrameLayout.addView(LayoutInflater.from(this.D).inflate(this.f65634s, (ViewGroup) null));
            this.E.setTag(1);
            this.E.setSlideBottomPanel(this);
            addView(this.E);
        }
    }

    private void v(MotionEvent event) {
        if (this.f65626k == null) {
            this.f65626k = VelocityTracker.obtain();
        }
        this.f65626k.addMovement(event);
    }

    private int x(int pxValue) {
        return (int) ((pxValue / this.f65618c) + 0.5f);
    }

    private void y() {
        VelocityTracker velocityTracker = this.f65626k;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.f65626k.recycle();
            this.f65626k = null;
        }
    }

    private boolean z(ScrollView scrollView, int direction) {
        int iMax = Math.max(0, scrollView.getScrollY());
        int iJ = j(scrollView) - scrollView.getHeight();
        if (iJ == 0) {
            return false;
        }
        if (direction < 0) {
            return iMax > 0;
        }
        return iMax < iJ - 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        boolean zO;
        v(ev);
        int action = ev.getAction();
        if (action != 0) {
            if (action == 1) {
                q(ev);
                y();
            } else if (action == 2) {
                p(ev);
            }
            zO = false;
        } else {
            zO = o(ev);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(zO || super.dispatchTouchEvent(ev));
        return zO || super.dispatchTouchEvent(ev);
    }

    public void k() {
        if (this.f65620e || this.f65619d) {
            return;
        }
        if (this.f65639x || this.E != null) {
            this.E.c(true);
        }
        View viewFindViewWithTag = findViewWithTag(2);
        ValueAnimator duration = ValueAnimator.ofFloat(ViewCompat.getY(viewFindViewWithTag), this.f65627l - this.f65635t).setDuration(this.f65638w);
        duration.setTarget(viewFindViewWithTag);
        duration.setInterpolator(this.B);
        duration.addUpdateListener(new c(viewFindViewWithTag));
        duration.addListener(new d());
        duration.start();
        this.f65620e = true;
        t(viewFindViewWithTag);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.f65633r;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.f65617b = getChildCount();
        int i10 = (int) (this.f65627l - this.f65636u);
        for (int i11 = 0; i11 < this.f65617b; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getTag() == null || ((Integer) childAt.getTag()).intValue() != 1) {
                childAt.layout(0, i10, childAt.getMeasuredWidth(), childAt.getMeasuredHeight() + i10);
                childAt.setTag(2);
            } else {
                if (Integer.parseInt(childAt.getTag() + "") == 1) {
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                    childAt.setPadding(0, 0, 0, (int) this.f65636u);
                }
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f65627l = getMeasuredHeight();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    public void r() {
        if (this.f65620e) {
            s();
        }
    }

    public boolean w() {
        return this.f65620e;
    }

    public SlideBottomPanel(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlideBottomPanel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65619d = false;
        this.f65620e = false;
        this.f65633r = false;
        this.f65639x = true;
        this.f65640y = true;
        this.f65641z = false;
        this.A = false;
        this.B = new AccelerateInterpolator();
        this.C = new AccelerateInterpolator();
        this.D = context;
        this.f65618c = getResources().getDisplayMetrics().density;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.D);
        this.f65624i = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f65625j = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f65623h = viewConfiguration.getScaledTouchSlop();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.SlideBottomPanel, defStyleAttr, 0);
        this.f65634s = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f65635t = typedArrayObtainStyledAttributes.getDimension(6, m(380));
        this.f65640y = typedArrayObtainStyledAttributes.getBoolean(2, true);
        float dimension = typedArrayObtainStyledAttributes.getDimension(7, m(60));
        this.f65636u = dimension;
        R = dimension;
        this.f65637v = typedArrayObtainStyledAttributes.getDimension(5, m(30));
        this.f65638w = typedArrayObtainStyledAttributes.getInt(0, 250);
        this.f65641z = typedArrayObtainStyledAttributes.getBoolean(4, false);
        this.f65639x = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        u();
    }
}
