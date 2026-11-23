package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.h1;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class XListView4Forum extends ListView implements AbsListView.OnScrollListener {
    protected static final int A = 400;
    protected static final int B = 50;
    protected static final float C = 2.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f66147x = "XListView";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected static final int f66148y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected static final int f66149z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f66150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f66151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Scroller f66152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AbsListView.OnScrollListener f66153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f66154f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected j f66155g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected XListViewHeader f66156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f66157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected TextView f66158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66159k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f66160l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected AtomicBoolean f66161m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected XListViewFooter f66162n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f66163o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f66164p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f66165q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f66166r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f66167s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f66168t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f66169u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ViewGroup f66170v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f66171w;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListView4Forum xListView4Forum = XListView4Forum.this;
            xListView4Forum.f66159k = xListView4Forum.f66157i.getHeight();
            XListView4Forum.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XListView4Forum xListView4Forum = XListView4Forum.this;
            xListView4Forum.f66164p = true;
            xListView4Forum.f66162n.setState(2);
            i iVar = XListView4Forum.this.f66154f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XListView4Forum(Context context) {
        super(context);
        this.f66150b = -1.0f;
        this.f66151c = -1.0f;
        this.f66160l = true;
        this.f66161m = new AtomicBoolean(false);
        this.f66165q = false;
        this.f66168t = 0;
        this.f66169u = false;
        this.f66171w = false;
        g(context);
    }

    private void setParentScrollAble(boolean flag) {
        ViewGroup viewGroup = this.f66170v;
        if (viewGroup != null) {
            viewGroup.requestDisallowInterceptTouchEvent(!flag);
        } else {
            getParent().requestDisallowInterceptTouchEvent(!flag);
        }
    }

    public void b() {
        this.f66171w = false;
    }

    public void c() {
        this.f66163o = false;
        this.f66162n.a();
        this.f66162n.setOnClickListener(null);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66152d.computeScrollOffset()) {
            if (this.f66167s == 0) {
                this.f66156h.setVisibleHeight(this.f66152d.getCurrY());
            } else {
                this.f66162n.setBottomMargin(this.f66152d.getCurrY());
            }
            postInvalidate();
            h();
        }
        super.computeScroll();
    }

    public void d() {
        this.f66160l = false;
        this.f66157i.setVisibility(4);
    }

    public void e() {
        this.f66171w = true;
    }

    public void f() {
        this.f66163o = false;
        this.f66162n.a();
    }

    protected void g(Context context) {
        this.f66152d = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66156h = xListViewHeader;
        this.f66157i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66158j = (TextView) this.f66156h.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f66156h);
        this.f66162n = new XListViewFooter(context);
        this.f66156h.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        c();
        d();
    }

    protected void h() {
        AbsListView.OnScrollListener onScrollListener = this.f66153e;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    protected void i() {
        int bottomMargin = this.f66162n.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66167s = 1;
            this.f66152d.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void j() {
        int i10;
        int visibleHeight = this.f66156h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66161m.get() || visibleHeight > this.f66159k) {
            if (!this.f66161m.get() || visibleHeight <= (i10 = this.f66159k)) {
                i10 = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66167s = 0;
            this.f66152d.startScroll(0, visibleHeight, 0, i11, 400);
            invalidate();
        }
    }

    protected void k(int disy) {
        int i10;
        int visibleHeight = this.f66156h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66161m.get() || visibleHeight > this.f66159k) {
            if (!this.f66161m.get() || visibleHeight <= (i10 = this.f66159k)) {
                i10 = 0;
            }
            this.f66167s = 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66152d.startScroll(0, visibleHeight, 0, i11 + 100, 400);
            invalidate();
        }
    }

    public void l() {
        this.f66161m.set(true);
        this.f66156h.setState(2);
        s(this.f66159k);
        j();
    }

    public void m() {
        this.f66163o = true;
        this.f66162n.f();
    }

    protected void n() {
        if (!this.f66163o || this.f66162n.getBottomMargin() <= 50 || this.f66164p) {
            return;
        }
        this.f66164p = true;
        this.f66162n.setState(2);
        i iVar = this.f66154f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    protected void o() {
        if (!this.f66160l || this.f66156h.getVisibleHeight() <= this.f66159k || this.f66161m.get()) {
            return;
        }
        this.f66161m.set(true);
        this.f66156h.setState(2);
        if (this.f66155g != null) {
            this.f66155g.onRefresh();
        }
        if (this.f66169u) {
            this.f66163o = true;
            this.f66162n.f();
            this.f66162n.setState(0);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (this.f66170v == null) {
            return super.onInterceptTouchEvent(ev);
        }
        boolean z10 = this.f66171w;
        h1.e("XListView", "onInterceptTouchEvent", " disallowIntercept=" + z10);
        if (!z10) {
            setParentScrollAble(true);
        } else if (ev.getAction() == 0) {
            h1.e("XListView", "onInterceptTouchEvent", " ACTION_DOWN");
            setParentScrollAble(false);
        } else if (ev.getAction() == 1) {
            h1.e("XListView", "onInterceptTouchEvent", " ACTION_UP");
            setParentScrollAble(true);
        } else if (ev.getAction() == 2) {
            h1.e("XListView", "onInterceptTouchEvent", " ACTION_MOVE");
        } else if (ev.getAction() == 3) {
            h1.e("XListView", "onInterceptTouchEvent", " ACTION_CANCEL");
            setParentScrollAble(true);
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        super.onLayout(changed, l10, t10, r10, b10);
        if (this.f66165q || getAdapter() == null || getLastVisiblePosition() == getAdapter().getCount() - 1) {
            return;
        }
        this.f66165q = true;
        addFooterView(this.f66162n);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScroll firstVisibleItem ");
        sb2.append(firstVisibleItem);
        sb2.append(" visibleItemCount ");
        sb2.append(visibleItemCount);
        sb2.append(" totalItemCount ");
        sb2.append(totalItemCount);
        this.f66166r = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66153e;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        AbsListView.OnScrollListener onScrollListener = this.f66153e;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        ViewGroup viewGroup;
        if (this.f66150b == -1.0f) {
            this.f66150b = ev.getRawY();
        }
        if (this.f66151c == -1.0f) {
            this.f66151c = ev.getRawX();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66150b = ev.getRawY();
            this.f66151c = ev.getRawX();
        } else if (action != 1) {
            if (action != 2) {
                this.f66150b = -1.0f;
                if (getFirstVisiblePosition() == 0) {
                    if (!this.f66161m.get()) {
                        o();
                        j();
                    }
                } else if (getLastVisiblePosition() == this.f66166r - 1) {
                    n();
                    i();
                }
            } else {
                float rawY = ev.getRawY() - this.f66150b;
                this.f66150b = ev.getRawY();
                if (getFirstVisiblePosition() != 0 || ((this.f66156h.getVisibleHeight() <= 0 && rawY <= 0.0f) || this.f66161m.get())) {
                    if (getLastVisiblePosition() != this.f66166r - 1 || ((this.f66162n.getBottomMargin() <= 0 && rawY >= 0.0f) || this.f66164p)) {
                        if (this.f66168t != 0 && !this.f66161m.get() && this.f66163o && !this.f66164p && getLastVisiblePosition() >= this.f66166r - this.f66168t) {
                            this.f66164p = true;
                            this.f66162n.setState(2);
                            i iVar = this.f66154f;
                            if (iVar != null) {
                                iVar.onLoadMore();
                            }
                        }
                    } else if (this.f66163o) {
                        r((-rawY) / 2.0f);
                    }
                } else if (this.f66160l && !this.f66161m.get()) {
                    s(rawY / 2.0f);
                    h();
                }
                float rawX = ev.getRawX() - this.f66151c;
                this.f66151c = ev.getRawX();
                h1.e("XListView", "deltaY=" + rawY + " deltaX=" + rawX);
                if (Math.abs(rawY) >= Math.abs(rawX) || (viewGroup = this.f66170v) != null) {
                    if (rawY > 0.0f) {
                        if (getFirstVisiblePosition() == 0) {
                            h1.e("XListView", "SCROLL DOWN -- ParentScrollAble=true");
                            setParentScrollAble(true);
                        } else {
                            h1.e("XListView", "SCROLL DOWN -- ParentScrollAble=false");
                            setParentScrollAble(false);
                        }
                    } else if (rawY < 0.0f) {
                        h1.e("XListView", "SCROLL UP");
                        if (getLastVisiblePosition() == this.f66166r - 1) {
                            h1.e("XListView", "SCROLL UP -- ParentScrollAble=true");
                            setParentScrollAble(true);
                        } else {
                            h1.e("XListView", "SCROLL UP -- ParentScrollAble=false");
                            setParentScrollAble(false);
                        }
                    }
                } else if (viewGroup == null) {
                    h1.e("XListView", "SCROLL HORIZONTAL");
                    if (this.f66171w) {
                        setParentScrollAble(false);
                    } else {
                        setParentScrollAble(true);
                    }
                }
            }
        }
        return super.onTouchEvent(ev);
    }

    public void p() {
        if (this.f66164p && this.f66163o) {
            this.f66164p = false;
            this.f66162n.setState(0);
        }
    }

    public void q() {
        if (this.f66161m.get()) {
            this.f66161m.set(false);
            j();
        }
    }

    protected void r(float delta) {
        int bottomMargin = this.f66162n.getBottomMargin() + ((int) delta);
        if (this.f66163o && !this.f66164p) {
            if (bottomMargin > 50) {
                this.f66162n.setState(1);
            } else {
                this.f66162n.setState(0);
            }
        }
        this.f66162n.setBottomMargin(bottomMargin);
    }

    protected void s(float delta) {
        XListViewHeader xListViewHeader = this.f66156h;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66160l && !this.f66161m.get()) {
            if (this.f66156h.getVisibleHeight() > this.f66159k) {
                this.f66156h.setState(1);
            } else {
                this.f66156h.setState(0);
            }
        }
        setSelection(0);
    }

    public void setNoMore() {
        p();
        this.f66162n.f();
        this.f66162n.setState(3);
        this.f66163o = false;
        this.f66162n.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66153e = l10;
    }

    public void setParentIntercepView(ViewGroup vg) {
        this.f66170v = vg;
    }

    public void setPreLoadCount(int count) {
        this.f66168t = count;
    }

    public void setPullLoadEnable(i loadMoreListener) {
        this.f66163o = true;
        this.f66169u = true;
        this.f66154f = loadMoreListener;
        this.f66164p = false;
        this.f66162n.f();
        this.f66162n.setState(0);
        this.f66162n.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f66160l = true;
        this.f66157i.setVisibility(0);
        this.f66155g = refreshListener;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        super.setAdapter(adapter);
    }

    public XListView4Forum(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66150b = -1.0f;
        this.f66151c = -1.0f;
        this.f66160l = true;
        this.f66161m = new AtomicBoolean(false);
        this.f66165q = false;
        this.f66168t = 0;
        this.f66169u = false;
        this.f66171w = false;
        g(context);
    }

    public XListView4Forum(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66150b = -1.0f;
        this.f66151c = -1.0f;
        this.f66160l = true;
        this.f66161m = new AtomicBoolean(false);
        this.f66165q = false;
        this.f66168t = 0;
        this.f66169u = false;
        this.f66171w = false;
        g(context);
    }
}
