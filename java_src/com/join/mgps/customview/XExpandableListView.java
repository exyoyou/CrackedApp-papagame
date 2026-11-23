package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ExpandableListView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.g1;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class XExpandableListView extends ExpandableListView implements AbsListView.OnScrollListener {
    protected static final int A = 400;
    protected static final int B = 50;
    protected static final float C = 2.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f66033x = "XListView";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected static final int f66034y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected static final int f66035z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f66036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f66037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Scroller f66038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AbsListView.OnScrollListener f66039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f66040f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected j f66041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected XListViewHeader f66042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f66043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected TextView f66044j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66045k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f66046l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected AtomicBoolean f66047m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected XListViewFooter f66048n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f66049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f66050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f66051q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f66052r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f66053s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f66054t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f66055u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.ptr.a f66056v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private j f66057w;

    class a extends com.join.mgps.ptr.a {
        a() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            g1.g("onRefreshBegin----------");
            XExpandableListView.this.q();
            if (XExpandableListView.this.f66057w != null) {
                XExpandableListView.this.f66057w.onRefresh();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XExpandableListView xExpandableListView = XExpandableListView.this;
            xExpandableListView.f66050p = true;
            xExpandableListView.f66048n.setState(2);
            i iVar = XExpandableListView.this.f66040f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XExpandableListView(Context context) {
        super(context);
        this.f66036b = -1.0f;
        this.f66037c = -1.0f;
        this.f66046l = true;
        this.f66047m = new AtomicBoolean(false);
        this.f66051q = false;
        this.f66054t = 0;
        this.f66055u = false;
        this.f66056v = new a();
        f(context);
        setFriction(ViewConfiguration.getScrollFriction() * 2.0f);
        setFastScrollEnabled(false);
    }

    public void c() {
        this.f66049o = false;
        this.f66048n.a();
        this.f66048n.setOnClickListener(null);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66038d.computeScrollOffset()) {
            if (this.f66053s != 0) {
                this.f66048n.setBottomMargin(this.f66038d.getCurrY());
            }
            postInvalidate();
            g();
        }
        super.computeScroll();
    }

    public void d() {
        this.f66046l = false;
        this.f66043i.setVisibility(4);
    }

    public void e() {
        this.f66049o = false;
        this.f66048n.a();
    }

    protected void f(Context context) {
        this.f66038d = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66042h = xListViewHeader;
        this.f66043i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66044j = (TextView) this.f66042h.findViewById(R.id.xlistview_header_time);
        this.f66048n = new XListViewFooter(context);
        c();
        d();
        addFooterView(this.f66048n);
    }

    protected void g() {
        AbsListView.OnScrollListener onScrollListener = this.f66039e;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean h() {
        return this.f66047m.get();
    }

    public void i() {
        if (!com.join.android.app.common.utils.m.j(getContext()) || this.f66047m.get() || !this.f66049o || this.f66050p || getLastVisiblePosition() < this.f66052r - this.f66054t) {
            return;
        }
        this.f66050p = true;
        this.f66048n.setState(2);
        i iVar = this.f66040f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void j() {
        this.f66049o = true;
        this.f66046l = true;
        this.f66048n.setState(0);
    }

    protected void k() {
        int bottomMargin = this.f66048n.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66053s = 1;
            this.f66038d.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void l() {
        int i10;
        int visibleHeight = this.f66042h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66047m.get() || visibleHeight > this.f66045k) {
            if (!this.f66047m.get() || visibleHeight <= (i10 = this.f66045k)) {
                i10 = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66053s = 0;
            this.f66038d.startScroll(0, visibleHeight, 0, i11, 400);
            invalidate();
        }
    }

    protected void m(int disy) {
        int i10;
        int visibleHeight = this.f66042h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66047m.get() || visibleHeight > this.f66045k) {
            if (!this.f66047m.get() || visibleHeight <= (i10 = this.f66045k)) {
                i10 = 0;
            }
            this.f66053s = 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66038d.startScroll(0, visibleHeight, 0, i11 + 100, 400);
            invalidate();
        }
    }

    public void n() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).f();
    }

    public void o() {
        this.f66049o = true;
        this.f66048n.f();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScroll  ");
        sb2.append(firstVisibleItem);
        sb2.append(" visibleItemCount ");
        sb2.append(visibleItemCount);
        sb2.append(" totalItemCount ");
        sb2.append(totalItemCount);
        sb2.append(";mPullRefreshing=");
        sb2.append(this.f66047m.get());
        sb2.append(";mPullLoading=");
        sb2.append(this.f66050p);
        this.f66052r = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66039e;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("scrollStateChanged");
        sb2.append(scrollState);
        int firstVisiblePosition = view.getFirstVisiblePosition();
        int childCount = view.getChildCount();
        if (scrollState == 0 || firstVisiblePosition + childCount > this.f66052r) {
            i();
        }
        AbsListView.OnScrollListener onScrollListener = this.f66039e;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66036b == -1.0f) {
            this.f66036b = ev.getRawY();
        }
        if (this.f66037c == -1.0f) {
            this.f66037c = ev.getRawX();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66036b = ev.getRawY();
            this.f66037c = ev.getRawX();
        } else if (action != 2) {
            this.f66036b = -1.0f;
            if (getLastVisiblePosition() == this.f66052r - 1) {
                p();
                k();
            }
        } else {
            float rawY = ev.getRawY() - this.f66036b;
            this.f66036b = ev.getRawY();
            if (getLastVisiblePosition() != this.f66052r - 1 || ((this.f66048n.getBottomMargin() <= 0 && rawY >= 0.0f) || this.f66050p)) {
                if (this.f66054t != 0) {
                    i();
                }
            } else if (this.f66049o) {
                t((-rawY) / 2.0f);
            }
        }
        return super.onTouchEvent(ev);
    }

    protected void p() {
        if (!this.f66049o || this.f66048n.getBottomMargin() <= 50 || this.f66050p) {
            return;
        }
        this.f66050p = true;
        this.f66048n.setState(2);
        i iVar = this.f66040f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    protected void q() {
        if (this.f66055u) {
            this.f66049o = true;
            this.f66048n.f();
            this.f66048n.setState(0);
        }
    }

    public void r() {
        if (this.f66050p && this.f66049o) {
            this.f66050p = false;
            this.f66048n.setState(0);
        }
    }

    public void s() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).C();
    }

    public void setNoMore() {
        r();
        this.f66048n.f();
        this.f66048n.setState(3);
        this.f66049o = false;
        this.f66048n.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66039e = l10;
    }

    public void setPreLoadCount(int count) {
        this.f66054t = count;
    }

    public void setPullLoadEnable(i loadMoreListener) {
        this.f66049o = true;
        this.f66055u = true;
        this.f66040f = loadMoreListener;
        this.f66050p = false;
        this.f66048n.f();
        this.f66048n.setState(0);
        this.f66048n.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f66057w = refreshListener;
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).setPtrHandler(this.f66056v);
    }

    protected void t(float delta) {
        int bottomMargin = this.f66048n.getBottomMargin() + ((int) delta);
        if (this.f66049o && !this.f66050p) {
            if (bottomMargin > 50) {
                this.f66048n.setState(1);
            } else {
                this.f66048n.setState(0);
            }
        }
        this.f66048n.setBottomMargin(bottomMargin);
    }

    protected void u(float delta) {
        XListViewHeader xListViewHeader = this.f66042h;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66046l && !this.f66047m.get()) {
            if (this.f66042h.getVisibleHeight() > this.f66045k) {
                this.f66042h.setState(1);
            } else {
                this.f66042h.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        super.setAdapter(adapter);
    }

    public XExpandableListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66036b = -1.0f;
        this.f66037c = -1.0f;
        this.f66046l = true;
        this.f66047m = new AtomicBoolean(false);
        this.f66051q = false;
        this.f66054t = 0;
        this.f66055u = false;
        this.f66056v = new a();
        f(context);
    }

    public XExpandableListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66036b = -1.0f;
        this.f66037c = -1.0f;
        this.f66046l = true;
        this.f66047m = new AtomicBoolean(false);
        this.f66051q = false;
        this.f66054t = 0;
        this.f66055u = false;
        this.f66056v = new a();
        f(context);
    }
}
