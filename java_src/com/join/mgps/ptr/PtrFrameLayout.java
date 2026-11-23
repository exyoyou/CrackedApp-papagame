package com.join.mgps.ptr;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class PtrFrameLayout extends ViewGroup {
    public static final byte F = 1;
    public static final byte G = 2;
    public static final byte H = 3;
    public static final byte I = 4;
    private static final boolean J = true;
    public static boolean K = false;
    private static int L = 1;
    private static byte M = 1;
    private static byte N = 2;
    private static byte O = 4;
    private static byte P = 8;
    private static byte Q = 3;
    protected int A;
    private float B;
    private float C;
    private float D;
    private float E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte f71954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final String f71955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected View f71956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f71957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f71959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f71960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f71961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f71962j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f71963k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f71964l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.ptr.b f71965m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private c f71966n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f71967o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f71968p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f71969q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f71970r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f71971s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MotionEvent f71972t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private e f71973u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f71974v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f71975w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.ptr.indicator.a f71976x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f71977y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Runnable f71978z;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrFrameLayout.this.B();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PtrFrameLayout.K) {
                z6.a.a(PtrFrameLayout.this.f71955c, "mRefreshCompleteHook resume.");
            }
            PtrFrameLayout.this.u(true);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f71981b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Scroller f71982c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f71983d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f71984e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f71985f;

        public c() {
            this.f71982c = new Scroller(PtrFrameLayout.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            g();
            if (this.f71982c.isFinished()) {
                return;
            }
            this.f71982c.forceFinished(true);
        }

        private void e() {
            if (PtrFrameLayout.K) {
                PtrFrameLayout ptrFrameLayout = PtrFrameLayout.this;
                z6.a.p(ptrFrameLayout.f71955c, "finish, currentPos:%s", Integer.valueOf(ptrFrameLayout.f71976x.d()));
            }
            g();
            PtrFrameLayout.this.x();
        }

        private void g() {
            this.f71983d = false;
            this.f71981b = 0;
            PtrFrameLayout.this.removeCallbacks(this);
        }

        public void a() {
            if (this.f71983d) {
                if (!this.f71982c.isFinished()) {
                    this.f71982c.forceFinished(true);
                }
                PtrFrameLayout.this.w();
                g();
            }
        }

        public void h(int to, int duration) {
            if (PtrFrameLayout.this.f71976x.t(to)) {
                return;
            }
            int iD = PtrFrameLayout.this.f71976x.d();
            this.f71984e = iD;
            this.f71985f = to;
            int i10 = to - iD;
            if (PtrFrameLayout.K) {
                z6.a.c(PtrFrameLayout.this.f71955c, "tryToScrollTo: start: %s, distance:%s, to:%s", Integer.valueOf(iD), Integer.valueOf(i10), Integer.valueOf(to));
            }
            PtrFrameLayout.this.removeCallbacks(this);
            this.f71981b = 0;
            if (!this.f71982c.isFinished()) {
                this.f71982c.forceFinished(true);
            }
            this.f71982c.startScroll(0, 0, 0, i10, duration);
            PtrFrameLayout.this.post(this);
            this.f71983d = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = !this.f71982c.computeScrollOffset() || this.f71982c.isFinished();
            int currY = this.f71982c.getCurrY();
            int i10 = currY - this.f71981b;
            if (PtrFrameLayout.K && i10 != 0) {
                z6.a.p(PtrFrameLayout.this.f71955c, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s", Boolean.valueOf(z10), Integer.valueOf(this.f71984e), Integer.valueOf(this.f71985f), Integer.valueOf(PtrFrameLayout.this.f71976x.d()), Integer.valueOf(currY), Integer.valueOf(this.f71981b), Integer.valueOf(i10));
            }
            if (z10) {
                e();
                return;
            }
            this.f71981b = currY;
            PtrFrameLayout.this.t(i10);
            PtrFrameLayout.this.post(this);
        }
    }

    public PtrFrameLayout(Context context) {
        this(context, null);
    }

    private void A() {
        this.f71975w = System.currentTimeMillis();
        if (this.f71964l.j()) {
            this.f71964l.e(this);
            if (K) {
                z6.a.j(this.f71955c, "PtrUIHandler: onUIRefreshBegin");
            }
        }
        com.join.mgps.ptr.b bVar = this.f71965m;
        if (bVar != null) {
            bVar.onRefreshBegin(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        this.f71954b = (byte) 4;
        if (!this.f71966n.f71983d || !l()) {
            u(false);
        } else if (K) {
            z6.a.c(this.f71955c, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s", Boolean.valueOf(this.f71966n.f71983d), Integer.valueOf(this.f71970r));
        }
    }

    private void E() {
        if (K) {
            z6.a.a(this.f71955c, "send cancel event");
        }
        MotionEvent motionEvent = this.f71972t;
        if (motionEvent == null) {
            return;
        }
        k(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ((long) ViewConfiguration.getLongPressTimeout()), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void F() {
        if (K) {
            z6.a.a(this.f71955c, "send down event");
        }
        MotionEvent motionEvent = this.f71972t;
        k(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void G() {
        if (this.f71976x.x()) {
            return;
        }
        this.f71966n.h(0, this.f71960h);
    }

    private void H() {
        G();
    }

    private void I() {
        G();
    }

    private void J() {
        G();
    }

    private boolean K() {
        byte b10 = this.f71954b;
        if ((b10 != 4 && b10 != 2) || !this.f71976x.u()) {
            return false;
        }
        if (this.f71964l.j()) {
            this.f71964l.d(this);
            if (K) {
                z6.a.j(this.f71955c, "PtrUIHandler: onUIReset");
            }
        }
        this.f71954b = (byte) 1;
        i();
        return true;
    }

    private boolean L() {
        if (this.f71954b != 2) {
            return false;
        }
        if ((this.f71976x.v() && l()) || this.f71976x.w()) {
            this.f71954b = (byte) 3;
            A();
        }
        return false;
    }

    private void M(int change) {
        if (change == 0) {
            return;
        }
        boolean zX = this.f71976x.x();
        if (zX && !this.f71977y && this.f71976x.s()) {
            this.f71977y = true;
            E();
        }
        if ((this.f71976x.p() && this.f71954b == 1) || (this.f71976x.n() && this.f71954b == 4 && m())) {
            this.f71954b = (byte) 2;
            this.f71964l.b(this);
            if (K) {
                z6.a.l(this.f71955c, "PtrUIHandler: onUIRefreshPrepare, mFlag %s", Integer.valueOf(this.f71970r));
            }
        }
        if (this.f71976x.o()) {
            K();
            if (zX) {
                F();
            }
        }
        if (this.f71954b == 2) {
            if (zX && !l() && this.f71962j && this.f71976x.b()) {
                L();
            }
            if (z() && this.f71976x.q()) {
                L();
            }
        }
        if (K) {
            z6.a.p(this.f71955c, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s", Integer.valueOf(change), Integer.valueOf(this.f71976x.d()), Integer.valueOf(this.f71976x.g()), Integer.valueOf(this.f71956d.getTop()), Integer.valueOf(this.f71968p));
        }
        this.f71963k.offsetTopAndBottom(change);
        if (!o()) {
            this.f71956d.offsetTopAndBottom(change);
        }
        invalidate();
        if (this.f71964l.j()) {
            this.f71964l.c(this, zX, this.f71954b, this.f71976x);
        }
        v(zX, this.f71954b, this.f71976x);
    }

    private void i() {
        this.f71970r &= ~Q;
    }

    private void r() {
        int iD = this.f71976x.d();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        View view = this.f71963k;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int i10 = marginLayoutParams.leftMargin + paddingLeft;
            int i11 = ((marginLayoutParams.topMargin + paddingTop) + iD) - this.f71968p;
            int measuredWidth = this.f71963k.getMeasuredWidth() + i10;
            int measuredHeight = this.f71963k.getMeasuredHeight() + i11;
            this.f71963k.layout(i10, i11, measuredWidth, measuredHeight);
            if (K) {
                z6.a.c(this.f71955c, "onLayout header: %s %s %s %s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
            }
        }
        if (this.f71956d != null) {
            if (o()) {
                iD = 0;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f71956d.getLayoutParams();
            int i12 = paddingLeft + marginLayoutParams2.leftMargin;
            int i13 = paddingTop + marginLayoutParams2.topMargin + iD;
            int measuredWidth2 = this.f71956d.getMeasuredWidth() + i12;
            int measuredHeight2 = this.f71956d.getMeasuredHeight() + i13;
            if (K) {
                z6.a.c(this.f71955c, "onLayout content: %s %s %s %s", Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(measuredWidth2), Integer.valueOf(measuredHeight2));
            }
            this.f71956d.layout(i12, i13, measuredWidth2, measuredHeight2);
        }
    }

    private void s(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        if (child == null) {
            return;
        }
        try {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) child.getLayoutParams();
            child.measure(ViewGroup.getChildMeasureSpec(parentWidthMeasureSpec, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(parentHeightMeasureSpec, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin, marginLayoutParams.height));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(float deltaY) {
        int i10 = 0;
        if (deltaY < 0.0f && this.f71976x.u()) {
            if (K) {
                z6.a.d(this.f71955c, String.format("has reached the top", new Object[0]));
                return;
            }
            return;
        }
        int iD = this.f71976x.d() + ((int) deltaY);
        if (!this.f71976x.M(iD)) {
            i10 = iD;
        } else if (K) {
            z6.a.d(this.f71955c, String.format("over top", new Object[0]));
        }
        this.f71976x.E(i10);
        M(i10 - this.f71976x.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(boolean ignoreHook) {
        if (this.f71976x.r() && !ignoreHook && this.f71973u != null) {
            if (K) {
                z6.a.a(this.f71955c, "notifyUIRefreshComplete mRefreshCompleteHook run.");
            }
            this.f71973u.d();
            return;
        }
        if (this.f71964l.j()) {
            if (K) {
                z6.a.j(this.f71955c, "PtrUIHandler: onUIRefreshComplete");
            }
            this.f71964l.a(this);
        }
        this.f71976x.B();
        I();
        K();
    }

    private void y(boolean stayForLoading) {
        L();
        byte b10 = this.f71954b;
        if (b10 != 3) {
            if (b10 == 4) {
                u(false);
                return;
            } else {
                H();
                return;
            }
        }
        if (!this.f71961i) {
            J();
        } else {
            if (!this.f71976x.v() || stayForLoading) {
                return;
            }
            this.f71966n.h(this.f71976x.h(), this.f71959g);
        }
    }

    private boolean z() {
        return (this.f71970r & Q) == N;
    }

    public final void C() {
        if (K) {
            z6.a.j(this.f71955c, "refreshComplete");
        }
        e eVar = this.f71973u;
        if (eVar != null) {
            eVar.a();
        }
        int iCurrentTimeMillis = (int) (((long) this.f71974v) - (System.currentTimeMillis() - this.f71975w));
        if (iCurrentTimeMillis <= 0) {
            if (K) {
                z6.a.a(this.f71955c, "performRefreshComplete at once");
            }
            B();
        } else {
            postDelayed(this.f71978z, iCurrentTimeMillis);
            if (K) {
                z6.a.c(this.f71955c, "performRefreshComplete after delay: %s", Integer.valueOf(iCurrentTimeMillis));
            }
        }
    }

    public void D(com.join.mgps.ptr.c ptrUIHandler) {
        this.f71964l = d.k(this.f71964l, ptrUIHandler);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        return p10 != null && (p10 instanceof LayoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        if (r0 != 3) goto L52;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.ptr.PtrFrameLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void e(com.join.mgps.ptr.c ptrUIHandler) {
        d.f(this.f71964l, ptrUIHandler);
    }

    public void f() {
        h(true, this.f71960h);
    }

    public void g(boolean atOnce) {
        h(atOnce, this.f71960h);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        return new LayoutParams(p10);
    }

    public View getContentView() {
        return this.f71956d;
    }

    public float getDurationToClose() {
        return this.f71959g;
    }

    public long getDurationToCloseHeader() {
        return this.f71960h;
    }

    public int getHeaderHeight() {
        return this.f71968p;
    }

    public View getHeaderView() {
        return this.f71963k;
    }

    public int getOffsetToKeepHeaderWhileLoading() {
        return this.f71976x.h();
    }

    public int getOffsetToRefresh() {
        return this.f71976x.i();
    }

    public float getRatioOfHeaderToHeightRefresh() {
        return this.f71976x.l();
    }

    public float getResistance() {
        return this.f71976x.m();
    }

    public void h(boolean atOnce, int duration) {
        if (this.f71954b != 1) {
            return;
        }
        this.f71970r |= atOnce ? M : N;
        this.f71954b = (byte) 2;
        if (this.f71964l.j()) {
            this.f71964l.b(this);
            if (K) {
                z6.a.l(this.f71955c, "PtrUIHandler: onUIRefreshPrepare, mFlag %s", Integer.valueOf(this.f71970r));
            }
        }
        this.f71966n.h(this.f71976x.i(), duration);
        if (atOnce) {
            this.f71954b = (byte) 3;
            A();
        }
    }

    public void j(boolean disable) {
        this.f71969q = disable;
    }

    public boolean k(MotionEvent e10) {
        return super.dispatchTouchEvent(e10);
    }

    public boolean l() {
        return (this.f71970r & Q) > 0;
    }

    public boolean m() {
        return (this.f71970r & O) > 0;
    }

    public boolean n() {
        return this.f71961i;
    }

    public boolean o() {
        return (this.f71970r & P) > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f71966n;
        if (cVar != null) {
            cVar.d();
        }
        Runnable runnable = this.f71978z;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        int childCount = getChildCount();
        if (childCount > 2) {
            throw new IllegalStateException("PtrFrameLayout only can host 2 elements");
        }
        if (childCount == 2) {
            int i10 = this.f71957e;
            if (i10 != 0 && this.f71963k == null) {
                this.f71963k = findViewById(i10);
            }
            int i11 = this.f71958f;
            if (i11 != 0 && this.f71956d == null) {
                this.f71956d = findViewById(i11);
            }
            if (this.f71956d == null || this.f71963k == null) {
                View childAt = getChildAt(0);
                View childAt2 = getChildAt(1);
                if (childAt instanceof com.join.mgps.ptr.c) {
                    this.f71963k = childAt;
                    this.f71956d = childAt2;
                } else if (childAt2 instanceof com.join.mgps.ptr.c) {
                    this.f71963k = childAt2;
                    this.f71956d = childAt;
                } else {
                    View view = this.f71956d;
                    if (view == null && this.f71963k == null) {
                        this.f71963k = childAt;
                        this.f71956d = childAt2;
                    } else {
                        View view2 = this.f71963k;
                        if (view2 == null) {
                            if (view == childAt) {
                                childAt = childAt2;
                            }
                            this.f71963k = childAt;
                        } else {
                            if (view2 == childAt) {
                                childAt = childAt2;
                            }
                            this.f71956d = childAt;
                        }
                    }
                }
            }
        } else if (childCount == 1) {
            this.f71956d = getChildAt(0);
        } else {
            TextView textView = new TextView(getContext());
            textView.setClickable(true);
            textView.setTextColor(-39424);
            textView.setGravity(17);
            textView.setTextSize(20.0f);
            textView.setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
            this.f71956d = textView;
            addView(textView);
        }
        View view3 = this.f71963k;
        if (view3 != null) {
            view3.bringToFront();
        }
        super.onFinishInflate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean flag, int i10, int j10, int k10, int l10) {
        r();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (K) {
            z6.a.c(this.f71955c, "onMeasure frame: width: %s, h eight: %s, padding: %s %s %s %s", Integer.valueOf(getMeasuredHeight()), Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getPaddingLeft()), Integer.valueOf(getPaddingRight()), Integer.valueOf(getPaddingTop()), Integer.valueOf(getPaddingBottom()));
        }
        View view = this.f71963k;
        if (view != null) {
            measureChildWithMargins(view, widthMeasureSpec, 0, heightMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f71963k.getLayoutParams();
            int measuredHeight = this.f71963k.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            this.f71968p = measuredHeight;
            this.f71976x.F(measuredHeight);
        }
        View view2 = this.f71956d;
        if (view2 != null) {
            s(view2, widthMeasureSpec, heightMeasureSpec);
            if (K) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f71956d.getLayoutParams();
                z6.a.c(this.f71955c, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s", Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getMeasuredHeight()), Integer.valueOf(marginLayoutParams2.leftMargin), Integer.valueOf(marginLayoutParams2.topMargin), Integer.valueOf(marginLayoutParams2.rightMargin), Integer.valueOf(marginLayoutParams2.bottomMargin));
                z6.a.c(this.f71955c, "onMeasure, currentPos: %s, lastPos: %s, top: %s", Integer.valueOf(this.f71976x.d()), Integer.valueOf(this.f71976x.g()), Integer.valueOf(this.f71956d.getTop()));
            }
        }
    }

    public boolean p() {
        return this.f71962j;
    }

    public boolean q() {
        return this.f71954b == 3;
    }

    public void setDurationToClose(int duration) {
        this.f71959g = duration;
    }

    public void setDurationToCloseHeader(int duration) {
        this.f71960h = duration;
    }

    public void setEnabledNextPtrAtOnce(boolean enable) {
        if (enable) {
            this.f71970r |= O;
        } else {
            this.f71970r &= ~O;
        }
    }

    public void setHeaderView(View header) {
        View view = this.f71963k;
        if (view != null && header != null && view != header) {
            removeView(view);
        }
        if (header.getLayoutParams() == null) {
            header.setLayoutParams(new LayoutParams(-1, -2));
        }
        this.f71963k = header;
        addView(header);
    }

    @Deprecated
    public void setInterceptEventWhileWorking(boolean yes) {
    }

    public void setKeepHeaderWhenRefresh(boolean keepOrNot) {
        this.f71961i = keepOrNot;
    }

    public void setLoadingMinTime(int time) {
        this.f71974v = time;
    }

    public void setOffsetToKeepHeaderWhileLoading(int offset) {
        this.f71976x.H(offset);
    }

    public void setOffsetToRefresh(int offset) {
        this.f71976x.I(offset);
    }

    public void setPinContent(boolean pinContent) {
        if (pinContent) {
            this.f71970r |= P;
        } else {
            this.f71970r &= ~P;
        }
    }

    public void setPtrHandler(com.join.mgps.ptr.b ptrHandler) {
        this.f71965m = ptrHandler;
    }

    public void setPtrIndicator(com.join.mgps.ptr.indicator.a slider) {
        com.join.mgps.ptr.indicator.a aVar = this.f71976x;
        if (aVar != null && aVar != slider) {
            slider.a(aVar);
        }
        this.f71976x = slider;
    }

    public void setPullToRefresh(boolean pullToRefresh) {
        this.f71962j = pullToRefresh;
    }

    public void setRatioOfHeaderHeightToRefresh(float ratio) {
        this.f71976x.J(ratio);
    }

    public void setRefreshCompleteHook(e hook) {
        this.f71973u = hook;
        hook.c(new b());
    }

    public void setResistance(float resistance) {
        this.f71976x.K(resistance);
    }

    protected void v(boolean isInTouching, byte status, com.join.mgps.ptr.indicator.a mPtrIndicator) {
    }

    protected void w() {
        if (this.f71976x.r() && l()) {
            if (K) {
                z6.a.a(this.f71955c, "call onRelease after scroll abort");
            }
            y(true);
        }
    }

    protected void x() {
        if (this.f71976x.r() && l()) {
            if (K) {
                z6.a.a(this.f71955c, "call onRelease after scroll finish");
            }
            y(true);
        }
    }

    public PtrFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    public PtrFrameLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f71954b = (byte) 1;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ptr-frame-");
        int i10 = L + 1;
        L = i10;
        sb2.append(i10);
        this.f71955c = sb2.toString();
        this.f71957e = 0;
        this.f71958f = 0;
        this.f71959g = 200;
        this.f71960h = 400;
        this.f71961i = true;
        this.f71962j = false;
        this.f71964l = d.h();
        this.f71969q = false;
        this.f71970r = 0;
        this.f71971s = false;
        this.f71974v = 500;
        this.f71975w = 0L;
        this.f71977y = false;
        this.f71978z = new a();
        this.f71976x = new com.join.mgps.ptr.indicator.a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.PtrFrameLayout, 0, 0);
        if (typedArrayObtainStyledAttributes != null) {
            this.f71957e = typedArrayObtainStyledAttributes.getResourceId(3, this.f71957e);
            this.f71958f = typedArrayObtainStyledAttributes.getResourceId(0, this.f71958f);
            com.join.mgps.ptr.indicator.a aVar = this.f71976x;
            aVar.K(typedArrayObtainStyledAttributes.getFloat(8, aVar.m()));
            this.f71959g = typedArrayObtainStyledAttributes.getInt(1, this.f71959g);
            this.f71960h = typedArrayObtainStyledAttributes.getInt(2, this.f71960h);
            this.f71976x.J(typedArrayObtainStyledAttributes.getFloat(7, this.f71976x.l()));
            this.f71961i = typedArrayObtainStyledAttributes.getBoolean(5, this.f71961i);
            this.f71962j = typedArrayObtainStyledAttributes.getBoolean(6, this.f71962j);
            this.A = typedArrayObtainStyledAttributes.getInt(4, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f71966n = new c();
        this.f71967o = ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2;
    }
}
