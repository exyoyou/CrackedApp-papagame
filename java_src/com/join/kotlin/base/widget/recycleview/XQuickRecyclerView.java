package com.join.kotlin.base.widget.recycleview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.widget.Scroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.xrecyclerview.AppBarStateChangeListener;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.base.b;
import com.join.mgps.customview.XListViewFooter;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b3\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0015\n\u0002\b\t\u0018\u0000 \u0095\u00012\u00020\u0001:\b\u0092\u0001\u0093\u0001\u0094\u0001\u0095\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB\u0013\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\nB\u001d\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\u000bJ\b\u0010D\u001a\u00020EH\u0002J\u0010\u0010F\u001a\u00020E2\b\u0010G\u001a\u0004\u0018\u00010AJ\u000e\u0010H\u001a\u00020E2\u0006\u0010I\u001a\u00020\u0011J\u000e\u0010J\u001a\u00020E2\u0006\u0010,\u001a\u00020-J\u0018\u0010K\u001a\u00020\r2\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010\u00112\u0006\u0010O\u001a\u00020\u0007H\u0002J\u0010\u0010P\u001a\u00020\r2\u0006\u0010Q\u001a\u00020\u0007H\u0002J\u0010\u0010R\u001a\u00020\r2\u0006\u0010Q\u001a\u00020\u0007H\u0002J\u0006\u0010S\u001a\u00020EJ\u0006\u0010T\u001a\u00020EJ\u0006\u0010U\u001a\u00020EJ\u0006\u0010V\u001a\u00020EJ\u0006\u0010W\u001a\u00020EJ\u000e\u0010X\u001a\u00020E2\u0006\u0010Y\u001a\u00020\rJ\u0006\u0010Z\u001a\u00020EJ\u0006\u0010[\u001a\u00020\rJ\u000e\u0010\\\u001a\u00020E2\u0006\u0010]\u001a\u00020\rJ\u000e\u0010^\u001a\u00020E2\u0006\u0010]\u001a\u00020\rJ\b\u0010_\u001a\u00020EH\u0002J\b\u0010`\u001a\u00020EH\u0002J\u000e\u0010a\u001a\u00020E2\u0006\u0010b\u001a\u00020\rJ\u0006\u0010c\u001a\u00020EJ\u0006\u0010d\u001a\u00020EJ\u0006\u0010e\u001a\u00020EJ\u0010\u0010f\u001a\u00020E2\u0006\u0010g\u001a\u00020\u0016H\u0004J\u0006\u0010h\u001a\u00020EJ\b\u0010i\u001a\u00020EH\u0004J\u000e\u0010j\u001a\u00020E2\u0006\u0010k\u001a\u00020\u0007J\b\u0010l\u001a\u00020EH\u0002J\u0010\u0010r\u001a\u00020E2\u0006\u0010s\u001a\u00020\u0007H\u0016J\b\u0010t\u001a\u00020EH\u0014J\u0010\u0010u\u001a\u00020E2\b\u0010v\u001a\u0004\u0018\u00010\u0018J\u0010\u0010w\u001a\u00020\r2\u0006\u0010x\u001a\u00020yH\u0016J\u000e\u0010{\u001a\u00020E2\u0006\u0010|\u001a\u00020\rJ\u001a\u0010~\u001a\u00020E2\u0010\u0010\u007f\u001a\f\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0080\u0001H\u0016J\u0013\u0010\u0082\u0001\u001a\f\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0080\u0001H\u0016J\u0013\u0010\u008b\u0001\u001a\u00020\u00072\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0002J\u0013\u0010\u008e\u0001\u001a\u00020\u00072\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0002J\t\u0010\u0091\u0001\u001a\u00020EH\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\b\u0012\u0004\u0012\u00020\u0011`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0018\u00010\u0014R\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u00105\u001a\u0004\u0018\u000106X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010m\u001a\u0004\u0018\u00010\u00112\b\u0010m\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u0011\u0010z\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\bz\u0010%R\u0014\u0010}\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b}\u0010%R\u0013\u0010\u0083\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010=R\u0013\u0010\u0085\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010=R\u0013\u0010\u0087\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010=R\u0013\u0010\u0089\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\b\u008a\u0001\u0010=R\u0013\u0010\u008f\u0001\u001a\u00020\u00078F¢\u0006\u0007\u001a\u0005\b\u0090\u0001\u0010=¨\u0006\u0096\u0001"}, d2 = {"Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyle", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "isLoadingData", "", "isNoMore", "mHeaderViews", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "mWrapAdapter", "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;", "mLastY", "", "mLoadingListener", "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;", "pullRefreshEnabled", "loadingMoreEnabled", "mPageCount", "mEmptyView", "mFooterView", "Lcom/join/mgps/customview/XListViewFooter;", "getMFooterView", "()Lcom/join/mgps/customview/XListViewFooter;", "setMFooterView", "(Lcom/join/mgps/customview/XListViewFooter;)V", "mPullLoading", "getMPullLoading", "()Z", "setMPullLoading", "(Z)V", "mDataObserver", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "appbarState", "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;", "scale", "", "preloadCount", "mScroller", "Landroid/widget/Scroller;", "getMScroller", "()Landroid/widget/Scroller;", "setMScroller", "(Landroid/widget/Scroller;)V", "scrollListener", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "getScrollListener", "()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "setScrollListener", "(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V", "mScrollBack", "getMScrollBack", "()I", "setMScrollBack", "(I)V", "mPtrFrameLayout", "Lcom/join/mgps/ptr/PtrFrameLayout;", "ptrDefaultHandler", "Lcom/join/mgps/ptr/PtrDefaultHandler;", "init", "", "setPtrFrameLayout", "ptrFrameLayout", "addHeaderView", "view", "setFlingScale", "fling", "velocityX", "velocityY", "getHeaderViewByType", "itemType", "isHeaderType", "itemViewType", "isReservedItemViewType", "reset", "loadMoreComplete", "refreshComplete", "showHeaderLoading", "stopLoadMore", "setNoMoreView", "noMore", "setNoMore", "getNoMore", "setPullRefreshEnabled", "enabled", "setLoadingMoreEnabled", "enableLoadingMoreView", "disableLoadingMoreView", "setRefreshing", "refreshing", "stopRefresh", "hidePullLoad", "showPullLoad", "updateFooterHeight", "delta", "startLoadMore", "resetFooterHeight", "setPreLoadCount", QuarkInstallAppActivity_.COUNT_EXTRA, "preload", "emptyView", "getEmptyView", "()Landroid/view/View;", "setEmptyView", "(Landroid/view/View;)V", "onScrollStateChanged", NoticeTopAnimActivityDialog_.STATE_EXTRA, "onAttachedToWindow", "setLoadingListener", "listener", "onTouchEvent", "ev", "Landroid/view/MotionEvent;", "isRefreshEnable", "enablePtrFrameLayout", "enable", "isOnTop", "setAdapter", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getWrappedAdapter", "firstVisiblePosition", "getFirstVisiblePosition", "firstCompletelyVisiblePosition", "getFirstCompletelyVisiblePosition", "lastVisiblePosition", "getLastVisiblePosition", "lastCompletelyVisiblePosition", "getLastCompletelyVisiblePosition", "findMax", "lastPositions", "", "findMin", "totalItemCount", "getTotalItemCount", "computeScroll", "LoadingListener", "DataObserver", "WrapAdapter", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class XQuickRecyclerView extends RecyclerView {
    private static final float DRAG_RATE = 3.0f;
    private static final int HEADER_INIT_INDEX = 10002;
    protected static final float OFFSET_RADIO = 2.0f;
    protected static final int PULL_LOAD_MORE_DELTA = 50;
    protected static final int SCROLLBACK_FOOTER = 1;
    protected static final int SCROLLBACK_HEADER = 0;
    protected static final int SCROLL_DURATION = 400;
    private static final int TYPE_FOOTER = 10001;
    private static final int TYPE_REFRESH_HEADER = 10000;

    @NotNull
    private AppBarStateChangeListener.State appbarState;
    private boolean isLoadingData;
    private boolean isNoMore;
    private boolean loadingMoreEnabled;

    @NotNull
    private final RecyclerView.AdapterDataObserver mDataObserver;

    @Nullable
    private View mEmptyView;

    @Nullable
    private XListViewFooter mFooterView;

    @NotNull
    private final ArrayList<View> mHeaderViews;
    private float mLastY;

    @Nullable
    private LoadingListener mLoadingListener;
    private final int mPageCount;

    @Nullable
    private PtrFrameLayout mPtrFrameLayout;
    private boolean mPullLoading;
    private int mScrollBack;

    @Nullable
    private Scroller mScroller;

    @Nullable
    private WrapAdapter mWrapAdapter;
    private int preloadCount;

    @NotNull
    private final com.join.mgps.ptr.a ptrDefaultHandler;
    private boolean pullRefreshEnabled;
    private double scale;

    @Nullable
    private RecyclerView.OnScrollListener scrollListener;

    @NotNull
    private static final List<Integer> sHeaderTypes = new ArrayList();

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\"\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "<init>", "(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V", "onChanged", "", "onItemRangeInserted", "positionStart", "", "itemCount", "onItemRangeChanged", "payload", "", "onItemRangeRemoved", "onItemRangeMoved", "fromPosition", "toPosition", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private final class DataObserver extends RecyclerView.AdapterDataObserver {
        public DataObserver() {
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
            if (adapter != null && XQuickRecyclerView.this.mEmptyView != null) {
                ?? r11 = XQuickRecyclerView.this.pullRefreshEnabled;
                if (XQuickRecyclerView.this.loadingMoreEnabled) {
                    r10 = r11;
                    r10 = r11 + 1;
                }
                r10 = r11;
                if (adapter.getItemCount() == r10) {
                    View view = XQuickRecyclerView.this.mEmptyView;
                    Intrinsics.checkNotNull(view);
                    view.setVisibility(0);
                    XQuickRecyclerView.this.setVisibility(8);
                } else {
                    View view2 = XQuickRecyclerView.this.mEmptyView;
                    Intrinsics.checkNotNull(view2);
                    view2.setVisibility(8);
                    XQuickRecyclerView.this.setVisibility(0);
                }
            }
            if (XQuickRecyclerView.this.mWrapAdapter != null) {
                WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
                Intrinsics.checkNotNull(wrapAdapter);
                wrapAdapter.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
            Intrinsics.checkNotNull(wrapAdapter);
            wrapAdapter.notifyItemRangeChanged(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
            Intrinsics.checkNotNull(wrapAdapter);
            wrapAdapter.notifyItemRangeInserted(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
            Intrinsics.checkNotNull(wrapAdapter);
            wrapAdapter.notifyItemMoved(fromPosition, toPosition);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
            Intrinsics.checkNotNull(wrapAdapter);
            wrapAdapter.notifyItemRangeRemoved(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount, @Nullable Object payload) {
            WrapAdapter wrapAdapter = XQuickRecyclerView.this.mWrapAdapter;
            Intrinsics.checkNotNull(wrapAdapter);
            wrapAdapter.notifyItemRangeChanged(positionStart, itemCount, payload);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;", "", "onRefresh", "", "onLoadMore", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface LoadingListener {
        void onLoadMore();

        void onRefresh();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public XQuickRecyclerView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNull(context);
        this.mHeaderViews = new ArrayList<>();
        this.mLastY = -1.0f;
        this.pullRefreshEnabled = true;
        this.loadingMoreEnabled = true;
        this.mDataObserver = new DataObserver();
        this.appbarState = AppBarStateChangeListener.State.EXPANDED;
        this.scale = 1.0d;
        this.preloadCount = 5;
        this.ptrDefaultHandler = new com.join.mgps.ptr.a() { // from class: com.join.kotlin.base.widget.recycleview.XQuickRecyclerView$ptrDefaultHandler$1
            private final void setFooterDefault() {
                XQuickRecyclerView xQuickRecyclerView = this.this$0;
                xQuickRecyclerView.setLoadingMoreEnabled(xQuickRecyclerView.loadingMoreEnabled);
            }

            @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
            public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
                Intrinsics.checkNotNullParameter(frame, "frame");
                Intrinsics.checkNotNullParameter(content, "content");
                Intrinsics.checkNotNullParameter(header, "header");
                return this.this$0.appbarState == AppBarStateChangeListener.State.EXPANDED && com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
            }

            @Override // com.join.mgps.ptr.b
            public void onRefreshBegin(PtrFrameLayout frame) {
                Intrinsics.checkNotNullParameter(frame, "frame");
                setFooterDefault();
                if (this.this$0.mLoadingListener != null) {
                    XQuickRecyclerView.LoadingListener loadingListener = this.this$0.mLoadingListener;
                    Intrinsics.checkNotNull(loadingListener);
                    loadingListener.onRefresh();
                }
            }
        };
        init();
    }

    private final void disableLoadingMoreView() {
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.a();
        XListViewFooter xListViewFooter2 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter2);
        xListViewFooter2.setOnClickListener(null);
    }

    private final void enableLoadingMoreView() {
        this.mPullLoading = false;
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.f();
        XListViewFooter xListViewFooter2 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter2);
        xListViewFooter2.setState(0);
        XListViewFooter xListViewFooter3 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter3);
        xListViewFooter3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.base.widget.recycleview.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                XQuickRecyclerView.enableLoadingMoreView$lambda$0(this.f48553b, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableLoadingMoreView$lambda$0(XQuickRecyclerView xQuickRecyclerView, View view) {
        if (xQuickRecyclerView.isNoMore) {
            return;
        }
        xQuickRecyclerView.mPullLoading = true;
        XListViewFooter xListViewFooter = xQuickRecyclerView.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.setState(2);
        LoadingListener loadingListener = xQuickRecyclerView.mLoadingListener;
        if (loadingListener != null) {
            Intrinsics.checkNotNull(loadingListener);
            loadingListener.onLoadMore();
        }
    }

    private final int findMax(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    private final int findMin(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 < i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getHeaderViewByType(int itemType) {
        if (isHeaderType(itemType)) {
            return this.mHeaderViews.get(itemType - 10002);
        }
        return null;
    }

    private final void init() {
        this.mScroller = new Scroller(getContext(), new AccelerateInterpolator());
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.init.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
            }
        });
        if (this.pullRefreshEnabled) {
            setPtrFrameLayout(null);
        }
        XListViewFooter xListViewFooter = new XListViewFooter(getContext());
        xListViewFooter.setState(0);
        this.mFooterView = xListViewFooter;
        setLoadingMoreEnabled(this.loadingMoreEnabled);
        XListViewFooter xListViewFooter2 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter2);
        xListViewFooter2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isHeaderType(int itemViewType) {
        return this.mHeaderViews.size() > 0 && sHeaderTypes.contains(Integer.valueOf(itemViewType));
    }

    private final boolean isOnTop() {
        return this.mPtrFrameLayout != null && getFirstVisiblePosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isReservedItemViewType(int itemViewType) {
        return itemViewType == 10000 || itemViewType == 10001 || sHeaderTypes.contains(Integer.valueOf(itemViewType));
    }

    private final void preload() {
        if (!m.j(getContext()) || this.isLoadingData || !this.loadingMoreEnabled || this.mPullLoading || this.isNoMore || getLastVisiblePosition() < getTotalItemCount() - this.preloadCount) {
            return;
        }
        this.isLoadingData = true;
        this.mPullLoading = true;
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.setState(2);
        LoadingListener loadingListener = this.mLoadingListener;
        if (loadingListener != null) {
            Intrinsics.checkNotNull(loadingListener);
            loadingListener.onLoadMore();
        }
    }

    public final void addHeaderView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        sHeaderTypes.add(Integer.valueOf(this.mHeaderViews.size() + 10002));
        this.mHeaderViews.add(view);
    }

    @Override // android.view.View
    public void computeScroll() {
        Scroller scroller = this.mScroller;
        Intrinsics.checkNotNull(scroller);
        if (scroller.computeScrollOffset()) {
            if (this.mScrollBack != 0) {
                XListViewFooter xListViewFooter = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter);
                Scroller scroller2 = this.mScroller;
                Intrinsics.checkNotNull(scroller2);
                xListViewFooter.setBottomMargin(scroller2.getCurrY());
            }
            postInvalidate();
        }
        super.computeScroll();
    }

    public final void enablePtrFrameLayout(boolean enable) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int velocityX, int velocityY) {
        return super.fling(velocityX, velocityY * ((int) this.scale));
    }

    @Nullable
    /* JADX INFO: renamed from: getEmptyView, reason: from getter */
    public final View getMEmptyView() {
        return this.mEmptyView;
    }

    public final int getFirstCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            Intrinsics.checkNotNull(linearLayoutManager);
            return linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
        return findMin(iArr);
    }

    public final int getFirstVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            Intrinsics.checkNotNull(linearLayoutManager);
            return linearLayoutManager.findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        return findMin(iArr);
    }

    public final int getLastCompletelyVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            Intrinsics.checkNotNull(linearLayoutManager);
            return linearLayoutManager.findLastCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        return findMax(iArr);
    }

    public final int getLastVisiblePosition() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            Intrinsics.checkNotNull(linearLayoutManager);
            return linearLayoutManager.findLastVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        return findMax(iArr);
    }

    @Nullable
    protected final XListViewFooter getMFooterView() {
        return this.mFooterView;
    }

    protected final boolean getMPullLoading() {
        return this.mPullLoading;
    }

    protected final int getMScrollBack() {
        return this.mScrollBack;
    }

    @Nullable
    protected final Scroller getMScroller() {
        return this.mScroller;
    }

    /* JADX INFO: renamed from: getNoMore, reason: from getter */
    public final boolean getIsNoMore() {
        return this.isNoMore;
    }

    @Nullable
    public final RecyclerView.OnScrollListener getScrollListener() {
        return this.scrollListener;
    }

    public final int getTotalItemCount() {
        RecyclerView.Adapter adapter = getAdapter();
        Intrinsics.checkNotNull(adapter);
        return (adapter.getItemCount() - 1) - this.mHeaderViews.size();
    }

    @Nullable
    public RecyclerView.Adapter<RecyclerView.ViewHolder> getWrappedAdapter() {
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
        WrapAdapter wrapAdapter = this.mWrapAdapter;
        if (wrapAdapter == null || (adapter = wrapAdapter.getAdapter()) == null) {
            return null;
        }
        return adapter;
    }

    public final void hidePullLoad() {
        this.loadingMoreEnabled = false;
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.a();
    }

    public final boolean isRefreshEnable() {
        return this.appbarState == AppBarStateChangeListener.State.EXPANDED && getScrollX() <= 0;
    }

    public final void loadMoreComplete() {
        this.isLoadingData = false;
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
            int childCount = coordinatorLayout.getChildCount();
            while (true) {
                childCount--;
                if (-1 >= childCount) {
                    appBarLayout = null;
                    break;
                }
                View childAt = coordinatorLayout.getChildAt(childCount);
                if (childAt instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) childAt;
                    break;
                }
            }
            if (appBarLayout != null) {
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new AppBarStateChangeListener() { // from class: com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.onAttachedToWindow.1
                    @Override // com.join.android.app.component.xrecyclerview.AppBarStateChangeListener
                    public void onStateChanged(AppBarLayout appBarLayout2, AppBarStateChangeListener.State state) {
                        Intrinsics.checkNotNullParameter(appBarLayout2, "appBarLayout");
                        Intrinsics.checkNotNullParameter(state, "state");
                        XQuickRecyclerView.this.appbarState = state;
                    }
                });
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        int iFindLastVisibleItemPosition;
        boolean zL;
        super.onScrollStateChanged(state);
        if (state != 0 || this.mLoadingListener == null || this.isLoadingData || !this.loadingMoreEnabled) {
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
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            Intrinsics.checkNotNull(linearLayoutManager);
            iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        }
        PtrFrameLayout ptrFrameLayout = this.mPtrFrameLayout;
        if (ptrFrameLayout != null) {
            Intrinsics.checkNotNull(ptrFrameLayout);
            zL = ptrFrameLayout.l();
        } else {
            zL = false;
        }
        Intrinsics.checkNotNull(layoutManager);
        if (layoutManager.getChildCount() > 0 && iFindLastVisibleItemPosition >= this.preloadCount && !this.isNoMore && !zL) {
            preload();
        }
        RecyclerView.OnScrollListener onScrollListener = this.scrollListener;
        if (onScrollListener != null) {
            Intrinsics.checkNotNull(onScrollListener);
            onScrollListener.onScrollStateChanged(this, state);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (this.mLastY == -1.0f) {
            this.mLastY = ev.getRawY();
        }
        int action = ev.getAction();
        if (action == 0) {
            this.mLastY = ev.getRawY();
        } else if (action != 2) {
            this.mLastY = -1.0f;
            if (getLastVisiblePosition() == getTotalItemCount() && !this.isNoMore) {
                startLoadMore();
            }
            resetFooterHeight();
        } else {
            float rawY = ev.getRawY() - this.mLastY;
            this.mLastY = ev.getRawY();
            if (getLastVisiblePosition() == getTotalItemCount()) {
                XListViewFooter xListViewFooter = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter);
                if ((xListViewFooter.getBottomMargin() > 0 || rawY < 0.0f) && !this.mPullLoading && this.loadingMoreEnabled && !this.isNoMore) {
                    updateFooterHeight((-rawY) / 2.0f);
                }
            }
        }
        return super.onTouchEvent(ev);
    }

    public final void refreshComplete() {
        PtrFrameLayout ptrFrameLayout = this.mPtrFrameLayout;
        if (ptrFrameLayout != null) {
            Intrinsics.checkNotNull(ptrFrameLayout);
            ptrFrameLayout.C();
        }
        setNoMoreView(false);
    }

    public final void reset() {
        setNoMoreView(false);
        loadMoreComplete();
        refreshComplete();
    }

    protected final void resetFooterHeight() {
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        int bottomMargin = xListViewFooter.getBottomMargin();
        if (bottomMargin > 0) {
            this.mScrollBack = 1;
            Scroller scroller = this.mScroller;
            Intrinsics.checkNotNull(scroller);
            scroller.startScroll(0, bottomMargin, 0, -bottomMargin, 400);
            invalidate();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        WrapAdapter wrapAdapter = new WrapAdapter(adapter);
        this.mWrapAdapter = wrapAdapter;
        super.setAdapter(wrapAdapter);
        if (adapter != null) {
            if (!adapter.hasObservers()) {
                adapter.registerAdapterDataObserver(this.mDataObserver);
            }
            this.mDataObserver.onChanged();
        }
    }

    public final void setEmptyView(@Nullable View view) {
        this.mEmptyView = view;
        this.mDataObserver.onChanged();
    }

    public final void setFlingScale(double scale) {
        this.scale = scale;
    }

    public final void setLoadingListener(@Nullable LoadingListener listener) {
        this.mLoadingListener = listener;
    }

    public final void setLoadingMoreEnabled(boolean enabled) {
        this.loadingMoreEnabled = enabled;
        if (enabled) {
            enableLoadingMoreView();
        } else {
            disableLoadingMoreView();
        }
    }

    protected final void setMFooterView(@Nullable XListViewFooter xListViewFooter) {
        this.mFooterView = xListViewFooter;
    }

    protected final void setMPullLoading(boolean z10) {
        this.mPullLoading = z10;
    }

    protected final void setMScrollBack(int i10) {
        this.mScrollBack = i10;
    }

    protected final void setMScroller(@Nullable Scroller scroller) {
        this.mScroller = scroller;
    }

    public final void setNoMore() {
        stopLoadMore();
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.f();
        XListViewFooter xListViewFooter2 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter2);
        xListViewFooter2.setState(3);
        this.mPullLoading = false;
        this.isNoMore = true;
        XListViewFooter xListViewFooter3 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter3);
        xListViewFooter3.setOnClickListener(null);
    }

    public final void setNoMoreView(boolean noMore) {
        this.mPullLoading = false;
        this.isNoMore = noMore;
        if (noMore) {
            setNoMore();
        } else {
            setLoadingMoreEnabled(this.loadingMoreEnabled);
        }
    }

    public final void setPreLoadCount(int count) {
        this.preloadCount = count;
    }

    public final void setPtrFrameLayout(@Nullable PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout != null) {
            this.mPtrFrameLayout = ptrFrameLayout;
            Intrinsics.checkNotNull(ptrFrameLayout);
            ptrFrameLayout.setPtrHandler(this.ptrDefaultHandler);
        } else if (getParent() != null && (getParent() instanceof PtrFrameLayout)) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type com.join.mgps.ptr.PtrFrameLayout");
            PtrFrameLayout ptrFrameLayout2 = (PtrFrameLayout) parent;
            this.mPtrFrameLayout = ptrFrameLayout2;
            Intrinsics.checkNotNull(ptrFrameLayout2);
            ptrFrameLayout2.setPtrHandler(this.ptrDefaultHandler);
        }
        PtrFrameLayout ptrFrameLayout3 = this.mPtrFrameLayout;
        if (ptrFrameLayout3 != null) {
            Intrinsics.checkNotNull(ptrFrameLayout3);
            ptrFrameLayout3.j(true);
        }
    }

    public final void setPullRefreshEnabled(boolean enabled) {
        this.pullRefreshEnabled = enabled;
        if (enabled) {
            return;
        }
        setPtrFrameLayout(null);
    }

    public final void setRefreshing(boolean refreshing) {
        PtrFrameLayout ptrFrameLayout;
        if (refreshing && this.pullRefreshEnabled && (ptrFrameLayout = this.mPtrFrameLayout) != null) {
            Intrinsics.checkNotNull(ptrFrameLayout);
            ptrFrameLayout.f();
        }
    }

    public final void setScrollListener(@Nullable RecyclerView.OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    public final void showHeaderLoading() {
        PtrFrameLayout ptrFrameLayout = this.mPtrFrameLayout;
        if (ptrFrameLayout != null) {
            Intrinsics.checkNotNull(ptrFrameLayout);
            ptrFrameLayout.f();
        }
    }

    public final void showPullLoad() {
        this.loadingMoreEnabled = true;
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        xListViewFooter.f();
    }

    public final synchronized void startLoadMore() {
        preload();
    }

    public final void stopLoadMore() {
        if (this.mPullLoading && this.loadingMoreEnabled) {
            this.mPullLoading = false;
            this.isLoadingData = false;
            if (this.isNoMore) {
                XListViewFooter xListViewFooter = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter);
                xListViewFooter.setState(3);
            } else {
                XListViewFooter xListViewFooter2 = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter2);
                xListViewFooter2.setState(0);
            }
        }
    }

    public final void stopRefresh() {
        PtrFrameLayout ptrFrameLayout = this.mPtrFrameLayout;
        if (ptrFrameLayout == null || ptrFrameLayout == null) {
            return;
        }
        Intrinsics.checkNotNull(ptrFrameLayout);
        ptrFrameLayout.C();
    }

    protected final void updateFooterHeight(float delta) {
        XListViewFooter xListViewFooter = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter);
        int bottomMargin = xListViewFooter.getBottomMargin() + ((int) delta);
        if (this.loadingMoreEnabled && !this.mPullLoading) {
            if (bottomMargin > 50) {
                XListViewFooter xListViewFooter2 = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter2);
                xListViewFooter2.setState(1);
            } else {
                XListViewFooter xListViewFooter3 = this.mFooterView;
                Intrinsics.checkNotNull(xListViewFooter3);
                xListViewFooter3.setState(0);
            }
        }
        XListViewFooter xListViewFooter4 = this.mFooterView;
        Intrinsics.checkNotNull(xListViewFooter4);
        xListViewFooter4.setBottomMargin(bottomMargin);
    }

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\fH\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016J&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u0017H\u0002J\b\u0010\u001d\u001a\u00020\fH\u0016J\u0010\u0010\u001e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010'\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010(\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0016R\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006."}, d2 = {"Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adapter", "<init>", "(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "enableHeader", "", "isHeader", "position", "", "isFooter", "isRefreshHeader", "headersCount", "getHeadersCount", "()I", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "", "holder", "payloads", "", "", "refreshLoadMoreState", "getItemCount", "getItemViewType", "getItemId", "", "onAttachedToRecyclerView", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "onDetachedFromRecyclerView", "onViewAttachedToWindow", "onViewDetachedFromWindow", "onViewRecycled", "onFailedToRecycleView", "unregisterAdapterDataObserver", "observer", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "registerAdapterDataObserver", "SimpleViewHolder", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class WrapAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        @Nullable
        private final RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
        private final boolean enableHeader;

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;", "Lcom/join/mgps/base/BaseViewHolder;", "itemView", "Landroid/view/View;", "<init>", "(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroid/view/View;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        private final class SimpleViewHolder extends b {
            public SimpleViewHolder(View view) {
                super(view);
            }
        }

        public WrapAdapter(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
            this.adapter = adapter;
        }

        private final void refreshLoadMoreState() {
            if (XQuickRecyclerView.this.getMFooterView() != null) {
                if (XQuickRecyclerView.this.isNoMore) {
                    XListViewFooter mFooterView = XQuickRecyclerView.this.getMFooterView();
                    Intrinsics.checkNotNull(mFooterView);
                    mFooterView.setState(3);
                } else if (XQuickRecyclerView.this.getMPullLoading()) {
                    XListViewFooter mFooterView2 = XQuickRecyclerView.this.getMFooterView();
                    Intrinsics.checkNotNull(mFooterView2);
                    mFooterView2.setState(2);
                } else {
                    XListViewFooter mFooterView3 = XQuickRecyclerView.this.getMFooterView();
                    Intrinsics.checkNotNull(mFooterView3);
                    mFooterView3.setState(0);
                }
            }
        }

        @Nullable
        public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
            return this.adapter;
        }

        public final int getHeadersCount() {
            return XQuickRecyclerView.this.mHeaderViews.size();
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
            if (XQuickRecyclerView.this.loadingMoreEnabled) {
                char c10 = this.enableHeader ? (char) 2 : (char) 1;
                if (this.adapter != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.adapter.getItemCount();
                    r10 = c10;
                    headersCount = headersCount2 + itemCount;
                    i10 = r10;
                } else {
                    headersCount = getHeadersCount();
                    i10 = c10;
                }
            } else {
                boolean z10 = this.enableHeader;
                if (this.adapter != null) {
                    headersCount2 = getHeadersCount();
                    itemCount = this.adapter.getItemCount();
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
        public long getItemId(int position) {
            int headersCount;
            boolean z10 = this.enableHeader;
            if (this.adapter == null || position < getHeadersCount() + (z10 ? 1 : 0) || (headersCount = position - (getHeadersCount() + (z10 ? 1 : 0))) >= this.adapter.getItemCount()) {
                return -1L;
            }
            return this.adapter.getItemId(headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            int headersCount = position - (getHeadersCount() + (this.enableHeader ? 1 : 0));
            if (headersCount < itemCount) {
                XQuickRecyclerView xQuickRecyclerView = XQuickRecyclerView.this;
                RecyclerView.Adapter<RecyclerView.ViewHolder> adapter2 = this.adapter;
                Intrinsics.checkNotNull(adapter2);
                if (!(!xQuickRecyclerView.isReservedItemViewType(adapter2.getItemViewType(headersCount)))) {
                    throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ".toString());
                }
            }
            if (isRefreshHeader(position) && this.enableHeader) {
                return 10000;
            }
            if (isHeader(position)) {
                if (this.enableHeader) {
                    position--;
                }
                return ((Number) XQuickRecyclerView.sHeaderTypes.get(position)).intValue();
            }
            if (isFooter(position)) {
                return 10001;
            }
            if (headersCount >= itemCount) {
                return 0;
            }
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter3 = this.adapter;
            Intrinsics.checkNotNull(adapter3);
            return adapter3.getItemViewType(headersCount);
        }

        public final boolean isFooter(int position) {
            return XQuickRecyclerView.this.loadingMoreEnabled && position == getItemCount() - 1;
        }

        public final boolean isHeader(int position) {
            return this.enableHeader && position >= 1 && position < XQuickRecyclerView.this.mHeaderViews.size() + 1;
        }

        public final boolean isRefreshHeader(int position) {
            return this.enableHeader && position == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onAttachedToRecyclerView(recyclerView);
            final RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                ((GridLayoutManager) layoutManager).setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.join.kotlin.base.widget.recycleview.XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int position) {
                        if (this.this$0.isHeader(position) || this.this$0.isFooter(position) || this.this$0.isRefreshHeader(position)) {
                            return ((GridLayoutManager) layoutManager).getSpanCount();
                        }
                        return 1;
                    }
                });
            }
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (isHeader(position) || (isRefreshHeader(position) && this.enableHeader)) {
                return;
            }
            if (isFooter(position)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = position - (getHeadersCount() + (this.enableHeader ? 1 : 0));
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.adapter.onBindViewHolder(holder, headersCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (viewType == 10000) {
                return new SimpleViewHolder(new View(parent.getContext()));
            }
            if (XQuickRecyclerView.this.isHeaderType(viewType)) {
                return new SimpleViewHolder(XQuickRecyclerView.this.getHeaderViewByType(viewType));
            }
            if (viewType == 10001) {
                return new SimpleViewHolder(XQuickRecyclerView.this.getMFooterView());
            }
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            RecyclerView.ViewHolder viewHolderOnCreateViewHolder = adapter.onCreateViewHolder(parent, viewType);
            Intrinsics.checkNotNullExpressionValue(viewHolderOnCreateViewHolder, "onCreateViewHolder(...)");
            return viewHolderOnCreateViewHolder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            return adapter.onFailedToRecycleView(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            super.onViewAttachedToWindow(holder);
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (isHeader(holder.getLayoutPosition()) || isRefreshHeader(holder.getLayoutPosition()) || isFooter(holder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.onViewAttachedToWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.onViewDetachedFromWindow(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.onViewRecycled(holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(@NotNull RecyclerView.AdapterDataObserver observer) {
            Intrinsics.checkNotNullParameter(observer, "observer");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.registerAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(@NotNull RecyclerView.AdapterDataObserver observer) {
            Intrinsics.checkNotNullParameter(observer, "observer");
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            Intrinsics.checkNotNull(adapter);
            adapter.unregisterAdapterDataObserver(observer);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @NotNull List<? extends Object> payloads) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (isHeader(position) || (isRefreshHeader(position) && this.enableHeader)) {
                return;
            }
            if (isFooter(position)) {
                refreshLoadMoreState();
                return;
            }
            int headersCount = position - (getHeadersCount() + (this.enableHeader ? 1 : 0));
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            if (adapter == null || headersCount >= adapter.getItemCount()) {
                return;
            }
            this.adapter.onBindViewHolder(holder, headersCount, payloads);
        }
    }

    public XQuickRecyclerView(@Nullable Context context) {
        this(context, null);
        init();
    }

    public XQuickRecyclerView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        init();
    }
}
