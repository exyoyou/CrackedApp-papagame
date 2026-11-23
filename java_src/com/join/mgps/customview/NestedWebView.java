package com.join.mgps.customview;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public class NestedWebView extends WebView implements NestedScrollingChild3 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f65378o = "NestedWebView";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65379p = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f65380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f65381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private NestedScrollingChildHelper f65383e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private VelocityTracker f65385g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65388j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private OverScroller f65389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65390l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65391m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f65392n;

    public NestedWebView(Context context) {
        this(context, null);
    }

    private void a() {
        this.f65389k.abortAnimation();
        stopNestedScroll(1);
    }

    private void b() {
        this.f65384f = false;
        i();
        stopNestedScroll();
    }

    private void c(int velocityY) {
        this.f65389k.fling(getScrollX(), getScrollY(), 0, velocityY, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, getHeight() / 2);
        j(true);
    }

    private void d() {
        VelocityTracker velocityTracker = this.f65385g;
        if (velocityTracker == null) {
            this.f65385g = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void e() {
        this.f65389k = new OverScroller(getContext());
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f65386h = viewConfiguration.getScaledTouchSlop();
        this.f65390l = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f65391m = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void f() {
        if (this.f65385g == null) {
            this.f65385g = VelocityTracker.obtain();
        }
    }

    private void g(MotionEvent ev) {
        int action = (ev.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (ev.getPointerId(action) == this.f65387i) {
            int i10 = action == 0 ? 1 : 0;
            this.f65382d = (int) ev.getY(i10);
            this.f65387i = ev.getPointerId(i10);
            VelocityTracker velocityTracker = this.f65385g;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0057  */
    /* JADX WARN: Code duplicated, block: B:40:0x005a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x005c  */
    /* JADX WARN: Code duplicated, block: B:42:0x005e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0061  */
    /* JADX WARN: Code duplicated, block: B:49:0x0083 A[ADDED_TO_REGION] */
    private boolean h(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        boolean z10;
        boolean z11;
        int overScrollMode = getOverScrollMode();
        boolean z12 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z13 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z14 = overScrollMode == 0 || (overScrollMode == 1 && z12);
        boolean z15 = overScrollMode == 0 || (overScrollMode == 1 && z13);
        int i10 = scrollX + deltaX;
        int i11 = !z14 ? 0 : maxOverScrollX;
        int i12 = scrollY + deltaY;
        int i13 = !z15 ? 0 : maxOverScrollY;
        int i14 = -i11;
        int i15 = i11 + scrollRangeX;
        int i16 = -i13;
        int i17 = i13 + scrollRangeY;
        if (i10 <= i15) {
            if (i10 < i14) {
                i10 = i14;
            } else {
                z10 = false;
            }
            if (i12 > i17) {
                if (i12 < i16) {
                    i12 = i16;
                } else {
                    z11 = false;
                }
                if (z11 && !hasNestedScrollingParent(1)) {
                    this.f65389k.springBack(i10, i12, 0, 0, 0, getScrollRange());
                }
                onOverScrolled(i10, i12, z10, z11);
                return !z10 || z11;
            }
            i12 = i17;
            z11 = true;
            if (z11) {
                this.f65389k.springBack(i10, i12, 0, 0, 0, getScrollRange());
            }
            onOverScrolled(i10, i12, z10, z11);
            if (z10) {
            }
        }
        i10 = i15;
        z10 = true;
        if (i12 > i17) {
            if (i12 < i16) {
                i12 = i16;
            } else {
                z11 = false;
            }
            if (z11) {
                this.f65389k.springBack(i10, i12, 0, 0, 0, getScrollRange());
            }
            onOverScrolled(i10, i12, z10, z11);
            if (z10) {
            }
        }
        i12 = i17;
        z11 = true;
        if (z11) {
            this.f65389k.springBack(i10, i12, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i10, i12, z10, z11);
        if (z10) {
        }
    }

    private void i() {
        VelocityTracker velocityTracker = this.f65385g;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f65385g = null;
        }
    }

    private void j(boolean participateInNestedScrolling) {
        if (participateInNestedScrolling) {
            startNestedScroll(2, 1);
        } else {
            stopNestedScroll(1);
        }
        this.f65392n = getScrollY();
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
        if (this.f65389k.isFinished()) {
            return;
        }
        this.f65389k.computeScrollOffset();
        int currY = this.f65389k.getCurrY();
        int i10 = currY - this.f65392n;
        this.f65392n = currY;
        int[] iArr = this.f65381c;
        iArr[1] = 0;
        dispatchNestedPreScroll(0, i10, iArr, null, 1);
        int i11 = i10 - this.f65381c[1];
        if (i11 != 0) {
            int scrollY = getScrollY();
            h(0, i11, getScrollX(), scrollY, 0, getScrollRange(), 0, 0, false);
            int scrollY2 = i11 - (getScrollY() - scrollY);
            int[] iArr2 = this.f65381c;
            iArr2[1] = 0;
            dispatchNestedScroll(0, 0, 0, scrollY2, this.f65380b, 1, iArr2);
            i11 = scrollY2 - this.f65381c[1];
        }
        if (i11 != 0) {
            a();
        }
        if (this.f65389k.isFinished()) {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.f65383e.dispatchNestedFling(velocityX, velocityY, false);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.f65383e.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow, 0);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return 2;
    }

    int getScrollRange() {
        return computeVerticalScrollRange();
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int type) {
        return this.f65383e.hasNestedScrollingParent(type);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f65383e.isNestedScrollingEnabled();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:33:0x0092  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 2 && this.f65384f) {
            return true;
        }
        int i10 = action & 255;
        if (i10 == 0) {
            this.f65382d = (int) ev.getY();
            this.f65387i = ev.getPointerId(0);
            d();
            this.f65385g.addMovement(ev);
            this.f65389k.computeScrollOffset();
            this.f65384f = !this.f65389k.isFinished();
            startNestedScroll(2);
        } else if (i10 == 1) {
            this.f65384f = false;
            this.f65387i = -1;
            i();
            if (this.f65389k.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            stopNestedScroll();
        } else if (i10 == 2) {
            int i11 = this.f65387i;
            if (i11 != -1) {
                int iFindPointerIndex = ev.findPointerIndex(i11);
                if (iFindPointerIndex == -1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Invalid pointerId=");
                    sb2.append(i11);
                    sb2.append(" in onInterceptTouchEvent");
                } else {
                    int y10 = (int) ev.getY(iFindPointerIndex);
                    if (Math.abs(y10 - this.f65382d) > this.f65386h && (2 & getNestedScrollAxes()) == 0) {
                        this.f65384f = true;
                        this.f65382d = y10;
                        f();
                        this.f65385g.addMovement(ev);
                        this.f65388j = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i10 == 3) {
            this.f65384f = false;
            this.f65387i = -1;
            i();
            if (this.f65389k.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            stopNestedScroll();
        } else if (i10 == 6) {
            g(ev);
        }
        return this.f65384f;
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        ViewParent parent;
        f();
        MotionEvent motionEventObtain = MotionEvent.obtain(ev);
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            this.f65388j = 0;
        }
        motionEventObtain.offsetLocation(0.0f, this.f65388j);
        if (actionMasked == 0) {
            boolean z10 = !this.f65389k.isFinished();
            this.f65384f = z10;
            if (z10 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f65389k.isFinished()) {
                a();
            }
            this.f65382d = (int) ev.getY();
            this.f65387i = ev.getPointerId(0);
            startNestedScroll(2, 0);
        } else if (actionMasked == 1) {
            VelocityTracker velocityTracker = this.f65385g;
            velocityTracker.computeCurrentVelocity(1000, this.f65391m);
            int yVelocity = (int) velocityTracker.getYVelocity(this.f65387i);
            if (Math.abs(yVelocity) > this.f65390l) {
                int i10 = -yVelocity;
                float f10 = i10;
                if (!dispatchNestedPreFling(0.0f, f10)) {
                    dispatchNestedFling(0.0f, f10, true);
                    c(i10);
                }
            } else if (this.f65389k.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            this.f65387i = -1;
            b();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = ev.findPointerIndex(this.f65387i);
            if (iFindPointerIndex == -1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid pointerId=");
                sb2.append(this.f65387i);
                sb2.append(" in onTouchEvent");
            } else {
                int y10 = (int) ev.getY(iFindPointerIndex);
                int i11 = this.f65382d - y10;
                if (dispatchNestedPreScroll(0, i11, this.f65381c, this.f65380b, 0)) {
                    i11 -= this.f65381c[1];
                    this.f65388j += this.f65380b[1];
                }
                if (!this.f65384f && Math.abs(i11) > this.f65386h) {
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    this.f65384f = true;
                    i11 = i11 > 0 ? i11 - this.f65386h : i11 + this.f65386h;
                }
                int i12 = i11;
                if (this.f65384f) {
                    this.f65382d = y10 - this.f65380b[1];
                    int scrollY = getScrollY();
                    if (h(0, i12, 0, scrollY, 0, getScrollRange(), 0, 0, true) && !hasNestedScrollingParent(0)) {
                        this.f65385g.clear();
                    }
                    int scrollY2 = getScrollY() - scrollY;
                    int[] iArr = this.f65381c;
                    iArr[1] = 0;
                    dispatchNestedScroll(0, scrollY2, 0, i12 - scrollY2, this.f65380b, 0, iArr);
                    int i13 = this.f65382d;
                    int i14 = this.f65380b[1];
                    this.f65382d = i13 - i14;
                    this.f65388j += i14;
                }
            }
        } else if (actionMasked == 3) {
            if (this.f65384f && this.f65389k.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            this.f65387i = -1;
            b();
        } else if (actionMasked == 5) {
            int actionIndex = ev.getActionIndex();
            this.f65382d = (int) ev.getY(actionIndex);
            this.f65387i = ev.getPointerId(actionIndex);
        } else if (actionMasked == 6) {
            g(ev);
            this.f65382d = (int) ev.getY(ev.findPointerIndex(this.f65387i));
        }
        VelocityTracker velocityTracker2 = this.f65385g;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return super.onTouchEvent(ev);
    }

    @Override // android.view.View
    protected boolean overScrollBy(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        if (this.f65384f) {
            return true;
        }
        h(deltaX, deltaY, scrollX, scrollY, scrollRangeX, scrollRangeY, maxOverScrollX, maxOverScrollY, isTouchEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            i();
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.f65383e.setNestedScrollingEnabled(enabled);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int axes, int type) {
        return this.f65383e.startNestedScroll(axes, type);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int type) {
        this.f65383e.stopNestedScroll(type);
    }

    public NestedWebView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.webViewStyle);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow, int type) {
        return this.f65383e.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow, type);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow, int type) {
        return this.f65383e.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow, type);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int axes) {
        return startNestedScroll(axes, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public NestedWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65380b = new int[2];
        this.f65381c = new int[2];
        this.f65384f = false;
        this.f65387i = -1;
        setOverScrollMode(2);
        e();
        this.f65383e = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public void dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, @Nullable int[] offsetInWindow, int type, @NonNull int[] consumed) {
        this.f65383e.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow, type, consumed);
    }
}
