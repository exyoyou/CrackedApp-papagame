package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class XScrollView extends ScrollView implements AbsListView.OnScrollListener {
    private static final int A = 400;
    private static final int B = 50;
    private static final float C = 1.8f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f66228x = "XScrollView";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f66229y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f66230z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f66231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Scroller f66232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AbsListView.OnScrollListener f66233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f66234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f66235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f66236g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f66237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private XListViewHeader f66238i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RelativeLayout f66239j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f66240k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66241l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private XListViewFooter f66242m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f66243n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f66244o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f66245p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f66246q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f66247r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f66248s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f66249t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f66250u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f66251v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f66252w;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @TargetApi(16)
        public void onGlobalLayout() {
            XScrollView xScrollView = XScrollView.this;
            xScrollView.f66241l = xScrollView.f66239j.getHeight();
            ViewTreeObserver viewTreeObserver = XScrollView.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            XScrollView.this.o();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XScrollView.this.fullScroll(33);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XScrollView.this.fullScroll(130);
        }
    }

    public interface e {
        void onLoadMore();

        void onRefresh();
    }

    public interface f extends AbsListView.OnScrollListener {
        void a(View view);
    }

    public XScrollView(Context context) {
        super(context);
        this.f66231b = -1.0f;
        this.f66243n = true;
        this.f66244o = false;
        this.f66245p = true;
        this.f66246q = false;
        this.f66247r = false;
        this.f66252w = true;
        f(context);
    }

    private void g() {
        AbsListView.OnScrollListener onScrollListener = this.f66233d;
        if (onScrollListener instanceof f) {
            ((f) onScrollListener).a(this);
        }
    }

    private boolean h() {
        XListViewFooter xListViewFooter;
        return Math.abs((getScrollY() + getHeight()) - computeVerticalScrollRange()) <= 5 || (getScrollY() > 0 && (xListViewFooter = this.f66242m) != null && xListViewFooter.getBottomMargin() > 0);
    }

    private boolean i() {
        return getScrollY() <= 0 || this.f66238i.getVisibleHeight() > this.f66241l || this.f66237h.getTop() > 0;
    }

    private void j() {
        e eVar;
        if (!this.f66245p || (eVar = this.f66235f) == null) {
            return;
        }
        eVar.onLoadMore();
    }

    private void k() {
        e eVar;
        if (!this.f66243n || (eVar = this.f66235f) == null) {
            return;
        }
        eVar.onRefresh();
    }

    private void l() {
        int bottomMargin = this.f66242m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f66234e = 1;
            this.f66232c.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    private void m() {
        int i10;
        int visibleHeight = this.f66238i.getVisibleHeight();
        if (visibleHeight == 0) {
            return;
        }
        boolean z10 = this.f66244o;
        if (!z10 || visibleHeight > this.f66241l) {
            if (!z10 || visibleHeight <= (i10 = this.f66241l)) {
                i10 = 0;
            }
            this.f66234e = 0;
            this.f66232c.startScroll(0, visibleHeight, 0, i10 - visibleHeight, 400);
            invalidate();
        }
    }

    private void n() {
        if (i()) {
            if (this.f66243n && this.f66238i.getVisibleHeight() > this.f66241l) {
                this.f66244o = true;
                this.f66238i.setState(2);
                k();
            }
            m();
            return;
        }
        if (h()) {
            if (this.f66245p && this.f66242m.getBottomMargin() > 50) {
                o();
            }
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f66247r) {
            return;
        }
        this.f66247r = true;
        this.f66242m.setState(2);
        j();
    }

    private void r(float delta) {
        int bottomMargin = this.f66242m.getBottomMargin() + ((int) delta);
        if (this.f66245p && !this.f66247r) {
            if (bottomMargin > 50) {
                this.f66242m.setState(1);
            } else {
                this.f66242m.setState(0);
            }
        }
        this.f66242m.setBottomMargin(bottomMargin);
        post(new d());
    }

    private void s(float delta) {
        XListViewHeader xListViewHeader = this.f66238i;
        xListViewHeader.setVisibleHeight(((int) delta) + xListViewHeader.getVisibleHeight());
        if (this.f66243n && !this.f66244o) {
            if (this.f66238i.getVisibleHeight() > this.f66241l) {
                this.f66238i.setState(1);
            } else {
                this.f66238i.setState(0);
            }
        }
        post(new c());
    }

    @Override // android.widget.ScrollView, android.view.View
    public void computeScroll() {
        if (this.f66232c.computeScrollOffset()) {
            if (this.f66234e == 0) {
                this.f66238i.setVisibleHeight(this.f66232c.getCurrY());
            } else {
                this.f66242m.setBottomMargin(this.f66232c.getCurrY());
            }
            postInvalidate();
            g();
        }
        super.computeScroll();
    }

    public void e() {
        this.f66238i.setVisibleHeight(this.f66241l);
        if (this.f66243n && !this.f66244o) {
            if (this.f66238i.getVisibleHeight() > this.f66241l) {
                this.f66238i.setState(1);
            } else {
                this.f66238i.setState(0);
            }
        }
        this.f66244o = true;
        this.f66238i.setState(2);
        k();
    }

    protected void f(Context context) {
        ViewGroup viewGroup = null;
        LinearLayout linearLayout = (LinearLayout) View.inflate(context, R.layout.vw_xscrollview_layout, null);
        this.f66236g = linearLayout;
        this.f66237h = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        this.f66232c = new Scroller(context, new DecelerateInterpolator());
        setOnScrollListener(this);
        XListViewHeader xListViewHeader = new XListViewHeader(context);
        this.f66238i = xListViewHeader;
        this.f66239j = (RelativeLayout) xListViewHeader.findViewById(R.id.xlistview_header_content);
        this.f66240k = (TextView) this.f66238i.findViewById(R.id.xlistview_header_time);
        ((LinearLayout) this.f66236g.findViewById(R.id.header_layout)).addView(this.f66238i);
        this.f66242m = new XListViewFooter(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.f66242m.setState(0);
        ((LinearLayout) this.f66236g.findViewById(R.id.footer_layout)).addView(this.f66242m, layoutParams);
        ViewTreeObserver viewTreeObserver = this.f66238i.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new a());
        }
        if (getChildCount() > 0) {
            viewGroup = (ViewGroup) getChildAt(0);
            removeAllViews();
        }
        addView(this.f66236g);
        if (viewGroup != null) {
            setContentView(viewGroup);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f66249t = 0.0f;
            this.f66248s = 0.0f;
            this.f66250u = ev.getX();
            this.f66251v = ev.getY();
        } else if (action == 2) {
            float x10 = ev.getX();
            float y10 = ev.getY();
            this.f66248s += Math.abs(x10 - this.f66250u);
            float fAbs = this.f66249t + Math.abs(y10 - this.f66251v);
            this.f66249t = fAbs;
            this.f66250u = x10;
            this.f66251v = y10;
            if (this.f66248s <= fAbs && this.f66252w) {
                return super.onInterceptTouchEvent(ev);
            }
            return false;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        AbsListView.OnScrollListener onScrollListener = this.f66233d;
        if (onScrollListener != null) {
            onScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        View childAt = getChildAt(getChildCount() - 1);
        if (childAt != null && childAt.getBottom() - (childAt.getHeight() + childAt.getScrollY()) == 0 && this.f66246q) {
            o();
        }
        super.onScrollChanged(l10, t10, oldl, oldt);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        AbsListView.OnScrollListener onScrollListener = this.f66233d;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f66231b == -1.0f) {
            this.f66231b = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f66231b = ev.getRawY();
            g();
        } else if (action != 2) {
            this.f66231b = -1.0f;
            n();
        } else {
            float rawY = ev.getRawY() - this.f66231b;
            this.f66231b = ev.getRawY();
            if (i() && (this.f66238i.getVisibleHeight() > 0 || rawY > 0.0f)) {
                s(rawY / C);
            } else if (h() && (this.f66242m.getBottomMargin() > 0 || rawY < 0.0f)) {
                r((-rawY) / C);
            }
            g();
        }
        return super.onTouchEvent(ev);
    }

    public void p() {
        if (this.f66247r) {
            this.f66247r = false;
            this.f66242m.setState(0);
        }
    }

    public void q() {
        if (this.f66244o) {
            this.f66244o = false;
            m();
        }
    }

    public void setAutoLoadEnable(boolean enable) {
        this.f66246q = enable;
    }

    public void setContentView(ViewGroup content) {
        LinearLayout linearLayout = this.f66236g;
        if (linearLayout == null) {
            return;
        }
        if (this.f66237h == null) {
            this.f66237h = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        }
        if (this.f66237h.getChildCount() > 0) {
            this.f66237h.removeAllViews();
        }
        this.f66237h.addView(content);
    }

    public void setIXScrollViewListener(e listener) {
        this.f66235f = listener;
    }

    public void setOnScrollListener(AbsListView.OnScrollListener l10) {
        this.f66233d = l10;
    }

    public void setPullLoadEnable(boolean enable) {
        this.f66245p = enable;
        if (enable) {
            this.f66247r = false;
            this.f66242m.setPadding(0, 0, 0, 0);
            this.f66242m.f();
            this.f66242m.setState(0);
            this.f66242m.setOnClickListener(new b());
            return;
        }
        this.f66242m.setBottomMargin(0);
        this.f66242m.a();
        XListViewFooter xListViewFooter = this.f66242m;
        xListViewFooter.setPadding(0, 0, 0, xListViewFooter.getHeight() * (-1));
        this.f66242m.setOnClickListener(null);
    }

    public void setPullRefreshEnable(boolean enable) {
        this.f66243n = enable;
        this.f66239j.setVisibility(enable ? 0 : 4);
    }

    public void setRefreshTime(String time) {
        this.f66240k.setText(time);
    }

    public void setScrollEnable(boolean scrollEnable) {
        this.f66252w = scrollEnable;
        requestDisallowInterceptTouchEvent(!scrollEnable);
    }

    public void setView(View content) {
        LinearLayout linearLayout = this.f66236g;
        if (linearLayout == null) {
            return;
        }
        if (this.f66237h == null) {
            this.f66237h = (LinearLayout) linearLayout.findViewById(R.id.content_layout);
        }
        this.f66237h.addView(content);
    }

    public XScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66231b = -1.0f;
        this.f66243n = true;
        this.f66244o = false;
        this.f66245p = true;
        this.f66246q = false;
        this.f66247r = false;
        this.f66252w = true;
        f(context);
    }

    public XScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66231b = -1.0f;
        this.f66243n = true;
        this.f66244o = false;
        this.f66245p = true;
        this.f66246q = false;
        this.f66247r = false;
        this.f66252w = true;
        f(context);
    }
}
