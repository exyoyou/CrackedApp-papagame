package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.xrecyclerview.AppBarStateChangeListener;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class XListView2 extends ListView implements AbsListView.OnScrollListener {
    public static final String A = "XListView";
    protected static final int B = 0;
    protected static final int C = 1;
    protected static final int D = 400;
    protected static final int E = 50;
    protected static final float F = 2.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f66087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f66088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Scroller f66089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AbsListView.OnScrollListener f66090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f66091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected j f66092g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected XListViewHeader f66093h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f66094i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected TextView f66095j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66096k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f66097l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected AtomicBoolean f66098m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected XListViewFooter f66099n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f66100o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f66101p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f66102q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f66103r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f66104s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f66105t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f66106u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AppBarStateChangeListener.State f66107v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    DataSetObserver f66108w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.ptr.a f66109x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private j f66110y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    e f66111z;

    class a extends DataSetObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ListAdapter f66112a;

        a(final ListAdapter val$adapter) {
            this.f66112a = val$adapter;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ListAdapter listAdapter = this.f66112a;
            if (listAdapter == null || listAdapter.getCount() <= 20) {
                XListView2.this.k();
            }
        }
    }

    class b extends com.join.mgps.ptr.a {
        b() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return XListView2.this.d(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            g1.g("onRefreshBegin----------");
            XListView2.this.t();
            if (XListView2.this.f66110y != null) {
                XListView2.this.f66110y.onRefresh();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XListView2 xListView2 = XListView2.this;
            xListView2.f66101p = true;
            xListView2.f66099n.setState(2);
            i iVar = XListView2.this.f66091f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    class d extends AppBarStateChangeListener {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
        public void onStateChanged(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XListView2.this.f66107v = state;
        }
    }

    public interface e {
        void a(int scrollX, int scrollY, boolean clampedX, boolean clampedY);
    }

    public XListView2(Context context) {
        super(context);
        this.f66087b = -1.0f;
        this.f66088c = -1.0f;
        this.f66097l = true;
        this.f66098m = new AtomicBoolean(false);
        this.f66102q = false;
        this.f66105t = 0;
        this.f66106u = false;
        this.f66107v = AppBarStateChangeListener.State.EXPANDED;
        this.f66109x = new b();
        h(context);
        setFriction(ViewConfiguration.getScrollFriction() * 2.0f);
        setFastScrollEnabled(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66089d.computeScrollOffset()) {
            if (this.f66104s != 0) {
                this.f66099n.setBottomMargin(this.f66089d.getCurrY());
            }
            postInvalidate();
            i();
        }
        super.computeScroll();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    public boolean d(PtrFrameLayout frame, View content, View header) {
        return this.f66107v == AppBarStateChangeListener.State.EXPANDED && com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, this, header);
    }

    public void e() {
        this.f66100o = false;
        this.f66099n.a();
        this.f66099n.setOnClickListener(null);
    }

    public void f() {
        this.f66097l = false;
        this.f66094i.setVisibility(4);
    }

    public void g() {
        this.f66100o = false;
        this.f66099n.a();
    }

    protected void h(Context context) {
        this.f66089d = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66093h = xListViewHeader;
        this.f66094i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66095j = (TextView) this.f66093h.findViewById(R.id.xlistview_header_time);
        this.f66099n = new XListViewFooter(context);
        e();
        f();
        addFooterView(this.f66099n);
    }

    protected void i() {
        AbsListView.OnScrollListener onScrollListener = this.f66090e;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    public boolean j() {
        return this.f66098m.get();
    }

    public synchronized void k() {
        if (com.join.android.app.common.utils.m.j(getContext()) && !this.f66098m.get() && this.f66100o && this.f66103r > 1 && !this.f66101p && getLastVisiblePosition() >= this.f66103r - this.f66105t) {
            h1.e("XListView", "do-preload");
            this.f66101p = true;
            this.f66099n.setState(2);
            i iVar = this.f66091f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public void l() {
        this.f66100o = true;
        this.f66097l = true;
        this.f66099n.setState(0);
    }

    protected void m() {
        int bottomMargin = this.f66099n.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66104s = 1;
            this.f66089d.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void n() {
        int i10;
        int visibleHeight = this.f66093h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66098m.get() || visibleHeight > this.f66096k) {
            if (!this.f66098m.get() || visibleHeight <= (i10 = this.f66096k)) {
                i10 = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66104s = 0;
            this.f66089d.startScroll(0, visibleHeight, 0, i11, 400);
            invalidate();
        }
    }

    protected void o(int disy) {
        int i10;
        int visibleHeight = this.f66093h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66098m.get() || visibleHeight > this.f66096k) {
            if (!this.f66098m.get() || visibleHeight <= (i10 = this.f66096k)) {
                i10 = 0;
            }
            this.f66104s = 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66089d.startScroll(0, visibleHeight, 0, i11 + 100, 400);
            invalidate();
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        AppBarLayout appBarLayout;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (parent != null && !(parent instanceof androidx.coordinatorlayout.widget.CoordinatorLayout)) {
            parent = parent.getParent();
        }
        if (parent instanceof androidx.coordinatorlayout.widget.CoordinatorLayout) {
            androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout = (androidx.coordinatorlayout.widget.CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    appBarLayout = null;
                    break;
                }
                View childAt = coordinatorLayout.getChildAt(childCount);
                if (childAt instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) childAt;
                    break;
                }
                childCount--;
            }
            if (appBarLayout != null) {
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new d());
            }
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
        e eVar = this.f66111z;
        if (eVar != null) {
            eVar.a(scrollX, scrollY, clampedX, clampedY);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f66103r = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66090e;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        int firstVisiblePosition = view.getFirstVisiblePosition();
        int childCount = view.getChildCount();
        if (scrollState == 0 || firstVisiblePosition + childCount > this.f66103r) {
            h1.e("XListView", "onScrollStateChanged", "preload");
            k();
        }
        AbsListView.OnScrollListener onScrollListener = this.f66090e;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66087b == -1.0f) {
            this.f66087b = ev.getRawY();
        }
        if (this.f66088c == -1.0f) {
            this.f66088c = ev.getRawX();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66087b = ev.getRawY();
            this.f66088c = ev.getRawX();
        } else if (action != 2) {
            this.f66087b = -1.0f;
            if (getLastVisiblePosition() == this.f66103r - 1) {
                r();
                m();
            }
        } else {
            float rawY = ev.getRawY() - this.f66087b;
            this.f66087b = ev.getRawY();
            if (getLastVisiblePosition() != this.f66103r - 1 || ((this.f66099n.getBottomMargin() <= 0 && rawY >= 0.0f) || this.f66101p)) {
                if (this.f66105t != 0) {
                    k();
                }
            } else if (this.f66100o) {
                w((-rawY) / 2.0f);
            }
        }
        return super.onTouchEvent(ev);
    }

    @Override // android.view.View
    protected boolean overScrollBy(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        return super.overScrollBy(deltaX, deltaY, scrollX, scrollY, scrollRangeX, scrollRangeY, maxOverScrollX, maxOverScrollY, isTouchEvent);
    }

    public void p() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).f();
        } else {
            if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent()).f();
        }
    }

    public void q() {
        this.f66100o = true;
        this.f66099n.f();
    }

    protected void r() {
        if (!this.f66100o || this.f66099n.getBottomMargin() <= 50 || this.f66101p) {
            return;
        }
        this.f66101p = true;
        this.f66099n.setState(2);
        i iVar = this.f66091f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void s() {
        if (!this.f66100o || this.f66099n.getBottomMargin() <= 50 || this.f66101p) {
            return;
        }
        this.f66101p = true;
        this.f66099n.setState(2);
        i iVar = this.f66091f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void setNoMore(int footType) {
        h1.e("XListView", "setNoMore");
        u();
        this.f66099n.f();
        this.f66099n.setState(footType);
        this.f66100o = false;
        this.f66099n.setOnClickListener(null);
    }

    public void setOnOverScrolled(e l10) {
        this.f66111z = l10;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66090e = l10;
    }

    public void setPreLoadCount(int count) {
        this.f66105t = count;
    }

    public void setPullLoadEnable(i loadMoreListener) {
        this.f66100o = true;
        this.f66106u = true;
        this.f66091f = loadMoreListener;
        this.f66101p = false;
        this.f66099n.f();
        this.f66099n.setState(0);
        this.f66099n.setOnClickListener(new c());
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f66110y = refreshListener;
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).setPtrHandler(this.f66109x);
            ((PtrFrameLayout) getParent()).j(true);
        } else {
            if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent()).setPtrHandler(this.f66109x);
            ((PtrFrameLayout) getParent().getParent()).j(true);
        }
    }

    protected void t() {
        if (this.f66106u) {
            this.f66100o = true;
            this.f66099n.f();
            this.f66099n.setState(0);
        }
    }

    public void u() {
        h1.e("XListView", "stopLoadMore");
        if (this.f66101p && this.f66100o) {
            h1.e("XListView", "stopLoadMore-called");
            this.f66101p = false;
            XListViewFooter xListViewFooter = this.f66099n;
            if (xListViewFooter != null) {
                xListViewFooter.setState(0);
            }
        }
    }

    public void v() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).C();
        } else {
            if (getParent() == null || getParent().getParent() == null || !(getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent()).C();
        }
    }

    protected void w(float delta) {
        int bottomMargin = this.f66099n.getBottomMargin() + ((int) delta);
        if (this.f66100o && !this.f66101p) {
            if (bottomMargin > 50) {
                this.f66099n.setState(1);
            } else {
                this.f66099n.setState(0);
            }
        }
        this.f66099n.setBottomMargin(bottomMargin);
    }

    protected void x(float delta) {
        XListViewHeader xListViewHeader = this.f66093h;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66097l && !this.f66098m.get()) {
            if (this.f66093h.getVisibleHeight() > this.f66096k) {
                this.f66093h.setState(1);
            } else {
                this.f66093h.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(final ListAdapter adapter) {
        super.setAdapter(adapter);
        a aVar = new a(adapter);
        this.f66108w = aVar;
        adapter.registerDataSetObserver(aVar);
    }

    public void setNoMore() {
        setNoMore(3);
    }

    public XListView2(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66087b = -1.0f;
        this.f66088c = -1.0f;
        this.f66097l = true;
        this.f66098m = new AtomicBoolean(false);
        this.f66102q = false;
        this.f66105t = 0;
        this.f66106u = false;
        this.f66107v = AppBarStateChangeListener.State.EXPANDED;
        this.f66109x = new b();
        h(context);
    }

    public XListView2(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66087b = -1.0f;
        this.f66088c = -1.0f;
        this.f66097l = true;
        this.f66098m = new AtomicBoolean(false);
        this.f66102q = false;
        this.f66105t = 0;
        this.f66106u = false;
        this.f66107v = AppBarStateChangeListener.State.EXPANDED;
        this.f66109x = new b();
        h(context);
    }
}
