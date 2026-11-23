package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Transformation;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes3.dex */
public final class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private static final int f64976h2 = 250;
    private final Runnable L1;
    private boolean R1;
    private View V1;
    private int W;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private boolean f64977a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private float f64978b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private boolean f64979b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private boolean f64980c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private boolean f64981d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private AdapterView.b f64982e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private int f64983f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private boolean f64984f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private boolean f64985g2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f64986i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f64987l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f64988p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private final GestureDetector f64989p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f64990q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private View f64991r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private final c f64992v1;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Gallery.this.f64980c2 = false;
            Gallery.this.p();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Gallery.this.M();
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Scroller f64995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f64996c;

        public c() {
            this.f64995b = new Scroller(Gallery.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(final boolean scrollIntoSlots) {
            this.f64995b.forceFinished(true);
            if (scrollIntoSlots) {
                Gallery.this.c0();
            }
        }

        private void d() {
            Gallery.this.removeCallbacks(this);
        }

        public void e(final int distance) {
            if (distance == 0) {
                return;
            }
            d();
            this.f64996c = 0;
            this.f64995b.startScroll(0, 0, -distance, 0, Gallery.this.f64988p0);
            Gallery.this.post(this);
        }

        public void g(final int initialVelocity) {
            if (initialVelocity == 0) {
                return;
            }
            d();
            int i10 = initialVelocity < 0 ? Integer.MAX_VALUE : 0;
            this.f64996c = i10;
            this.f64995b.fling(i10, 0, initialVelocity, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            Gallery.this.post(this);
        }

        public void h(final boolean scrollIntoSlots) {
            Gallery.this.removeCallbacks(this);
            c(scrollIntoSlots);
        }

        @Override // java.lang.Runnable
        public void run() {
            int childCount;
            int iMax;
            int childCount2;
            Gallery gallery = Gallery.this;
            if (gallery.f64301t == 0) {
                c(true);
                return;
            }
            gallery.R1 = false;
            Scroller scroller = this.f64995b;
            boolean zComputeScrollOffset = scroller.computeScrollOffset();
            int currX = scroller.getCurrX();
            int i10 = this.f64996c - currX;
            if (i10 > 0) {
                Gallery gallery2 = Gallery.this;
                if (gallery2.f64985g2) {
                    Gallery gallery3 = Gallery.this;
                    childCount2 = (gallery3.f64283b + gallery3.getChildCount()) - 1;
                } else {
                    childCount2 = Gallery.this.f64283b;
                }
                gallery2.f64990q1 = childCount2;
                iMax = Math.min(((Gallery.this.getWidth() - Gallery.this.getPaddingLeft()) - Gallery.this.getPaddingRight()) - 1, i10);
            } else {
                Gallery gallery4 = Gallery.this;
                if (gallery4.f64985g2) {
                    childCount = Gallery.this.f64283b;
                } else {
                    Gallery gallery5 = Gallery.this;
                    childCount = (gallery5.f64283b + gallery5.getChildCount()) - 1;
                }
                gallery4.f64990q1 = childCount;
                iMax = Math.max(-(((Gallery.this.getWidth() - Gallery.this.getPaddingRight()) - Gallery.this.getPaddingLeft()) - 1), i10);
            }
            Gallery.this.g0(iMax);
            if (!zComputeScrollOffset || Gallery.this.R1) {
                c(true);
            } else {
                this.f64996c = currX;
                Gallery.this.post(this);
            }
        }
    }

    public Gallery(final Context context) {
        this(context, null);
    }

    private int I(final View child, final boolean duringLayout) {
        int measuredHeight = duringLayout ? getMeasuredHeight() : getHeight();
        int measuredHeight2 = duringLayout ? child.getMeasuredHeight() : child.getHeight();
        int i10 = this.f64987l1;
        if (i10 == 16) {
            Rect rect = this.Q;
            int i11 = measuredHeight - rect.bottom;
            int i12 = rect.top;
            return i12 + (((i11 - i12) - measuredHeight2) / 2);
        }
        if (i10 == 48) {
            return this.Q.top;
        }
        if (i10 != 80) {
            return 0;
        }
        return (measuredHeight - this.Q.bottom) - measuredHeight2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d A[PHI: r5 r6
      0x006d: PHI (r5v4 int) = (r5v1 int), (r5v6 int) binds: [B:28:0x006a, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x006d: PHI (r6v4 int) = (r6v1 int), (r6v6 int) binds: [B:28:0x006a, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    private void J(final boolean toLeft) {
        int i10;
        int i11;
        int childCount = getChildCount();
        int i12 = this.f64283b;
        int i13 = 0;
        if (toLeft) {
            int paddingLeft = getPaddingLeft();
            int i14 = 0;
            i10 = 0;
            i11 = 0;
            while (i14 < childCount) {
                int i15 = this.f64985g2 ? (childCount - 1) - i14 : i14;
                View childAt = getChildAt(i15);
                if (childAt.getRight() >= paddingLeft) {
                    break;
                }
                i10++;
                this.T.d(i12 + i15, childAt);
                i14++;
                i11 = i15;
            }
            if (this.f64985g2) {
                i13 = i11;
            }
        } else {
            int width = getWidth() - getPaddingRight();
            int i16 = childCount - 1;
            int i17 = i16;
            i10 = 0;
            i11 = 0;
            while (i17 >= 0) {
                int i18 = this.f64985g2 ? i16 - i17 : i17;
                View childAt2 = getChildAt(i18);
                if (childAt2.getLeft() <= width) {
                    break;
                }
                i10++;
                this.T.d(i12 + i18, childAt2);
                i17--;
                i11 = i18;
            }
            if (!this.f64985g2) {
                i13 = i11;
            }
        }
        detachViewsFromParent(i13, i10);
        if (toLeft != this.f64985g2) {
            this.f64283b += i10;
        }
    }

    private boolean K(final View view, final int position, final long id2) {
        AdapterView.e eVar = this.f64294m;
        boolean zA = eVar != null ? eVar.a(this, this.f64991r1, this.f64990q1, id2) : false;
        if (!zA) {
            this.f64982e2 = new AdapterView.b(view, position, id2);
            zA = super.showContextMenuForChild(this);
        }
        if (zA) {
            performHapticFeedback(0);
        }
        return zA;
    }

    private void L(final View child) {
        if (child != null) {
            child.setPressed(true);
        }
        setPressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                setPressed(false);
                return;
            }
            getChildAt(childCount).setPressed(false);
        }
    }

    private void N() {
        if (this.f64985g2) {
            P();
        } else {
            O();
        }
    }

    private void O() {
        int right;
        int i10;
        int i11 = this.W;
        int paddingLeft = getPaddingLeft();
        View childAt = getChildAt(0);
        if (childAt != null) {
            i10 = this.f64283b - 1;
            right = childAt.getLeft() - i11;
        } else {
            right = (getRight() - getLeft()) - getPaddingRight();
            this.R1 = true;
            i10 = 0;
        }
        while (right > paddingLeft && i10 >= 0) {
            View viewV = V(i10, i10 - this.f64298q, right, false);
            this.f64283b = i10;
            right = viewV.getLeft() - i11;
            i10--;
        }
    }

    private void P() {
        int i10;
        int right;
        int i11 = this.W;
        int paddingLeft = getPaddingLeft();
        int childCount = getChildCount();
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i10 = this.f64283b + childCount;
            right = childAt.getLeft() - i11;
        } else {
            i10 = this.f64301t - 1;
            this.f64283b = i10;
            right = (getRight() - getLeft()) - getPaddingRight();
            this.R1 = true;
        }
        while (right > paddingLeft && i10 < this.f64301t) {
            right = V(i10, i10 - this.f64298q, right, false).getLeft() - i11;
            i10++;
        }
    }

    private void Q() {
        if (this.f64985g2) {
            S();
        } else {
            R();
        }
    }

    private void R() {
        int i10;
        int paddingLeft;
        int i11 = this.W;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int childCount = getChildCount();
        int i12 = this.f64301t;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i10 = this.f64283b + childCount;
            paddingLeft = childAt.getRight() + i11;
        } else {
            i10 = this.f64301t - 1;
            this.f64283b = i10;
            paddingLeft = getPaddingLeft();
            this.R1 = true;
        }
        while (paddingLeft < right && i10 < i12) {
            paddingLeft = V(i10, i10 - this.f64298q, paddingLeft, true).getRight() + i11;
            i10++;
        }
    }

    private void S() {
        int paddingLeft;
        int i10 = this.W;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int i11 = 0;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i11 = this.f64283b - 1;
            paddingLeft = childAt.getRight() + i10;
        } else {
            paddingLeft = getPaddingLeft();
            this.R1 = true;
        }
        while (paddingLeft < right && i11 >= 0) {
            View viewV = V(i11, i11 - this.f64298q, paddingLeft, true);
            this.f64283b = i11;
            paddingLeft = viewV.getRight() + i10;
            i11--;
        }
    }

    private static int T(final View view) {
        return view.getLeft();
    }

    private View V(final int position, final int offset, final int x10, final boolean fromLeft) {
        View viewB;
        if (this.f64295n || (viewB = this.T.b(position)) == null) {
            View view = this.I.getView(position, null, this);
            f0(view, offset, x10, fromLeft);
            return view;
        }
        int left = viewB.getLeft();
        this.f64986i1 = Math.max(this.f64986i1, viewB.getMeasuredWidth() + left);
        this.f64983f1 = Math.min(this.f64983f1, left);
        f0(viewB, offset, x10, fromLeft);
        return viewB;
    }

    private void Y(final int offset) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getChildAt(childCount).offsetLeftAndRight(offset);
        }
    }

    private void a0() {
        if (this.f64980c2) {
            this.f64980c2 = false;
            super.p();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        View view;
        if (getChildCount() == 0 || (view = this.V1) == null) {
            return;
        }
        int galleryLockPoint = getGalleryLockPoint() - T(view);
        if (galleryLockPoint != 0) {
            this.f64992v1.e(galleryLockPoint);
        } else {
            a0();
        }
    }

    private boolean d0(final int childPosition) {
        View childAt = getChildAt(childPosition);
        if (childAt == null) {
            return false;
        }
        this.f64992v1.e(getGalleryLockPoint() - T(childAt));
        return true;
    }

    private void e0() {
        if (this.V1 == null) {
            return;
        }
        int galleryLockPoint = getGalleryLockPoint();
        int childCount = getChildCount() - 1;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        while (true) {
            if (childCount < 0) {
                childCount = i11;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt.getLeft() == galleryLockPoint && childAt.getRight() >= galleryLockPoint) {
                break;
            }
            int iMin = Math.min(Math.abs(childAt.getLeft() - galleryLockPoint), Math.abs(childAt.getRight() - galleryLockPoint));
            if (iMin < i10) {
                i11 = childCount;
                i10 = iMin;
            }
            childCount--;
        }
        int i12 = this.f64283b + childCount;
        if (i12 != this.f64298q) {
            setSelectedPositionInt(i12);
            setNextSelectedPositionInt(i12);
            e();
        }
    }

    private void f0(final View child, final int offset, final int x10, final boolean fromLeft) {
        int i10;
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(child, fromLeft != this.f64985g2 ? -1 : 0, layoutParams);
        child.setSelected(offset == 0);
        int i11 = this.J;
        Rect rect = this.Q;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, rect.top + rect.bottom, layoutParams.height);
        int i12 = this.K;
        Rect rect2 = this.Q;
        child.measure(ViewGroup.getChildMeasureSpec(i12, rect2.left + rect2.right, layoutParams.width), childMeasureSpec);
        int I = I(child, true);
        int measuredHeight = child.getMeasuredHeight() + I;
        int measuredWidth = child.getMeasuredWidth();
        if (fromLeft) {
            i10 = measuredWidth + x10;
        } else {
            int i13 = x10 - measuredWidth;
            i10 = x10;
            x10 = i13;
        }
        child.layout(x10, I, i10, measuredHeight);
    }

    private int getGalleryLockPoint() {
        return getPaddingLeft();
    }

    private void h0() {
        View view = this.V1;
        View childAt = getChildAt(this.f64298q - this.f64283b);
        this.V1 = childAt;
        if (childAt == null) {
            return;
        }
        childAt.setSelected(true);
        childAt.setFocusable(true);
        if (hasFocus()) {
            childAt.requestFocus();
        }
        if (view == null || view == childAt) {
            return;
        }
        view.setSelected(false);
        view.setFocusable(false);
    }

    int U(final boolean motionToLeft, final int deltaX) {
        View childAt = getChildAt((motionToLeft != this.f64985g2 ? this.f64301t - 1 : 0) - this.f64283b);
        if (childAt == null) {
            return deltaX;
        }
        int iT = T(childAt);
        int galleryLockPoint = getGalleryLockPoint();
        if (motionToLeft) {
            if (iT <= galleryLockPoint) {
                return 0;
            }
        } else if (iT >= galleryLockPoint) {
            return 0;
        }
        int i10 = galleryLockPoint - iT;
        return motionToLeft ? Math.max(i10, deltaX) : Math.min(i10, deltaX);
    }

    boolean W() {
        int i10;
        int i11 = this.f64301t;
        if (i11 <= 0 || (i10 = this.f64298q) >= i11 - 1) {
            return false;
        }
        d0((i10 - this.f64283b) + 1);
        return true;
    }

    boolean X() {
        int i10;
        if (this.f64301t <= 0 || (i10 = this.f64298q) <= 0) {
            return false;
        }
        setSelection(i10 - 1);
        return true;
    }

    void Z() {
        b0();
    }

    void b0() {
        if (this.f64992v1.f64995b.isFinished()) {
            c0();
        }
        M();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(final ViewGroup.LayoutParams p10) {
        return p10 instanceof ViewGroup.LayoutParams;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        return 1;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollOffset() {
        return this.f64298q;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return this.f64301t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(final KeyEvent event) {
        return event.dispatch(this, null, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(final boolean pressed) {
        View view = this.V1;
        if (view != null) {
            view.setPressed(pressed);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(final boolean selected) {
    }

    void g0(final int deltaX) {
        if (getChildCount() == 0) {
            return;
        }
        boolean z10 = deltaX < 0;
        int iU = U(z10, deltaX);
        if (iU != deltaX) {
            this.f64992v1.c(false);
            a0();
        }
        Y(iU);
        J(z10);
        if (z10) {
            Q();
        } else {
            N();
        }
        this.T.a();
        e0();
        onScrollChanged(0, 0, 0, 0);
        invalidate();
    }

    @Override // com.join.mgps.customview.AbsSpinner, android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(final ViewGroup.LayoutParams p10) {
        return new ViewGroup.LayoutParams(p10);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(final int childCount, final int i10) {
        int i11 = this.f64298q - this.f64283b;
        if (i11 < 0) {
            return i10;
        }
        if (i10 == childCount - 1) {
            return i11;
        }
        return i10 >= i11 ? i10 + 1 : i10;
    }

    @Override // android.view.ViewGroup
    protected boolean getChildStaticTransformation(final View child, final Transformation t10) {
        t10.clear();
        t10.setAlpha(child == this.V1 ? 1.0f : this.f64978b1);
        return true;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.f64982e2;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(final MotionEvent e10) {
        this.f64992v1.h(false);
        int iW = w((int) e10.getX(), (int) e10.getY());
        this.f64990q1 = iW;
        if (iW >= 0) {
            View childAt = getChildAt(iW - this.f64283b);
            this.f64991r1 = childAt;
            childAt.setPressed(true);
        }
        this.f64984f2 = true;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(final MotionEvent e10, final MotionEvent e11, final float velocityX, final float velocityY) {
        if (!this.f64977a2) {
            removeCallbacks(this.L1);
            if (!this.f64980c2) {
                this.f64980c2 = true;
            }
        }
        this.f64992v1.g((int) (-velocityX));
        return true;
    }

    @Override // android.view.View
    protected void onFocusChanged(final boolean gainFocus, final int direction, final Rect previouslyFocusedRect) {
        View view;
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        if (!gainFocus || (view = this.V1) == null) {
            return;
        }
        view.requestFocus(direction);
        this.V1.setSelected(true);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(final int keyCode, final KeyEvent event) {
        if (keyCode != 66) {
            switch (keyCode) {
                case 21:
                    if (X()) {
                        playSoundEffect(1);
                    }
                    return true;
                case 22:
                    if (W()) {
                        playSoundEffect(3);
                    }
                    return true;
                case 23:
                    this.f64981d2 = true;
                    break;
            }
        } else {
            this.f64981d2 = true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(final int keyCode, final KeyEvent event) {
        if (keyCode != 23 && keyCode != 66) {
            return super.onKeyUp(keyCode, event);
        }
        if (this.f64981d2 && this.f64301t > 0) {
            L(this.V1);
            postDelayed(new b(), ViewConfiguration.getPressedStateDuration());
            View childAt = getChildAt(this.f64298q - this.f64283b);
            int i10 = this.f64298q;
            n(childAt, i10, this.I.getItemId(i10));
        }
        this.f64981d2 = false;
        return true;
    }

    @Override // com.join.mgps.customview.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(final boolean changed, final int l10, final int t10, final int r10, final int b10) {
        super.onLayout(changed, l10, t10, r10, b10);
        this.f64291j = true;
        v(0, false);
        this.f64291j = false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(final MotionEvent e10) {
        if (this.f64990q1 < 0) {
            return;
        }
        performHapticFeedback(0);
        K(this.f64991r1, this.f64990q1, i(this.f64990q1));
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(final MotionEvent e10, final MotionEvent e11, final float distanceX, final float distanceY) {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (this.f64977a2) {
            if (this.f64980c2) {
                this.f64980c2 = false;
            }
        } else if (this.f64984f2) {
            if (!this.f64980c2) {
                this.f64980c2 = true;
            }
            postDelayed(this.L1, 250L);
        }
        g0(((int) distanceX) * (-1));
        this.f64984f2 = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(final MotionEvent e10) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(final MotionEvent e10) {
        int i10 = this.f64990q1;
        if (i10 < 0) {
            return false;
        }
        d0(i10 - this.f64283b);
        if (!this.f64979b2 && this.f64990q1 != this.f64298q) {
            return true;
        }
        View view = this.f64991r1;
        int i11 = this.f64990q1;
        n(view, i11, this.I.getItemId(i11));
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(final MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        boolean zOnTouchEvent = this.f64989p1.onTouchEvent(event);
        int action = event.getAction();
        if (action == 1) {
            b0();
        } else if (action == 3) {
            Z();
        }
        return zOnTouchEvent;
    }

    @Override // com.join.mgps.customview.AdapterView
    void p() {
        if (this.f64980c2) {
            return;
        }
        super.p();
    }

    public void setAnimationDuration(final int animationDurationMillis) {
        this.f64988p0 = animationDurationMillis;
    }

    public void setCallbackDuringFling(final boolean shouldCallback) {
        this.f64977a2 = shouldCallback;
    }

    public void setCallbackOnUnselectedItemClick(final boolean shouldCallback) {
        this.f64979b2 = shouldCallback;
    }

    public void setGravity(final int gravity) {
        if (this.f64987l1 != gravity) {
            this.f64987l1 = gravity;
            requestLayout();
        }
    }

    @Override // com.join.mgps.customview.AdapterView
    void setSelectedPositionInt(final int position) {
        super.setSelectedPositionInt(position);
        h0();
    }

    public void setSpacing(final int spacing) {
        this.W = spacing;
    }

    public void setUnselectedAlpha(final float unselectedAlpha) {
        this.f64978b1 = unselectedAlpha;
    }

    @Override // android.view.View
    public boolean showContextMenu() {
        int i10;
        if (!isPressed() || (i10 = this.f64298q) < 0) {
            return false;
        }
        return K(getChildAt(i10 - this.f64283b), this.f64298q, this.f64299r);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(final View originalView) {
        int iJ = j(originalView);
        if (iJ < 0) {
            return false;
        }
        return K(originalView, iJ, this.I.getItemId(iJ));
    }

    @Override // com.join.mgps.customview.AbsSpinner
    void v(final int delta, final boolean animate) {
        this.f64985g2 = false;
        if (this.f64295n) {
            k();
        }
        if (this.f64301t == 0) {
            y();
            return;
        }
        int i10 = this.f64296o;
        if (i10 >= 0) {
            setSelectedPositionInt(i10);
        }
        x();
        detachAllViewsFromParent();
        this.f64986i1 = 0;
        this.f64983f1 = 0;
        int i11 = this.f64298q;
        this.f64283b = i11;
        V(i11, 0, 0, true).offsetLeftAndRight(getGalleryLockPoint());
        Q();
        N();
        this.T.a();
        invalidate();
        e();
        this.f64295n = false;
        this.f64288g = false;
        setNextSelectedPositionInt(this.f64298q);
        h0();
    }

    public Gallery(final Context context, final AttributeSet attrs) {
        this(context, attrs, R.attr.galleryStyle);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(final AttributeSet attrs) {
        return new ViewGroup.LayoutParams(getContext(), attrs);
    }

    public Gallery(final Context context, final AttributeSet attrs, final int defStyle) {
        super(context, attrs, defStyle);
        this.W = 0;
        this.f64988p0 = 400;
        this.f64992v1 = new c();
        this.L1 = new a();
        this.f64977a2 = true;
        this.f64979b2 = true;
        this.f64985g2 = true;
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.f64989p1 = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
    }
}
