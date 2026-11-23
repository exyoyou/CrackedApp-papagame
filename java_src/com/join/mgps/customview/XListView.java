package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class XListView extends ListView implements AbsListView.OnScrollListener {
    protected static final float A = 2.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f66060v = "XListView";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected static final int f66061w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected static final int f66062x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected static final int f66063y = 400;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected static final int f66064z = 50;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f66065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f66066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Scroller f66067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AbsListView.OnScrollListener f66068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f66069f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected j f66070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected XListViewHeader f66071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f66072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected TextView f66073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f66075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected AtomicBoolean f66076m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected XListViewFooter f66077n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f66078o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f66079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f66080q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f66081r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f66082s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f66083t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f66084u;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListView xListView = XListView.this;
            xListView.f66074k = xListView.f66072i.getHeight();
            XListView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XListView xListView = XListView.this;
            xListView.f66079p = true;
            xListView.f66077n.setState(2);
            i iVar = XListView.this.f66069f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public XListView(Context context) {
        super(context);
        this.f66065b = -1.0f;
        this.f66066c = -1.0f;
        this.f66075l = true;
        this.f66076m = new AtomicBoolean(false);
        this.f66080q = false;
        this.f66083t = 0;
        this.f66084u = false;
        e(context);
        setFriction(ViewConfiguration.getScrollFriction() * 2.0f);
        setFastScrollEnabled(false);
    }

    private void h() {
        if (!com.join.android.app.common.utils.m.j(getContext()) || this.f66076m.get() || !this.f66078o || this.f66079p || getLastVisiblePosition() < this.f66081r - this.f66083t) {
            return;
        }
        this.f66079p = true;
        this.f66077n.setState(2);
        i iVar = this.f66069f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void b() {
        this.f66078o = false;
        this.f66077n.a();
        this.f66077n.setOnClickListener(null);
    }

    public void c() {
        this.f66075l = false;
        this.f66072i.setVisibility(4);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66067d.computeScrollOffset()) {
            if (this.f66082s == 0) {
                this.f66071h.setVisibleHeight(this.f66067d.getCurrY());
            } else {
                this.f66077n.setBottomMargin(this.f66067d.getCurrY());
            }
            postInvalidate();
            f();
        }
        super.computeScroll();
    }

    public void d() {
        this.f66078o = false;
        this.f66077n.a();
    }

    protected void e(Context context) {
        this.f66067d = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66071h = xListViewHeader;
        this.f66072i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66073j = (TextView) this.f66071h.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f66071h);
        this.f66077n = new XListViewFooter(context);
        this.f66071h.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        b();
        c();
    }

    protected void f() {
        AbsListView.OnScrollListener onScrollListener = this.f66068e;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean g() {
        return this.f66076m.get();
    }

    public void i() {
        this.f66078o = true;
        this.f66075l = true;
        this.f66077n.setState(0);
    }

    protected void j() {
        int bottomMargin = this.f66077n.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66082s = 1;
            this.f66067d.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void k() {
        int i10;
        int visibleHeight = this.f66071h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66076m.get() || visibleHeight > this.f66074k) {
            if (!this.f66076m.get() || visibleHeight <= (i10 = this.f66074k)) {
                i10 = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66082s = 0;
            this.f66067d.startScroll(0, visibleHeight, 0, i11, 400);
            invalidate();
        }
    }

    protected void l(int disy) {
        int i10;
        int visibleHeight = this.f66071h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66076m.get() || visibleHeight > this.f66074k) {
            if (!this.f66076m.get() || visibleHeight <= (i10 = this.f66074k)) {
                i10 = 0;
            }
            this.f66082s = 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66067d.startScroll(0, visibleHeight, 0, i11 + 100, 400);
            invalidate();
        }
    }

    public void m() {
        this.f66076m.set(true);
        this.f66071h.setState(2);
        t(this.f66074k);
        k();
    }

    public void n() {
        this.f66078o = true;
        this.f66077n.setState(1);
        this.f66077n.f();
    }

    protected void o() {
        if (!this.f66078o || this.f66077n.getBottomMargin() <= 50 || this.f66079p) {
            return;
        }
        this.f66079p = true;
        this.f66077n.setState(2);
        i iVar = this.f66069f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        try {
            super.onLayout(changed, l10, t10, r10, b10);
            if (this.f66080q || getAdapter() == null || getLastVisiblePosition() == getAdapter().getCount() - 1) {
                return;
            }
            this.f66080q = true;
            addFooterView(this.f66077n);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f66081r = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66068e;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        int firstVisiblePosition = view.getFirstVisiblePosition();
        int childCount = view.getChildCount();
        if (scrollState == 0 || firstVisiblePosition + childCount > this.f66081r) {
            h();
        }
        AbsListView.OnScrollListener onScrollListener = this.f66068e;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66065b == -1.0f) {
            this.f66065b = ev.getRawY();
        }
        if (this.f66066c == -1.0f) {
            this.f66066c = ev.getRawX();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66065b = ev.getRawY();
            this.f66066c = ev.getRawX();
        } else if (action != 2) {
            this.f66065b = -1.0f;
            if (getFirstVisiblePosition() == 0) {
                if (!this.f66076m.get() && this.f66075l) {
                    p();
                    k();
                }
            } else if (getLastVisiblePosition() == this.f66081r - 1) {
                o();
                j();
            }
        } else {
            float rawY = ev.getRawY() - this.f66065b;
            this.f66065b = ev.getRawY();
            if (getFirstVisiblePosition() != 0 || ((this.f66071h.getVisibleHeight() <= 0 && rawY <= 0.0f) || this.f66076m.get())) {
                if (getLastVisiblePosition() != this.f66081r - 1 || ((this.f66077n.getBottomMargin() <= 0 && rawY >= 0.0f) || this.f66079p)) {
                    if (this.f66083t != 0) {
                        h();
                    }
                } else if (this.f66078o) {
                    s((-rawY) / 2.0f);
                }
            } else if (this.f66075l && !this.f66076m.get()) {
                t(rawY / 2.0f);
                f();
            }
        }
        return super.onTouchEvent(ev);
    }

    protected void p() {
        if (!this.f66075l || this.f66071h.getVisibleHeight() <= this.f66074k || this.f66076m.get()) {
            return;
        }
        this.f66076m.set(true);
        this.f66071h.setState(2);
        j jVar = this.f66070g;
        if (jVar != null) {
            jVar.onRefresh();
        }
        if (this.f66084u) {
            this.f66078o = true;
            this.f66077n.f();
            this.f66077n.setState(0);
        }
    }

    public void q() {
        if (this.f66079p && this.f66078o) {
            this.f66079p = false;
            this.f66077n.setState(0);
        }
    }

    public void r() {
        if (this.f66076m.get()) {
            this.f66076m.set(false);
            k();
        }
    }

    protected void s(float delta) {
        int bottomMargin = this.f66077n.getBottomMargin() + ((int) delta);
        if (this.f66078o && !this.f66079p) {
            if (bottomMargin > 50) {
                this.f66077n.setState(1);
            } else {
                this.f66077n.setState(0);
            }
        }
        this.f66077n.setBottomMargin(bottomMargin);
    }

    public void setNoMore() {
        q();
        this.f66077n.f();
        this.f66077n.setState(3);
        this.f66078o = false;
        this.f66077n.setOnClickListener(null);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66068e = l10;
    }

    public void setPreLoadCount(int count) {
        this.f66083t = count;
    }

    public void setPullLoadEnable(i loadMoreListener) {
        this.f66078o = true;
        this.f66084u = true;
        this.f66069f = loadMoreListener;
        this.f66079p = false;
        this.f66077n.f();
        this.f66077n.setState(0);
        this.f66077n.setOnClickListener(new b());
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f66075l = true;
        this.f66072i.setVisibility(0);
        this.f66070g = refreshListener;
    }

    protected void t(float delta) {
        XListViewHeader xListViewHeader = this.f66071h;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66075l && !this.f66076m.get()) {
            if (this.f66071h.getVisibleHeight() > this.f66074k) {
                this.f66071h.setState(1);
            } else {
                this.f66071h.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        super.setAdapter(adapter);
    }

    public XListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66065b = -1.0f;
        this.f66066c = -1.0f;
        this.f66075l = true;
        this.f66076m = new AtomicBoolean(false);
        this.f66080q = false;
        this.f66083t = 0;
        this.f66084u = false;
        e(context);
    }

    public XListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66065b = -1.0f;
        this.f66066c = -1.0f;
        this.f66075l = true;
        this.f66076m = new AtomicBoolean(false);
        this.f66080q = false;
        this.f66083t = 0;
        this.f66084u = false;
        e(context);
    }
}
