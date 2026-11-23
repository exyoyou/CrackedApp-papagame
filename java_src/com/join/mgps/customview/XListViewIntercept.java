package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class XListViewIntercept extends ListView implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f66201v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f66202w = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f66203x = 400;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f66204y = 50;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final float f66205z = 1.8f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f66206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Scroller f66207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AbsListView.OnScrollListener f66208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f66209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private XListViewHeader f66210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f66211g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f66212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f66214j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f66215k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private XListViewFooter f66216l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f66217m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f66218n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f66219o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f66220p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f66221q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f66222r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f66223s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f66224t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f66225u;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            XListViewIntercept xListViewIntercept = XListViewIntercept.this;
            xListViewIntercept.f66213i = xListViewIntercept.f66211g.getHeight();
            XListViewIntercept.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XListViewIntercept.this.i();
        }
    }

    public interface c {
        void onLoadMore();

        void onRefresh();
    }

    public interface d extends AbsListView.OnScrollListener {
        void a(View view);
    }

    public XListViewIntercept(Context context) {
        super(context);
        this.f66206b = -1.0f;
        this.f66214j = true;
        this.f66215k = false;
        this.f66219o = false;
        this.f66222r = false;
        e(context);
    }

    private void e(Context context) {
        this.f66207c = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        setVerticalScrollBarEnabled(false);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66210f = xListViewHeader;
        this.f66211g = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66212h = (TextView) this.f66210f.findViewById(R.id.xlistview_header_time);
        addHeaderView(this.f66210f);
        this.f66216l = new XListViewFooter(context);
        this.f66210f.getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void f() {
        AbsListView.OnScrollListener onScrollListener = this.f66208d;
        if (onScrollListener instanceof d) {
            ((d) onScrollListener).a(this);
        }
    }

    private void g() {
        int bottomMargin = this.f66216l.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66221q = 1;
            this.f66207c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    private void h() {
        int i10;
        int visibleHeight = this.f66210f.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        boolean z10 = this.f66215k;
        if (!z10 || visibleHeight > this.f66213i) {
            if (!z10 || visibleHeight <= (i10 = this.f66213i)) {
                i10 = 0;
            }
            this.f66221q = 0;
            this.f66207c.startScroll(0, visibleHeight, 0, i10 - visibleHeight, 400);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f66218n = true;
        this.f66216l.setState(2);
        c cVar = this.f66209e;
        if (cVar != null) {
            cVar.onLoadMore();
        }
    }

    private void l(float delta) {
        int bottomMargin = this.f66216l.getBottomMargin() + ((int) delta);
        if (this.f66217m && !this.f66218n) {
            if (bottomMargin > 50) {
                this.f66216l.setState(1);
            } else {
                this.f66216l.setState(0);
            }
        }
        this.f66216l.setBottomMargin(bottomMargin);
    }

    private void m(float delta) {
        XListViewHeader xListViewHeader = this.f66210f;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66214j && !this.f66215k) {
            if (this.f66210f.getVisibleHeight() > this.f66213i) {
                this.f66210f.setState(1);
            } else {
                this.f66210f.setState(0);
            }
        }
        setSelection(0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f66207c.computeScrollOffset()) {
            if (this.f66221q == 0) {
                this.f66210f.setVisibleHeight(this.f66207c.getCurrY());
            } else {
                this.f66216l.setBottomMargin(this.f66207c.getCurrY());
            }
            postInvalidate();
            f();
        }
        super.computeScroll();
    }

    public void j() {
        if (this.f66218n) {
            this.f66218n = false;
            this.f66216l.setState(0);
        }
    }

    public void k() {
        if (this.f66215k) {
            this.f66215k = false;
            this.f66216l.setVisibility(0);
            h();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f66220p = totalItemCount;
        AbsListView.OnScrollListener onScrollListener = this.f66208d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        View childAt;
        super.onScrollChanged(l10, t10, oldl, oldt);
        if (!this.f66222r || (childAt = getChildAt(0)) == null) {
            return;
        }
        if (childAt.getTop() == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        int i10 = this.f66225u;
        if (i10 < t10) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (t10 < i10 && getScrollY() == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        this.f66225u = t10;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        AbsListView.OnScrollListener onScrollListener = this.f66208d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66206b == -1.0f) {
            this.f66206b = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            if (this.f66222r) {
                getParent().requestDisallowInterceptTouchEvent(true);
                this.f66223s = ev.getX();
                this.f66224t = ev.getY();
            }
            this.f66206b = ev.getRawY();
        } else if (action != 2) {
            if (this.f66222r) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f66206b = -1.0f;
            if (getFirstVisiblePosition() == 0) {
                if (this.f66214j && this.f66210f.getVisibleHeight() > this.f66213i) {
                    this.f66215k = true;
                    this.f66210f.setState(2);
                    c cVar = this.f66209e;
                    if (cVar != null) {
                        cVar.onRefresh();
                        this.f66216l.setVisibility(4);
                    }
                }
                h();
            } else if (getLastVisiblePosition() == this.f66220p - 1) {
                if (this.f66217m && this.f66216l.getBottomMargin() > 50) {
                    i();
                }
                g();
            }
        } else {
            if (this.f66222r) {
                if (Math.abs(ev.getX() - this.f66223s) > Math.abs(ev.getY() - this.f66224t)) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                } else {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                View childAt = getChildAt(0);
                if (childAt != null && childAt.getTop() == 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
            float rawY = ev.getRawY() - this.f66206b;
            this.f66206b = ev.getRawY();
            if (getFirstVisiblePosition() != 0 || (this.f66210f.getVisibleHeight() <= 0 && rawY <= 0.0f)) {
                if (getLastVisiblePosition() == this.f66220p - 1 && (this.f66216l.getBottomMargin() > 0 || rawY < 0.0f)) {
                    l((-rawY) / f66205z);
                }
            } else if (this.f66214j) {
                m(rawY / f66205z);
                f();
            }
        }
        return super.onTouchEvent(ev);
    }

    public void setFirstNoMore(Boolean firstState) {
        if (firstState.booleanValue()) {
            this.f66216l.a();
            this.f66216l.setOnClickListener(null);
        } else {
            this.f66218n = false;
            this.f66216l.f();
            this.f66216l.setState(5);
        }
    }

    public void setInterceptToch(boolean isIntercept) {
        this.f66222r = isIntercept;
    }

    public void setNoMore() {
        if (!this.f66217m) {
            this.f66216l.a();
            this.f66216l.setOnClickListener(null);
        } else {
            this.f66218n = false;
            this.f66216l.f();
            this.f66216l.setState(3);
        }
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66208d = l10;
    }

    public void setPullLoadEnable(boolean enable) {
        this.f66217m = enable;
        if (!enable) {
            this.f66216l.a();
            this.f66216l.setOnClickListener(null);
        } else {
            this.f66218n = false;
            this.f66216l.f();
            this.f66216l.setState(0);
            this.f66216l.setOnClickListener(new b());
        }
    }

    public void setPullRefreshEnable(boolean enable) {
        this.f66214j = enable;
        if (enable) {
            this.f66211g.setVisibility(0);
        } else {
            this.f66211g.setVisibility(4);
        }
    }

    public void setRefreshTime(String time) {
        this.f66212h.setText(time);
    }

    public void setXListViewListener(c l10) {
        this.f66209e = l10;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        if (!this.f66219o) {
            this.f66219o = true;
            this.f66216l.setState(4);
            addFooterView(this.f66216l);
        }
        super.setAdapter(adapter);
    }

    public XListViewIntercept(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66206b = -1.0f;
        this.f66214j = true;
        this.f66215k = false;
        this.f66219o = false;
        this.f66222r = false;
        e(context);
    }

    public XListViewIntercept(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66206b = -1.0f;
        this.f66214j = true;
        this.f66215k = false;
        this.f66219o = false;
        this.f66222r = false;
        e(context);
    }
}
