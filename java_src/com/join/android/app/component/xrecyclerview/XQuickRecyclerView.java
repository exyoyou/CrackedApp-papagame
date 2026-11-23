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
public class XQuickRecyclerView extends RecyclerView {
    private static final int A = 10002;
    private static List<Integer> B = new ArrayList();
    protected static final int C = 0;
    protected static final int D = 1;
    protected static final int E = 400;
    protected static final int F = 50;
    protected static final float G = 2.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final float f35258x = 3.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f35259y = 10000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f35260z = 10001;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35262c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<View> f35263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f35264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f35265f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f35266g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f f35267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f35268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f35269j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f35270k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f35271l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected XListViewFooter f35272m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f35273n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f35274o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AppBarStateChangeListener.State f35275p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private double f35276q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f35277r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected Scroller f35278s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected RecyclerView.OnScrollListener f35279t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f35280u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private PtrFrameLayout f35281v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.join.mgps.ptr.a f35282w;

    class a extends com.join.mgps.ptr.a {
        a() {
        }

        private void setFooterDefault() {
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            xQuickRecyclerView.setLoadingMoreEnabled(xQuickRecyclerView.f35269j);
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            AppBarStateChangeListener.State state = XQuickRecyclerView.this.f35275p;
            AppBarStateChangeListener.State state2 = AppBarStateChangeListener.State.EXPANDED;
            if (state != state2 || XQuickRecyclerView.this.f35267h == null) {
                return XQuickRecyclerView.this.f35275p == state2 && com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
            }
            return XQuickRecyclerView.this.f35267h.a();
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            setFooterDefault();
            if (XQuickRecyclerView.this.f35266g != null) {
                XQuickRecyclerView.this.f35266g.onRefresh();
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
            if (XQuickRecyclerView.this.f35262c) {
                return;
            }
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            xQuickRecyclerView.f35273n = true;
            xQuickRecyclerView.f35272m.setState(2);
            if (XQuickRecyclerView.this.f35266g != null) {
                XQuickRecyclerView.this.f35266g.onLoadMore();
            }
        }
    }

    class d extends AppBarStateChangeListener {
        d() {
        }

        @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
        public void onStateChanged(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
            XQuickRecyclerView.this.f35275p = state;
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
            RecyclerView.Adapter adapter = XQuickRecyclerView.this.getAdapter();
            if (adapter != null && XQuickRecyclerView.this.f35271l != null) {
                ?? r11 = XQuickRecyclerView.this.f35268i;
                if (XQuickRecyclerView.this.f35269j) {
                    r10 = r11;
                    r10 = r11 + 1;
                }
                r10 = r11;
                if (adapter.getItemCount() == r10) {
                    XQuickRecyclerView.this.f35271l.setVisibility(0);
                    XQuickRecyclerView.this.setVisibility(8);
                } else {
                    XQuickRecyclerView.this.f35271l.setVisibility(8);
                    XQuickRecyclerView.this.setVisibility(0);
                }
            }
            if (XQuickRecyclerView.this.f35264e != null) {
                XQuickRecyclerView.this.f35264e.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            XQuickRecyclerView.this.f35264e.notifyItemRangeChanged(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            XQuickRecyclerView.this.f35264e.notifyItemRangeInserted(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            XQuickRecyclerView.this.f35264e.notifyItemMoved(fromPosition, toPosition);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            XQuickRecyclerView.this.f35264e.notifyItemRangeRemoved(positionStart, itemCount);
        }

        /* synthetic */ e(XQuickRecyclerView xQuickRecyclerView, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            XQuickRecyclerView.this.f35264e.notifyItemRangeChanged(positionStart, itemCount, payload);
        }
    }

    public interface f {
        boolean a();
    }

    public interface g {
        void onLoadMore();

        void onRefresh();
    }

    public XQuickRecyclerView(Context context) {
        this(context, null);
        init();
    }

    private void disableLoadingMoreView() {
        this.f35272m.a();
        this.f35272m.setOnClickListener(null);
    }

    private void enableLoadingMoreView() {
        this.f35273n = false;
        this.f35272m.f();
        this.f35272m.setState(0);
        this.f35272m.setOnClickListener(new c());
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

    private int findMin(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 < i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getHeaderViewByType(int itemType) {
        if (isHeaderType(itemType)) {
            return this.f35263d.get(itemType - 10002);
        }
        return null;
    }

    private void init() {
        this.f35278s = new Scroller(getContext(), new AccelerateInterpolator());
        addOnScrollListener(new b());
        if (this.f35268i) {
            setPtrFrameLayout(null);
        }
        XListViewFooter xListViewFooter = new XListViewFooter(getContext());
        xListViewFooter.setState(0);
        this.f35272m = xListViewFooter;
        setLoadingMoreEnabled(this.f35269j);
        this.f35272m.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHeaderType(int itemViewType) {
        return this.f35263d.size() > 0 && B.contains(Integer.valueOf(itemViewType));
    }

    private boolean isOnTop() {
        return this.f35281v != null && getFirstVisiblePosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReservedItemViewType(int itemViewType) {
        return itemViewType == 10000 || itemViewType == 10001 || B.contains(Integer.valueOf(itemViewType));
    }

    private void preload() {
        if (!m.j(getContext()) || this.f35261b || !this.f35269j || this.f35273n || this.f35262c || getLastVisiblePosition() < getTotalItemCount() - this.f35277r) {
            return;
        }
        this.f35261b = true;
        this.f35273n = true;
        this.f35272m.setState(2);
        g gVar = this.f35266g;
        if (gVar != null) {
            gVar.onLoadMore();
        }
    }

    public void addHeaderView(View view) {
        B.add(Integer.valueOf(this.f35263d.size() + 10002));
        this.f35263d.add(view);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f35278s.computeScrollOffset()) {
            if (this.f35280u != 0) {
                this.f35272m.setBottomMargin(this.f35278s.getCurrY());
            }
            postInvalidate();
        }
        super.computeScroll();
    }

    void enablePtrFrameLayout(boolean enable) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int velocityX, int velocityY) {
        return super.fling(velocityX, (int) (((double) velocityY) * this.f35276q));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    @Nullable
    public RecyclerView.Adapter getAdapter() {
        h hVar = this.f35264e;
        if (hVar == null) {
            return null;
        }
        return hVar.getAdapter();
    }

    public View getEmptyView() {
        return this.f35271l;
    }

    public int getFirstCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
        return findMin(iArr);
    }

    public int getFirstVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        return findMin(iArr);
    }

    public int getLastCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        return findMax(iArr);
    }

    public int getLastVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        return findMax(iArr);
    }

    public RecyclerView.OnScrollListener getScrollListener() {
        return this.f35279t;
    }

    int getTotalItemCount() {
        return (getAdapter().getItemCount() - 1) - this.f35263d.size();
    }

    public RecyclerView.Adapter getXRecycleviewWrapAdapter() {
        return this.f35264e.getAdapter();
    }

    public void hidePullLoad() {
        this.f35269j = false;
        this.f35272m.a();
    }

    boolean isRefreshEnable() {
        return this.f35275p == AppBarStateChangeListener.State.EXPANDED && getScrollX() <= 0;
    }

    public void loadMoreComplete() {
        this.f35261b = false;
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
        if (state != 0 || this.f35266g == null || this.f35261b || !this.f35269j) {
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
        PtrFrameLayout ptrFrameLayout = this.f35281v;
        boolean zL = ptrFrameLayout != null ? ptrFrameLayout.l() : false;
        if (layoutManager.getChildCount() > 0 && iFindLastVisibleItemPosition >= this.f35277r && !this.f35262c && !zL) {
            preload();
        }
        RecyclerView.OnScrollListener onScrollListener = this.f35279t;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f35265f == -1.0f) {
            this.f35265f = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.f35265f = ev.getRawY();
        } else if (action != 2) {
            this.f35265f = -1.0f;
            if (getLastVisiblePosition() == getTotalItemCount() && !this.f35262c) {
                startLoadMore();
            }
            resetFooterHeight();
        } else {
            float rawY = ev.getRawY() - this.f35265f;
            this.f35265f = ev.getRawY();
            if (getLastVisiblePosition() == getTotalItemCount() && ((this.f35272m.getBottomMargin() > 0 || rawY < 0.0f) && !this.f35273n && this.f35269j && !this.f35262c)) {
                updateFooterHeight((-rawY) / 2.0f);
            }
        }
        return super.onTouchEvent(ev);
    }

    public void refreshComplete() {
        PtrFrameLayout ptrFrameLayout = this.f35281v;
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
        int bottomMargin = this.f35272m.getBottomMargin();
        if (bottomMargin > 0) {
            this.f35280u = 1;
            this.f35278s.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        h hVar = new h(adapter);
        this.f35264e = hVar;
        super.setAdapter(hVar);
        if (!adapter.hasObservers()) {
            adapter.registerAdapterDataObserver(this.f35274o);
        }
        this.f35274o.onChanged();
    }

    public void setDoRefreshListener(f listener) {
        this.f35267h = listener;
    }

    public void setEmptyView(View emptyView) {
        this.f35271l = emptyView;
        this.f35274o.onChanged();
    }

    public void setFlingScale(double scale) {
        this.f35276q = scale;
    }

    public void setLoadingListener(g listener) {
        this.f35266g = listener;
    }

    public void setLoadingMoreEnabled(boolean enabled) {
        this.f35269j = enabled;
        if (enabled) {
            enableLoadingMoreView();
        } else {
            disableLoadingMoreView();
        }
    }

    public void setNoMore() {
        stopLoadMore();
        this.f35272m.f();
        this.f35272m.setState(3);
        this.f35273n = false;
        this.f35262c = true;
        this.f35272m.setOnClickListener(null);
    }

    public void setNoMoreView(boolean noMore) {
        this.f35273n = false;
        this.f35262c = noMore;
        if (noMore) {
            setNoMore();
        } else {
            setLoadingMoreEnabled(this.f35269j);
        }
    }

    public void setPreLoadCount(int count) {
        this.f35277r = count;
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout != null) {
            this.f35281v = ptrFrameLayout;
            ptrFrameLayout.setPtrHandler(this.f35282w);
        } else if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            PtrFrameLayout ptrFrameLayout2 = (PtrFrameLayout) getParent();
            this.f35281v = ptrFrameLayout2;
            ptrFrameLayout2.setPtrHandler(this.f35282w);
        }
        PtrFrameLayout ptrFrameLayout3 = this.f35281v;
        if (ptrFrameLayout3 != null) {
            ptrFrameLayout3.j(true);
        }
    }

    public void setPullRefreshEnabled(boolean enabled) {
        this.f35268i = enabled;
        if (enabled) {
            return;
        }
        setPtrFrameLayout(null);
    }

    public void setRefreshing(boolean refreshing) {
        PtrFrameLayout ptrFrameLayout;
        if (refreshing && this.f35268i && (ptrFrameLayout = this.f35281v) != null) {
            ptrFrameLayout.f();
        }
    }

    public void setScrollListener(RecyclerView.OnScrollListener mScrollListener) {
        this.f35279t = mScrollListener;
    }

    public void showHeaderLoading() {
        PtrFrameLayout ptrFrameLayout = this.f35281v;
        if (ptrFrameLayout != null) {
            ptrFrameLayout.f();
        }
    }

    public void showPullLoad() {
        this.f35269j = true;
        this.f35272m.f();
    }

    public synchronized void startLoadMore() {
        preload();
    }

    public void stopLoadMore() {
        if (this.f35273n && this.f35269j) {
            this.f35273n = false;
            this.f35261b = false;
            if (this.f35262c) {
                this.f35272m.setState(3);
            } else {
                this.f35272m.setState(0);
            }
        }
    }

    public void stopRefresh() {
        PtrFrameLayout ptrFrameLayout = this.f35281v;
        if (ptrFrameLayout == null || !(ptrFrameLayout instanceof PtrFrameLayout)) {
            return;
        }
        ptrFrameLayout.C();
    }

    protected void updateFooterHeight(float delta) {
        int bottomMargin = this.f35272m.getBottomMargin() + ((int) delta);
        if (this.f35269j && !this.f35273n) {
            if (bottomMargin > 50) {
                this.f35272m.setState(1);
            } else {
                this.f35272m.setState(0);
            }
        }
        this.f35272m.setBottomMargin(bottomMargin);
    }

    public XQuickRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        init();
    }

    public XQuickRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f35261b = false;
        this.f35262c = false;
        this.f35263d = new ArrayList<>();
        this.f35265f = -1.0f;
        this.f35268i = true;
        this.f35269j = true;
        this.f35270k = 0;
        this.f35274o = new e(this, null);
        this.f35275p = AppBarStateChangeListener.State.EXPANDED;
        this.f35276q = 1.0d;
        this.f35277r = 0;
        this.f35282w = new a();
        init();
    }

    public class h extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f35288e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private RecyclerView.Adapter f35289f;

        class a extends GridLayoutManager.SpanSizeLookup {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ GridLayoutManager f35291a;

            a(final GridLayoutManager val$gridManager) {
                this.f35291a = val$gridManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int position) {
                if (h.this.isHeader(position) || h.this.isFooter(position) || h.this.isRefreshHeader(position)) {
                    return this.f35291a.getSpanCount();
                }
                return 1;
            }
        }

        private class b extends com.join.mgps.base.b {
            public b(View itemView) {
                super(itemView);
            }
        }

        public h(RecyclerView.Adapter adapter) {
            this.f35289f = adapter;
        }

        private void refreshLoadMoreState() {
            XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
            if (xQuickRecyclerView.f35272m != null) {
                if (xQuickRecyclerView.f35262c) {
                    XQuickRecyclerView.this.f35272m.setState(3);
                    return;
                }
                XQuickRecyclerView xQuickRecyclerView2 = XQuickRecyclerView.this;
                if (xQuickRecyclerView2.f35273n) {
                    xQuickRecyclerView2.f35272m.setState(2);
                } else {
                    xQuickRecyclerView2.f35272m.setState(0);
                }
            }
        }

        public RecyclerView.Adapter getAdapter() {
            return this.f35289f;
        }

        public int getHeadersCount() {
            return XQuickRecyclerView.this.f35263d.size();
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
            if (XQuickRecyclerView.this.f35269j) {
                char c10 = this.f35288e ? (char) 2 : (char) 1;
                if (this.f35289f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35289f.getItemCount();
                    r10 = c10;
                    headersCount = headersCount2 + itemCount;
                    i10 = r10;
                } else {
                    headersCount = getHeadersCount();
                    i10 = c10;
                }
            } else {
                boolean z10 = this.f35288e;
                if (this.f35289f != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.f35289f.getItemCount();
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
            boolean z10 = this.f35288e;
            if (this.f35289f == null || i10 < getHeadersCount() + (z10 ? 1 : 0) || (headersCount = i10 - (getHeadersCount() + (z10 ? 1 : 0))) >= this.f35289f.getItemCount()) {
                return -1L;
            }
            return this.f35289f.getItemId(headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            RecyclerView.Adapter adapter = this.f35289f;
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            int headersCount = i10 - (getHeadersCount() + (this.f35288e ? 1 : 0));
            if (headersCount < itemCount && XQuickRecyclerView.this.isReservedItemViewType(this.f35289f.getItemViewType(headersCount))) {
                throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ");
            }
            if (isRefreshHeader(i10) && this.f35288e) {
                return 10000;
            }
            if (isHeader(i10)) {
                if (this.f35288e) {
                    i10--;
                }
                return ((Integer) XQuickRecyclerView.B.get(i10)).intValue();
            }
            if (isFooter(i10)) {
                return 10001;
            }
            if (headersCount < itemCount) {
                return this.f35289f.getItemViewType(headersCount);
            }
            return 0;
        }

        public boolean isFooter(int position) {
            return XQuickRecyclerView.this.f35269j && position == getItemCount() - 1;
        }

        public boolean isHeader(int position) {
            return this.f35288e && position >= 1 && position < XQuickRecyclerView.this.f35263d.size() + 1;
        }

        public boolean isRefreshHeader(int position) {
            return this.f35288e && position == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager));
            }
            this.f35289f.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35288e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35288e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35289f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35289f.onBindViewHolder(viewHolder, headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 10000) {
                return null;
            }
            if (XQuickRecyclerView.this.isHeaderType(viewType)) {
                return new b(XQuickRecyclerView.this.getHeaderViewByType(viewType));
            }
            return viewType == 10001 ? new b(XQuickRecyclerView.this.f35272m) : this.f35289f.onCreateViewHolder(parent, viewType);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f35289f.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
            return this.f35289f.onFailedToRecycleView(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
            super.onViewAttachedToWindow(holder);
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (isHeader(holder.getLayoutPosition()) || isRefreshHeader(holder.getLayoutPosition()) || isFooter(holder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            this.f35289f.onViewAttachedToWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
            this.f35289f.onViewDetachedFromWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder holder) {
            this.f35289f.onViewRecycled(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35289f.registerAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver observer) {
            this.f35289f.unregisterAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10, @NonNull List<Object> list) {
            if (list == null) {
                super.onBindViewHolder(viewHolder, i10, list);
                return;
            }
            if (isHeader(i10) || (isRefreshHeader(i10) && this.f35288e)) {
                return;
            }
            if (isFooter(i10)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = i10 - (getHeadersCount() + (this.f35288e ? 1 : 0));
            RecyclerView.Adapter adapter = this.f35289f;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.f35289f.onBindViewHolder(viewHolder, headersCount, list);
        }
    }
}
