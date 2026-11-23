package com.join.android.app.component.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.widget.LinearLayout;
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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListViewFooter;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class XRecyclerView2 extends RecyclerView {
    private static List<Integer> A = new ArrayList();
    protected static final int B = 0;
    protected static final int C = 1;
    protected static final int D = 400;
    protected static final int E = 50;
    protected static final float F = 2.0f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final float f35330w = 3.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f35331x = 10000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f35332y = 10001;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f35333z = 10002;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<View> f35336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f35337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f35338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f35339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f35340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f35342j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f35343k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected XListViewFooter f35344l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f35345m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f35346n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AppBarStateChangeListener.State f35347o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double f35348p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f35349q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Scroller f35350r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected RecyclerView.OnScrollListener f35351s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f35352t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PtrFrameLayout f35353u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.ptr.a f35354v;

    class a extends com.join.mgps.ptr.a {
        a() {
        }

        private void setFooterDefault() {
            XRecyclerView2 xRecyclerView2 = XRecyclerView2.this;
            xRecyclerView2.setLoadingMoreEnabled(xRecyclerView2.f35341i);
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return XRecyclerView2.this.getFirstCompletelyVisiblePosition() <= 1 && XRecyclerView2.this.f35347o == AppBarStateChangeListener.State.EXPANDED && com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            setFooterDefault();
            if (XRecyclerView2.this.f35339g != null) {
                XRecyclerView2.this.f35339g.onRefresh();
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
        public void onClick(View view) {
            if (XRecyclerView2.this.f35339g != null) {
                XRecyclerView2.this.f35339g.onRefresh();
                XRecyclerView2.this.f35344l.setState(0);
                XRecyclerView2.this.f35341i = true;
                XRecyclerView2.this.f35344l.setOnClickListener(null);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (XRecyclerView2.this.f35335c) {
                return;
            }
            XRecyclerView2 xRecyclerView2 = XRecyclerView2.this;
            xRecyclerView2.f35345m = true;
            xRecyclerView2.f35344l.setState(2);
            if (XRecyclerView2.this.f35339g != null) {
                XRecyclerView2.this.f35339g.onLoadMore();
            }
        }
    }

    class e extends AppBarStateChangeListener {
        e() {
        }

        @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
        public void onStateChanged(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XRecyclerView2.this.f35347o = state;
        }
    }

    private class f extends RecyclerView.AdapterDataObserver {
        private f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            ?? r10;
            RecyclerView.Adapter adapter = XRecyclerView2.this.getAdapter();
            if (adapter != null && XRecyclerView2.this.f35343k != null) {
                ?? r11 = XRecyclerView2.this.f35340h;
                if (XRecyclerView2.this.f35341i) {
                    r10 = r11;
                    r10 = r11 + 1;
                }
                r10 = r11;
                if (adapter.getItemCount() == r10) {
                    XRecyclerView2.this.f35343k.setVisibility(0);
                    XRecyclerView2.this.setVisibility(8);
                } else {
                    XRecyclerView2.this.f35343k.setVisibility(8);
                    XRecyclerView2.this.setVisibility(0);
                }
            }
            if (XRecyclerView2.this.f35337e != null) {
                XRecyclerView2.this.f35337e.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            XRecyclerView2.this.f35337e.notifyItemRangeChanged(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            XRecyclerView2.this.f35337e.notifyItemRangeInserted(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            XRecyclerView2.this.f35337e.notifyItemMoved(fromPosition, toPosition);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            XRecyclerView2.this.f35337e.notifyItemRangeRemoved(positionStart, itemCount);
        }

        /* synthetic */ f(XRecyclerView2 xRecyclerView2, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            XRecyclerView2.this.f35337e.notifyItemRangeChanged(positionStart, itemCount, payload);
        }
    }

    public interface g {
        void onLoadMore();

        void onRefresh();
    }

    public XRecyclerView2(Context context) {
        this(context, null);
        init();
    }

    private void disableLoadingMoreView() {
        this.f35344l.a();
        this.f35344l.setOnClickListener(null);
    }

    private void enableLoadingMoreView() {
        this.f35345m = false;
        this.f35344l.f();
        this.f35344l.setState(0);
        this.f35344l.setOnClickListener(new d());
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
            return this.f35336d.get(itemType - 10002);
        }
        return null;
    }

    private void init() {
        this.f35350r = new Scroller(getContext(), new AccelerateInterpolator());
        addOnScrollListener(new b());
        if (this.f35340h) {
            setPtrFrameLayout(null);
        }
        XListViewFooter xListViewFooter = new XListViewFooter(getContext());
        xListViewFooter.setState(0);
        this.f35344l = xListViewFooter;
        setLoadingMoreEnabled(this.f35341i);
        this.f35344l.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHeaderType(int itemViewType) {
        return this.f35336d.size() > 0 && A.contains(Integer.valueOf(itemViewType));
    }

    private boolean isOnTop() {
        return this.f35353u != null && getFirstVisiblePosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReservedItemViewType(int itemViewType) {
        return itemViewType == 10000 || itemViewType == 10001 || A.contains(Integer.valueOf(itemViewType));
    }

    private void preload() {
        if (!m.j(getContext()) || this.f35334b || !this.f35341i || this.f35345m || this.f35335c || getLastVisiblePosition() < getTotalItemCount() - this.f35349q) {
            return;
        }
        this.f35334b = true;
        this.f35345m = true;
        this.f35344l.setState(2);
        g gVar = this.f35339g;
        if (gVar != null) {
            gVar.onLoadMore();
        }
    }

    public void addHeaderView(View view) {
        A.add(Integer.valueOf(this.f35336d.size() + 10002));
        this.f35336d.add(view);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f35350r.computeScrollOffset()) {
            if (this.f35352t != 0) {
                this.f35344l.setBottomMargin(this.f35350r.getCurrY());
            }
            postInvalidate();
        }
        super.computeScroll();
    }

    void enablePtrFrameLayout(boolean enable) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int velocityX, int velocityY) {
        return super.fling(velocityX, (int) (((double) velocityY) * this.f35348p));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @Nullable
    public RecyclerView.Adapter getAdapter() {
        h hVar = this.f35337e;
        if (hVar == null) {
            return null;
        }
        return hVar.getAdapter();
    }

    public View getEmptyView() {
        return this.f35343k;
    }

    public int getFirstCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.findLastVisibleItemPosition();
            return gridLayoutManager.findFirstCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            linearLayoutManager.findLastVisibleItemPosition();
            return linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        findMax(iArr);
        staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
        return findMax(iArr);
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

    public int getLastCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iFindLastCompletelyVisibleItemPosition = gridLayoutManager.findLastCompletelyVisibleItemPosition();
            gridLayoutManager.findFirstVisibleItemPosition();
            return iFindLastCompletelyVisibleItemPosition;
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int iFindLastCompletelyVisibleItemPosition2 = linearLayoutManager.findLastCompletelyVisibleItemPosition();
            linearLayoutManager.findFirstVisibleItemPosition();
            return iFindLastCompletelyVisibleItemPosition2;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        int iFindMax = findMax(iArr);
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        findMax(iArr);
        return iFindMax;
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
        return this.f35351s;
    }

    int getTotalItemCount() {
        return (getAdapter().getItemCount() - 1) - this.f35336d.size();
    }

    public RecyclerView.Adapter getXRecycleviewWrapAdapter() {
        return this.f35337e.getAdapter();
    }

    public void hidePullLoad() {
        this.f35341i = false;
        this.f35344l.a();
    }

    boolean isRefreshEnable() {
        return this.f35347o == AppBarStateChangeListener.State.EXPANDED && getScrollX() <= 0;
    }

    public void loadMoreComplete() {
        this.f35334b = false;
        stopLoadMore();
    }

    public boolean o() {
        return this.f35335c;
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
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new e());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        int iFindLastVisibleItemPosition;
        super.onScrollStateChanged(state);
        if (state != 0 || this.f35339g == null || this.f35334b || !this.f35341i) {
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
        PtrFrameLayout ptrFrameLayout = this.f35353u;
        boolean zL = ptrFrameLayout != null ? ptrFrameLayout.l() : false;
        if (layoutManager.getChildCount() > 0 && iFindLastVisibleItemPosition >= this.f35349q && layoutManager.getItemCount() > layoutManager.getChildCount() && !this.f35335c && !zL) {
            preload();
        }
        RecyclerView.OnScrollListener onScrollListener = this.f35351s;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f35338f == -1.0f) {
            this.f35338f = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f35338f = ev.getRawY();
        } else if (action != 2) {
            this.f35338f = -1.0f;
            if (getLastVisiblePosition() == getTotalItemCount() && !this.f35335c) {
                startLoadMore();
            }
            resetFooterHeight();
        } else {
            float rawY = ev.getRawY() - this.f35338f;
            this.f35338f = ev.getRawY();
            if (getLastVisiblePosition() == getTotalItemCount() && ((this.f35344l.getBottomMargin() > 0 || rawY < 0.0f) && !this.f35345m && this.f35341i && !this.f35335c)) {
                updateFooterHeight((-rawY) / 2.0f);
            }
        }
        return super.onTouchEvent(ev);
    }

    public void refreshComplete() {
        PtrFrameLayout ptrFrameLayout = this.f35353u;
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
        int bottomMargin = this.f35344l.getBottomMargin();
        if (bottomMargin > 0) {
            this.f35352t = 1;
            this.f35350r.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        h hVar = new h(adapter);
        this.f35337e = hVar;
        super.setAdapter(hVar);
        if (!adapter.hasObservers()) {
            adapter.registerAdapterDataObserver(this.f35346n);
        }
        this.f35346n.onChanged();
    }

    public void setCanLoadMore() {
        this.f35344l.setState(0);
        this.f35341i = true;
        this.f35344l.setOnClickListener(null);
    }

    public void setEmptyView(View emptyView) {
        this.f35343k = emptyView;
        this.f35346n.onChanged();
    }

    public void setFlingScale(double scale) {
        this.f35348p = scale;
    }

    public void setLoadingListener(g listener) {
        this.f35339g = listener;
    }

    public void setLoadingMoreEnabled(boolean enabled) {
        this.f35341i = enabled;
        if (enabled) {
            enableLoadingMoreView();
        } else {
            disableLoadingMoreView();
        }
    }

    public void setNoMore() {
        View viewFindViewById;
        stopLoadMore();
        this.f35344l.f();
        this.f35344l.setState(7);
        this.f35345m = false;
        this.f35335c = true;
        this.f35344l.setOnClickListener(null);
        try {
            View childAt = this.f35344l.getChildAt(0);
            if (!(childAt instanceof LinearLayout) || (viewFindViewById = childAt.findViewById(R.id.xlistview_footer_refresh_textview)) == null) {
                return;
            }
            viewFindViewById.setOnClickListener(new c());
        } catch (Exception unused) {
        }
    }

    public void setNoMoreView(boolean noMore) {
        this.f35345m = false;
        this.f35335c = noMore;
        if (noMore) {
            setNoMore();
        } else {
            setLoadingMoreEnabled(this.f35341i);
        }
    }

    public void setPreLoadCount(int count) {
        this.f35349q = count;
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout != null) {
            this.f35353u = ptrFrameLayout;
            ptrFrameLayout.setPtrHandler(this.f35354v);
        } else if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            PtrFrameLayout ptrFrameLayout2 = (PtrFrameLayout) getParent();
            this.f35353u = ptrFrameLayout2;
            ptrFrameLayout2.setPtrHandler(this.f35354v);
        }
        PtrFrameLayout ptrFrameLayout3 = this.f35353u;
        if (ptrFrameLayout3 != null) {
            ptrFrameLayout3.j(true);
        }
    }

    public void setPullRefreshEnabled(boolean enabled) {
        this.f35340h = enabled;
        setPtrFrameLayout(null);
    }

    public void setRefreshing(boolean refreshing) {
        PtrFrameLayout ptrFrameLayout;
        if (refreshing && this.f35340h && (ptrFrameLayout = this.f35353u) != null) {
            ptrFrameLayout.f();
        }
    }

    public void setScrollListener(RecyclerView.OnScrollListener mScrollListener) {
        this.f35351s = mScrollListener;
    }

    public void showHeaderLoading() {
        PtrFrameLayout ptrFrameLayout = this.f35353u;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.f();
        }
    }

    public void showPullLoad() {
        this.f35341i = true;
        this.f35344l.f();
    }

    public synchronized void startLoadMore() {
        preload();
    }

    public void stopLoadMore() {
        if (this.f35345m && this.f35341i) {
            this.f35345m = false;
            this.f35334b = false;
            if (this.f35335c) {
                this.f35344l.setState(7);
            } else {
                this.f35344l.setState(0);
            }
        }
    }

    public void stopRefresh() {
        PtrFrameLayout ptrFrameLayout = this.f35353u;
        if (ptrFrameLayout == null || !(ptrFrameLayout instanceof PtrFrameLayout)) {
            return;
        }
        ptrFrameLayout.C();
    }

    protected void updateFooterHeight(float delta) {
        int bottomMargin = this.f35344l.getBottomMargin() + ((int) delta);
        if (this.f35341i && !this.f35345m) {
            if (bottomMargin > 50) {
                this.f35344l.setState(1);
            } else {
                this.f35344l.setState(0);
            }
        }
        this.f35344l.setBottomMargin(bottomMargin);
    }

    public XRecyclerView2(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        init();
    }

    public XRecyclerView2(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f35334b = false;
        this.f35335c = false;
        this.f35336d = new ArrayList<>();
        this.f35338f = -1.0f;
        this.f35340h = true;
        this.f35341i = true;
        this.f35342j = 0;
        this.f35346n = new f(this, null);
        this.f35347o = AppBarStateChangeListener.State.EXPANDED;
        this.f35348p = 1.0d;
        this.f35349q = 0;
        this.f35354v = new a();
        init();
    }

    public class h extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f35361e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private RecyclerView.Adapter f35362f;

        class a extends GridLayoutManager.SpanSizeLookup {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ GridLayoutManager f35364a;

            a(final GridLayoutManager val$gridManager) {
                this.f35364a = val$gridManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                if (h.this.isHeader(position) || h.this.isFooter(position) || h.this.isRefreshHeader(position)) {
                    return this.f35364a.getSpanCount();
                }
                return 1;
            }
        }

        private class b extends RecyclerView.ViewHolder {
            public b(View itemView) {
                super(itemView);
            }
        }

        public h(RecyclerView.Adapter adapter) {
            this.f35362f = adapter;
        }

        private void refreshLoadMoreState() {
            XRecyclerView2 xRecyclerView2 = XRecyclerView2.this;
            if (xRecyclerView2.f35344l != null) {
                if (xRecyclerView2.f35335c) {
                    XRecyclerView2.this.f35344l.setState(7);
                    return;
                }
                XRecyclerView2 xRecyclerView3 = XRecyclerView2.this;
                if (xRecyclerView3.f35345m) {
                    xRecyclerView3.f35344l.setState(2);
                } else {
                    xRecyclerView3.f35344l.setState(0);
                }
            }
        }

        public RecyclerView.Adapter getAdapter() {
            return this.f35362f;
        }

        public int getHeadersCount() {
            return XRecyclerView2.this.f35336d.size();
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
            if (XRecyclerView2.this.f35341i) {
                char c10 = this.f35361e ? (char) 2 : (char) 1;
                if (this.f35362f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35362f.getItemCount();
                    r10 = c10;
                    headersCount = headersCount2 + itemCount;
                    i10 = r10;
                } else {
                    headersCount = getHeadersCount();
                    i10 = c10;
                }
            } else {
                boolean z10 = this.f35361e;
                if (this.f35362f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35362f.getItemCount();
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
            boolean z10 = this.f35361e;
            if (this.f35362f == null || i10 < getHeadersCount() + (z10 ? 1 : 0) || (headersCount = i10 - (getHeadersCount() + (z10 ? 1 : 0))) >= this.f35362f.getItemCount()) {
                return -1L;
            }
            return this.f35362f.getItemId(headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            RecyclerView.Adapter adapter = this.f35362f;
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            int headersCount = i10 - (getHeadersCount() + (this.f35361e ? 1 : 0));
            if (headersCount < itemCount && XRecyclerView2.this.isReservedItemViewType(this.f35362f.getItemViewType(headersCount))) {
                throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ");
            }
            if (isRefreshHeader(i10) && this.f35361e) {
                return 10000;
            }
            if (isHeader(i10)) {
                if (this.f35361e) {
                    i10--;
                }
                return ((Integer) XRecyclerView2.A.get(i10)).intValue();
            }
            if (isFooter(i10)) {
                return 10001;
            }
            if (headersCount < itemCount) {
                return this.f35362f.getItemViewType(headersCount);
            }
            return 0;
        }

        public boolean isFooter(int position) {
            return XRecyclerView2.this.f35341i && position == getItemCount() - 1;
        }

        public boolean isHeader(int position) {
            return this.f35361e && position >= 1 && position < XRecyclerView2.this.f35336d.size() + 1;
        }

        public boolean isRefreshHeader(int position) {
            return this.f35361e && position == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager));
            }
            this.f35362f.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35361e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35361e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35362f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35362f.onBindViewHolder(viewHolder, headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 10000) {
                return null;
            }
            if (XRecyclerView2.this.isHeaderType(viewType)) {
                return new b(XRecyclerView2.this.getHeaderViewByType(viewType));
            }
            return viewType == 10001 ? new b(XRecyclerView2.this.f35344l) : this.f35362f.onCreateViewHolder(parent, viewType);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f35362f.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
            return this.f35362f.onFailedToRecycleView(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
            super.onViewAttachedToWindow(holder);
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (isHeader(holder.getLayoutPosition()) || isRefreshHeader(holder.getLayoutPosition()) || isFooter(holder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            this.f35362f.onViewAttachedToWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
            this.f35362f.onViewDetachedFromWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder holder) {
            this.f35362f.onViewRecycled(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35362f.registerAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35362f.unregisterAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10, @NonNull List<Object> list) {
            if (list == null) {
                super.onBindViewHolder(viewHolder, i10, list);
                return;
            }
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35361e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35361e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35362f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35362f.onBindViewHolder(viewHolder, headersCount, list);
        }
    }
}
