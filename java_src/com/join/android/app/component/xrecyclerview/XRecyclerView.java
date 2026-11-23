package com.join.android.app.component.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.m;
import com.join.mgps.customview.XListViewFooter;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class XRecyclerView extends RecyclerView {
    private static List<Integer> A = new ArrayList();
    protected static final int B = 0;
    protected static final int C = 1;
    protected static final int D = 400;
    protected static final int E = 50;
    protected static final float F = 2.0f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final float f35294w = 3.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f35295x = 10000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f35296y = 10001;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f35297z = 10002;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<View> f35300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f35301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f35302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f35303g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f35304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f35306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f35307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected XListViewFooter f35308l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f35309m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f35310n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AppBarStateChangeListener.State f35311o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double f35312p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f35313q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Scroller f35314r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected RecyclerView.OnScrollListener f35315s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f35316t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PtrFrameLayout f35317u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.ptr.a f35318v;

    class a extends com.join.mgps.ptr.a {
        a() {
        }

        private void setFooterDefault() {
            XRecyclerView xRecyclerView = XRecyclerView.this;
            xRecyclerView.setLoadingMoreEnabled(xRecyclerView.f35305i);
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return XRecyclerView.this.f35311o == AppBarStateChangeListener.State.EXPANDED && com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            setFooterDefault();
            if (XRecyclerView.this.f35303g != null) {
                XRecyclerView.this.f35303g.onRefresh();
            }
        }
    }

    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (XRecyclerView.this.f35299c) {
                return;
            }
            XRecyclerView xRecyclerView = XRecyclerView.this;
            xRecyclerView.f35309m = true;
            xRecyclerView.f35308l.setState(2);
            if (XRecyclerView.this.f35303g != null) {
                XRecyclerView.this.f35303g.onLoadMore();
            }
        }
    }

    class d extends AppBarStateChangeListener {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
        public void onStateChanged(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XRecyclerView.this.f35311o = state;
        }
    }

    private class e extends RecyclerView.AdapterDataObserver {
        private e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            ?? r10;
            RecyclerView.Adapter adapter = XRecyclerView.this.getAdapter();
            if (adapter != null && XRecyclerView.this.f35307k != null) {
                ?? r11 = XRecyclerView.this.f35304h;
                if (XRecyclerView.this.f35305i) {
                    r10 = r11;
                    r10 = r11 + 1;
                }
                r10 = r11;
                if (adapter.getItemCount() == r10) {
                    XRecyclerView.this.f35307k.setVisibility(0);
                    XRecyclerView.this.setVisibility(8);
                } else {
                    XRecyclerView.this.f35307k.setVisibility(8);
                    XRecyclerView.this.setVisibility(0);
                }
            }
            if (XRecyclerView.this.f35301e != null) {
                XRecyclerView.this.f35301e.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            XRecyclerView.this.f35301e.notifyItemRangeChanged(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            XRecyclerView.this.f35301e.notifyItemRangeInserted(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            XRecyclerView.this.f35301e.notifyItemMoved(fromPosition, toPosition);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            XRecyclerView.this.f35301e.notifyItemRangeRemoved(positionStart, itemCount);
        }

        /* synthetic */ e(XRecyclerView xRecyclerView, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            XRecyclerView.this.f35301e.notifyItemRangeChanged(positionStart, itemCount, payload);
        }
    }

    public interface f {
        void onLoadMore();

        void onRefresh();
    }

    public XRecyclerView(Context context) {
        this(context, null);
        init();
    }

    private void disableLoadingMoreView() {
        this.f35308l.a();
        this.f35308l.setOnClickListener(null);
    }

    private void enableLoadingMoreView() {
        this.f35309m = false;
        this.f35308l.f();
        this.f35308l.setState(0);
        this.f35308l.setOnClickListener(new c());
    }

    private int findMax(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getHeaderViewByType(int itemType) {
        if (isHeaderType(itemType)) {
            return this.f35300d.get(itemType - 10002);
        }
        return null;
    }

    private void init() {
        this.f35314r = new Scroller(getContext(), new AccelerateInterpolator());
        addOnScrollListener(new b());
        if (this.f35304h) {
            setPtrFrameLayout(null);
        }
        XListViewFooter xListViewFooter = new XListViewFooter(getContext());
        xListViewFooter.setState(0);
        this.f35308l = xListViewFooter;
        setLoadingMoreEnabled(this.f35305i);
        this.f35308l.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHeaderType(int itemViewType) {
        return this.f35300d.size() > 0 && A.contains(Integer.valueOf(itemViewType));
    }

    private boolean isOnTop() {
        return this.f35317u != null && getFirstVisiblePosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReservedItemViewType(int itemViewType) {
        return itemViewType == 10000 || itemViewType == 10001 || A.contains(Integer.valueOf(itemViewType));
    }

    private void preload() {
        if (!m.j(getContext()) || this.f35298b || !this.f35305i || this.f35309m || this.f35299c || getLastVisiblePosition() < getTotalItemCount() - this.f35313q) {
            return;
        }
        this.f35298b = true;
        this.f35309m = true;
        this.f35308l.setState(2);
        f fVar = this.f35303g;
        if (fVar != null) {
            fVar.onLoadMore();
        }
    }

    public void addHeaderView(View view) {
        A.add(Integer.valueOf(this.f35300d.size() + 10002));
        this.f35300d.add(view);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f35314r.computeScrollOffset()) {
            if (this.f35316t != 0) {
                this.f35308l.setBottomMargin(this.f35314r.getCurrY());
            }
            postInvalidate();
        }
        super.computeScroll();
    }

    void enablePtrFrameLayout(boolean enable) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int velocityX, int velocityY) {
        return super.fling(velocityX, (int) (((double) velocityY) * this.f35312p));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @Nullable
    public RecyclerView.Adapter getAdapter() {
        g gVar = this.f35301e;
        if (gVar == null) {
            return null;
        }
        return gVar.getAdapter();
    }

    public View getEmptyView() {
        return this.f35307k;
    }

    public int getFirstVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.findLastVisibleItemPosition();
            return gridLayoutManager.findFirstVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            linearLayoutManager.findLastVisibleItemPosition();
            return linearLayoutManager.findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        findMax(iArr);
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        return findMax(iArr);
    }

    public int getLastVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
            gridLayoutManager.findFirstVisibleItemPosition();
            return iFindLastVisibleItemPosition;
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int iFindLastVisibleItemPosition2 = linearLayoutManager.findLastVisibleItemPosition();
            linearLayoutManager.findFirstVisibleItemPosition();
            return iFindLastVisibleItemPosition2;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        int iFindMax = findMax(iArr);
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        findMax(iArr);
        return iFindMax;
    }

    public RecyclerView.OnScrollListener getScrollListener() {
        return this.f35315s;
    }

    int getTotalItemCount() {
        return (getAdapter().getItemCount() - 1) - this.f35300d.size();
    }

    public RecyclerView.Adapter getXRecycleviewWrapAdapter() {
        return this.f35301e.getAdapter();
    }

    public void hidePullLoad() {
        this.f35305i = false;
        this.f35308l.a();
    }

    boolean isRefreshEnable() {
        return this.f35311o == AppBarStateChangeListener.State.EXPANDED && getScrollX() <= 0;
    }

    public void loadMoreComplete() {
        this.f35298b = false;
        stopLoadMore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        AppBarLayout appBarLayout;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (parent != null && !(parent instanceof CoordinatorLayout)) {
            parent = parent.getParent();
        }
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
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

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        int iFindLastVisibleItemPosition;
        super.onScrollStateChanged(state);
        if (state != 0 || this.f35303g == null || this.f35298b || !this.f35305i) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            iFindLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
            iFindLastVisibleItemPosition = findMax(iArr);
        } else {
            iFindLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        PtrFrameLayout ptrFrameLayout = this.f35317u;
        boolean zL = ptrFrameLayout != null ? ptrFrameLayout.l() : false;
        if (layoutManager.getChildCount() > 0 && iFindLastVisibleItemPosition >= this.f35313q && layoutManager.getItemCount() > layoutManager.getChildCount() && !this.f35299c && !zL) {
            preload();
        }
        RecyclerView.OnScrollListener onScrollListener = this.f35315s;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f35302f == -1.0f) {
            this.f35302f = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f35302f = ev.getRawY();
        } else if (action != 2) {
            this.f35302f = -1.0f;
            if (getLastVisiblePosition() == getTotalItemCount() && !this.f35299c) {
                startLoadMore();
            }
            resetFooterHeight();
        } else {
            float rawY = ev.getRawY() - this.f35302f;
            this.f35302f = ev.getRawY();
            if (getLastVisiblePosition() == getTotalItemCount() && ((this.f35308l.getBottomMargin() > 0 || rawY < 0.0f) && !this.f35309m && this.f35305i && !this.f35299c)) {
                updateFooterHeight((-rawY) / 2.0f);
            }
        }
        return super.onTouchEvent(ev);
    }

    public void refreshComplete() {
        PtrFrameLayout ptrFrameLayout = this.f35317u;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.C();
        }
        setNoMoreView(false);
    }

    public void reset() {
        setNoMoreView(false);
        loadMoreComplete();
        refreshComplete();
    }

    protected void resetFooterHeight() {
        int bottomMargin = this.f35308l.getBottomMargin();
        if (bottomMargin > 0) {
            this.f35316t = 1;
            this.f35314r.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        g gVar = new g(adapter);
        this.f35301e = gVar;
        super.setAdapter(gVar);
        if (!adapter.hasObservers()) {
            adapter.registerAdapterDataObserver(this.f35310n);
        }
        this.f35310n.onChanged();
    }

    public void setEmptyView(View emptyView) {
        this.f35307k = emptyView;
        this.f35310n.onChanged();
    }

    public void setFlingScale(double scale) {
        this.f35312p = scale;
    }

    public void setLoadingListener(f listener) {
        this.f35303g = listener;
    }

    public void setLoadingMoreEnabled(boolean enabled) {
        this.f35305i = enabled;
        if (enabled) {
            enableLoadingMoreView();
        } else {
            disableLoadingMoreView();
        }
    }

    public void setNoMore() {
        stopLoadMore();
        this.f35308l.f();
        this.f35308l.setState(3);
        this.f35309m = false;
        this.f35299c = true;
        this.f35308l.setOnClickListener(null);
    }

    public void setNoMoreView(boolean noMore) {
        this.f35309m = false;
        this.f35299c = noMore;
        if (noMore) {
            setNoMore();
        } else {
            setLoadingMoreEnabled(this.f35305i);
        }
    }

    public void setPreLoadCount(int count) {
        this.f35313q = count;
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout != null) {
            this.f35317u = ptrFrameLayout;
            ptrFrameLayout.setPtrHandler(this.f35318v);
        } else if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            PtrFrameLayout ptrFrameLayout2 = (PtrFrameLayout) getParent();
            this.f35317u = ptrFrameLayout2;
            ptrFrameLayout2.setPtrHandler(this.f35318v);
        }
        PtrFrameLayout ptrFrameLayout3 = this.f35317u;
        if (ptrFrameLayout3 != null) {
            ptrFrameLayout3.j(true);
        }
    }

    public void setPullRefreshEnabled(boolean enabled) {
        this.f35304h = enabled;
        setPtrFrameLayout(null);
    }

    public void setRefreshing(boolean refreshing) {
        PtrFrameLayout ptrFrameLayout;
        if (refreshing && this.f35304h && (ptrFrameLayout = this.f35317u) != null) {
            ptrFrameLayout.f();
        }
    }

    public void setScrollListener(RecyclerView.OnScrollListener mScrollListener) {
        this.f35315s = mScrollListener;
    }

    public void showHeaderLoading() {
        PtrFrameLayout ptrFrameLayout = this.f35317u;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.f();
        }
    }

    public void showPullLoad() {
        this.f35305i = true;
        this.f35308l.f();
    }

    public synchronized void startLoadMore() {
        preload();
    }

    public void stopLoadMore() {
        if (this.f35309m && this.f35305i) {
            this.f35309m = false;
            this.f35298b = false;
            if (this.f35299c) {
                this.f35308l.setState(3);
            } else {
                this.f35308l.setState(0);
            }
        }
    }

    public void stopRefresh() {
        PtrFrameLayout ptrFrameLayout = this.f35317u;
        if (ptrFrameLayout == null || !(ptrFrameLayout instanceof PtrFrameLayout)) {
            return;
        }
        ptrFrameLayout.C();
    }

    protected void updateFooterHeight(float delta) {
        int bottomMargin = this.f35308l.getBottomMargin() + ((int) delta);
        if (this.f35305i && !this.f35309m) {
            if (bottomMargin > 50) {
                this.f35308l.setState(1);
            } else {
                this.f35308l.setState(0);
            }
        }
        this.f35308l.setBottomMargin(bottomMargin);
    }

    public XRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        init();
    }

    public XRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f35298b = false;
        this.f35299c = false;
        this.f35300d = new ArrayList<>();
        this.f35302f = -1.0f;
        this.f35304h = true;
        this.f35305i = true;
        this.f35306j = 0;
        this.f35310n = new e(this, null);
        this.f35311o = AppBarStateChangeListener.State.EXPANDED;
        this.f35312p = 1.0d;
        this.f35313q = 0;
        this.f35318v = new a();
        init();
    }

    public class g extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f35324e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private RecyclerView.Adapter f35325f;

        class a extends GridLayoutManager.SpanSizeLookup {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ GridLayoutManager f35327a;

            a(final GridLayoutManager val$gridManager) {
                this.f35327a = val$gridManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                if (g.this.isHeader(position) || g.this.isFooter(position) || g.this.isRefreshHeader(position)) {
                    return this.f35327a.getSpanCount();
                }
                return 1;
            }
        }

        private class b extends RecyclerView.ViewHolder {
            public b(View itemView) {
                super(itemView);
            }
        }

        public g(RecyclerView.Adapter adapter) {
            this.f35325f = adapter;
        }

        private void refreshLoadMoreState() {
            XRecyclerView xRecyclerView = XRecyclerView.this;
            if (xRecyclerView.f35308l != null) {
                if (xRecyclerView.f35299c) {
                    XRecyclerView.this.f35308l.setState(3);
                    return;
                }
                XRecyclerView xRecyclerView2 = XRecyclerView.this;
                if (xRecyclerView2.f35309m) {
                    xRecyclerView2.f35308l.setState(2);
                } else {
                    xRecyclerView2.f35308l.setState(0);
                }
            }
        }

        public RecyclerView.Adapter getAdapter() {
            return this.f35325f;
        }

        public int getHeadersCount() {
            return XRecyclerView.this.f35300d.size();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v9 */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int headersCount;
            int headersCount2;
            int itemCount;
            int i10;
            ?? r10;
            if (XRecyclerView.this.f35305i) {
                char c10 = this.f35324e ? (char) 2 : (char) 1;
                if (this.f35325f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35325f.getItemCount();
                    r10 = c10;
                    headersCount = headersCount2 + itemCount;
                    i10 = r10;
                } else {
                    headersCount = getHeadersCount();
                    i10 = c10;
                }
            } else {
                boolean z10 = this.f35324e;
                if (this.f35325f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35325f.getItemCount();
                    r10 = z10;
                    headersCount = headersCount2 + itemCount;
                    i10 = r10;
                } else {
                    headersCount = getHeadersCount();
                    i10 = z10;
                }
            }
            return headersCount + i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            int headersCount;
            boolean z10 = this.f35324e;
            if (this.f35325f == null || i10 < getHeadersCount() + (z10 ? 1 : 0) || (headersCount = i10 - (getHeadersCount() + (z10 ? 1 : 0))) >= this.f35325f.getItemCount()) {
                return -1L;
            }
            return this.f35325f.getItemId(headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            RecyclerView.Adapter adapter = this.f35325f;
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            int headersCount = i10 - (getHeadersCount() + (this.f35324e ? 1 : 0));
            if (headersCount < itemCount && XRecyclerView.this.isReservedItemViewType(this.f35325f.getItemViewType(headersCount))) {
                throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ");
            }
            if (isRefreshHeader(i10) && this.f35324e) {
                return 10000;
            }
            if (isHeader(i10)) {
                if (this.f35324e) {
                    i10--;
                }
                return ((Integer) XRecyclerView.A.get(i10)).intValue();
            }
            if (isFooter(i10)) {
                return 10001;
            }
            if (headersCount < itemCount) {
                return this.f35325f.getItemViewType(headersCount);
            }
            return 0;
        }

        public boolean isFooter(int position) {
            return XRecyclerView.this.f35305i && position == getItemCount() - 1;
        }

        public boolean isHeader(int position) {
            return this.f35324e && position >= 1 && position < XRecyclerView.this.f35300d.size() + 1;
        }

        public boolean isRefreshHeader(int position) {
            return this.f35324e && position == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager));
            }
            this.f35325f.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35324e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35324e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35325f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35325f.onBindViewHolder(viewHolder, headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 10000) {
                return null;
            }
            if (XRecyclerView.this.isHeaderType(viewType)) {
                return new b(XRecyclerView.this.getHeaderViewByType(viewType));
            }
            return viewType == 10001 ? new b(XRecyclerView.this.f35308l) : this.f35325f.onCreateViewHolder(parent, viewType);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f35325f.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
            return this.f35325f.onFailedToRecycleView(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
            super.onViewAttachedToWindow(holder);
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (isHeader(holder.getLayoutPosition()) || isRefreshHeader(holder.getLayoutPosition()) || isFooter(holder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            this.f35325f.onViewAttachedToWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
            this.f35325f.onViewDetachedFromWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder holder) {
            this.f35325f.onViewRecycled(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35325f.registerAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35325f.unregisterAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10, @NonNull List<Object> list) {
            if (list == null) {
                super.onBindViewHolder(viewHolder, i10, list);
                return;
            }
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35324e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35324e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35325f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35325f.onBindViewHolder(viewHolder, headersCount, list);
        }
    }
}
