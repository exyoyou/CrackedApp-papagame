package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class XListView3 extends ListView implements AbsListView.OnScrollListener, NestedScrollingChild {
    public static final String A = "XListView";
    protected static final int B = 0;
    protected static final int C = 1;
    protected static final int D = 400;
    protected static final int E = 50;
    protected static final float F = 2.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f66117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f66118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Scroller f66119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AbsListView.OnScrollListener f66120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected i f66121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected j f66122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected XListViewHeader f66123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected RelativeLayout f66124i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected TextView f66125j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f66126k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f66127l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected AtomicBoolean f66128m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected XListViewFooter f66129n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f66130o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f66131p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f66132q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f66133r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f66134s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f66135t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f66136u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private NestedScrollingChildHelper f66137v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    DataSetObserver f66138w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.ptr.a f66139x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private j f66140y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    e f66141z;

    class a extends DataSetObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ListAdapter f66142a;

        a(final ListAdapter val$adapter) {
            this.f66142a = val$adapter;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ListAdapter listAdapter = this.f66142a;
            if (listAdapter == null || listAdapter.getCount() <= 20) {
                XListView3.this.k();
            }
        }
    }

    class b extends com.join.mgps.ptr.a {
        b() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("checkCanDoRefresh: ");
            sb2.append(content);
            return XListView3.this.c(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            g1.g("onRefreshBegin----------");
            XListView3.this.t();
            if (XListView3.this.f66140y != null) {
                XListView3.this.f66140y.onRefresh();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XListView3 xListView3 = XListView3.this;
            xListView3.f66131p = true;
            xListView3.f66129n.setState(2);
            i iVar = XListView3.this.f66121f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (XListView3.this.f66140y != null) {
                XListView3.this.f66140y.onRefresh();
                XListView3.this.f66129n.setState(0);
                XListView3 xListView3 = XListView3.this;
                xListView3.f66130o = true;
                xListView3.f66129n.setOnClickListener(null);
            }
        }
    }

    public interface e {
        void a(int scrollX, int scrollY, boolean clampedX, boolean clampedY);
    }

    public XListView3(Context context) {
        super(context);
        this.f66117b = -1.0f;
        this.f66118c = -1.0f;
        this.f66127l = true;
        this.f66128m = new AtomicBoolean(false);
        this.f66132q = false;
        this.f66135t = 0;
        this.f66136u = false;
        this.f66139x = new b();
        h(context);
        setFriction(ViewConfiguration.getScrollFriction() * 2.0f);
        setFastScrollEnabled(false);
        g();
    }

    private void g() {
        this.f66137v = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    public boolean c(PtrFrameLayout frame, View content, View header) {
        return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, this, header);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66119d.computeScrollOffset()) {
            if (this.f66134s != 0) {
                this.f66129n.setBottomMargin(this.f66119d.getCurrY());
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

    public void d() {
        this.f66130o = false;
        this.f66129n.a();
        this.f66129n.setOnClickListener(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.f66137v.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.f66137v.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return this.f66137v.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return this.f66137v.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    public void e() {
        this.f66127l = false;
        this.f66124i.setVisibility(4);
    }

    public void f() {
        this.f66130o = false;
        this.f66129n.a();
    }

    public int getLastCompletelyVisiblePosition() {
        View childAt;
        int lastVisiblePosition = getLastVisiblePosition();
        return (getChildCount() > 0 && (childAt = getChildAt(getChildCount() + (-1))) != null && childAt.getBottom() > getHeight()) ? Math.max(0, lastVisiblePosition - 1) : lastVisiblePosition;
    }

    protected void h(Context context) {
        this.f66119d = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66123h = xListViewHeader;
        this.f66124i = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66125j = (TextView) this.f66123h.findViewById(R.id.xlistview_header_time);
        this.f66129n = new XListViewFooter(context);
        d();
        e();
        addFooterView(this.f66129n);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f66137v.hasNestedScrollingParent();
    }

    protected void i() {
        AbsListView.OnScrollListener onScrollListener = this.f66120e;
        if (onScrollListener instanceof k) {
            ((k) onScrollListener).a(this);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f66137v.isNestedScrollingEnabled();
    }

    public boolean j() {
        return this.f66128m.get();
    }

    public synchronized void k() {
        if (com.join.android.app.common.utils.m.j(getContext()) && !this.f66128m.get() && this.f66130o && this.f66133r > 1 && !this.f66131p && getLastVisiblePosition() >= this.f66133r - this.f66135t) {
            h1.e("XListView", "do-preload");
            this.f66131p = true;
            this.f66129n.setState(2);
            i iVar = this.f66121f;
            if (iVar != null) {
                iVar.onLoadMore();
            }
        }
    }

    public void l() {
        this.f66130o = true;
        this.f66127l = true;
        this.f66129n.setState(0);
    }

    protected void m() {
        int bottomMargin = this.f66129n.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66134s = 1;
            this.f66119d.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    protected void n() {
        int i10;
        int visibleHeight = this.f66123h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66128m.get() || visibleHeight > this.f66126k) {
            if (!this.f66128m.get() || visibleHeight <= (i10 = this.f66126k)) {
                i10 = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66134s = 0;
            this.f66119d.startScroll(0, visibleHeight, 0, i11, 400);
            invalidate();
        }
    }

    protected void o(int disy) {
        int i10;
        int visibleHeight = this.f66123h.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        if (!this.f66128m.get() || visibleHeight > this.f66126k) {
            if (!this.f66128m.get() || visibleHeight <= (i10 = this.f66126k)) {
                i10 = 0;
            }
            this.f66134s = 0;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resetHeaderHeight-->");
            int i11 = i10 - visibleHeight;
            sb2.append(i11);
            this.f66119d.startScroll(0, visibleHeight, 0, i11 + 100, 400);
            invalidate();
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
        e eVar = this.f66141z;
        if (eVar != null) {
            eVar.a(scrollX, scrollY, clampedX, clampedY);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f66133r = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66120e;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        int firstVisiblePosition = view.getFirstVisiblePosition();
        int childCount = view.getChildCount();
        if (scrollState == 0 || firstVisiblePosition + childCount > this.f66133r) {
            h1.e("XListView", "onScrollStateChanged", "preload");
            k();
        }
        AbsListView.OnScrollListener onScrollListener = this.f66120e;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66117b == -1.0f) {
            this.f66117b = ev.getRawY();
        }
        if (this.f66118c == -1.0f) {
            this.f66118c = ev.getRawX();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66117b = ev.getRawY();
            this.f66118c = ev.getRawX();
        } else if (action != 2) {
            this.f66117b = -1.0f;
            if (getLastVisiblePosition() == this.f66133r - 1) {
                r();
                m();
            }
        } else {
            float rawY = ev.getRawY() - this.f66117b;
            this.f66117b = ev.getRawY();
            if (getLastVisiblePosition() != this.f66133r - 1 || ((this.f66129n.getBottomMargin() <= 0 && rawY >= 0.0f) || this.f66131p)) {
                if (this.f66135t != 0) {
                    k();
                }
            } else if (this.f66130o) {
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
            return;
        }
        if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).f();
        } else {
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent().getParent()).f();
        }
    }

    public void q() {
        this.f66130o = true;
        this.f66129n.f();
    }

    protected void r() {
        if (!this.f66130o || this.f66129n.getBottomMargin() <= 50 || this.f66131p) {
            return;
        }
        this.f66131p = true;
        this.f66129n.setState(2);
        i iVar = this.f66121f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void s() {
        if (!this.f66130o || this.f66129n.getBottomMargin() <= 50 || this.f66131p) {
            return;
        }
        this.f66131p = true;
        this.f66129n.setState(2);
        i iVar = this.f66121f;
        if (iVar != null) {
            iVar.onLoadMore();
        }
    }

    public void setCanLoadMore() {
        this.f66129n.setState(0);
        this.f66130o = true;
        this.f66129n.setOnClickListener(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.f66137v.setNestedScrollingEnabled(enabled);
    }

    public void setNoMore() {
        View viewFindViewById;
        h1.e("XListView", "setNoMore");
        u();
        this.f66129n.f();
        this.f66129n.setState(7);
        this.f66130o = false;
        this.f66129n.setOnClickListener(null);
        try {
            View childAt = this.f66129n.getChildAt(0);
            if (!(childAt instanceof LinearLayout) || (viewFindViewById = childAt.findViewById(R.id.xlistview_footer_refresh_textview)) == null) {
                return;
            }
            viewFindViewById.setOnClickListener(new d());
        } catch (Exception unused) {
        }
    }

    public void setOnOverScrolled(e l10) {
        this.f66141z = l10;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66120e = l10;
    }

    public void setPreLoadCount(int count) {
        this.f66135t = count;
    }

    public void setPullLoadEnable(i loadMoreListener) {
        this.f66130o = true;
        this.f66136u = true;
        this.f66121f = loadMoreListener;
        this.f66131p = false;
        this.f66129n.f();
        this.f66129n.setState(0);
        this.f66129n.setOnClickListener(new c());
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f66140y = refreshListener;
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).setPtrHandler(this.f66139x);
            ((PtrFrameLayout) getParent()).j(true);
            return;
        }
        if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).setPtrHandler(this.f66139x);
            ((PtrFrameLayout) getParent().getParent()).j(true);
        } else {
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent().getParent()).setPtrHandler(this.f66139x);
            ((PtrFrameLayout) getParent().getParent().getParent()).j(true);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int axes) {
        return this.f66137v.startNestedScroll(axes);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f66137v.stopNestedScroll();
    }

    protected void t() {
        if (this.f66136u) {
            this.f66130o = true;
            this.f66129n.f();
            this.f66129n.setState(0);
        }
    }

    public void u() {
        h1.e("XListView", "stopLoadMore");
        if (this.f66131p && this.f66130o) {
            h1.e("XListView", "stopLoadMore-called");
            this.f66131p = false;
            XListViewFooter xListViewFooter = this.f66129n;
            if (xListViewFooter != null) {
                xListViewFooter.setState(0);
            }
        }
    }

    public void v() {
        if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent()).C();
            return;
        }
        if (getParent() != null && getParent().getParent() != null && (getParent().getParent() instanceof PtrFrameLayout)) {
            ((PtrFrameLayout) getParent().getParent()).C();
        } else {
            if (getParent() == null || getParent().getParent() == null || getParent().getParent().getParent() == null || !(getParent().getParent().getParent() instanceof PtrFrameLayout)) {
                return;
            }
            ((PtrFrameLayout) getParent().getParent().getParent()).C();
        }
    }

    protected void w(float delta) {
        int bottomMargin = this.f66129n.getBottomMargin() + ((int) delta);
        if (this.f66130o && !this.f66131p) {
            if (bottomMargin > 50) {
                this.f66129n.setState(1);
            } else {
                this.f66129n.setState(0);
            }
        }
        this.f66129n.setBottomMargin(bottomMargin);
    }

    protected void x(float delta) {
        XListViewHeader xListViewHeader = this.f66123h;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66127l && !this.f66128m.get()) {
            if (this.f66123h.getVisibleHeight() > this.f66126k) {
                this.f66123h.setState(1);
            } else {
                this.f66123h.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(final ListAdapter adapter) {
        super.setAdapter(adapter);
        a aVar = new a(adapter);
        this.f66138w = aVar;
        adapter.registerDataSetObserver(aVar);
    }

    public XListView3(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66117b = -1.0f;
        this.f66118c = -1.0f;
        this.f66127l = true;
        this.f66128m = new AtomicBoolean(false);
        this.f66132q = false;
        this.f66135t = 0;
        this.f66136u = false;
        this.f66139x = new b();
        h(context);
        g();
    }

    public XListView3(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66117b = -1.0f;
        this.f66118c = -1.0f;
        this.f66127l = true;
        this.f66128m = new AtomicBoolean(false);
        this.f66132q = false;
        this.f66135t = 0;
        this.f66136u = false;
        this.f66139x = new b();
        h(context);
        g();
    }
}
