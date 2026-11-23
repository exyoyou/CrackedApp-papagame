.class public final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$Companion;,
        Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;,
        Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;,
        Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u00083\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0015\n\u0002\u0008\t\u0018\u0000 \u0095\u00012\u00020\u0001:\u0008\u0092\u0001\u0093\u0001\u0094\u0001\u0095\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001d\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u0008\u0010D\u001a\u00020EH\u0002J\u0010\u0010F\u001a\u00020E2\u0008\u0010G\u001a\u0004\u0018\u00010AJ\u000e\u0010H\u001a\u00020E2\u0006\u0010I\u001a\u00020\u0011J\u000e\u0010J\u001a\u00020E2\u0006\u0010,\u001a\u00020-J\u0018\u0010K\u001a\u00020\r2\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0007H\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010\u00112\u0006\u0010O\u001a\u00020\u0007H\u0002J\u0010\u0010P\u001a\u00020\r2\u0006\u0010Q\u001a\u00020\u0007H\u0002J\u0010\u0010R\u001a\u00020\r2\u0006\u0010Q\u001a\u00020\u0007H\u0002J\u0006\u0010S\u001a\u00020EJ\u0006\u0010T\u001a\u00020EJ\u0006\u0010U\u001a\u00020EJ\u0006\u0010V\u001a\u00020EJ\u0006\u0010W\u001a\u00020EJ\u000e\u0010X\u001a\u00020E2\u0006\u0010Y\u001a\u00020\rJ\u0006\u0010Z\u001a\u00020EJ\u0006\u0010[\u001a\u00020\rJ\u000e\u0010\\\u001a\u00020E2\u0006\u0010]\u001a\u00020\rJ\u000e\u0010^\u001a\u00020E2\u0006\u0010]\u001a\u00020\rJ\u0008\u0010_\u001a\u00020EH\u0002J\u0008\u0010`\u001a\u00020EH\u0002J\u000e\u0010a\u001a\u00020E2\u0006\u0010b\u001a\u00020\rJ\u0006\u0010c\u001a\u00020EJ\u0006\u0010d\u001a\u00020EJ\u0006\u0010e\u001a\u00020EJ\u0010\u0010f\u001a\u00020E2\u0006\u0010g\u001a\u00020\u0016H\u0004J\u0006\u0010h\u001a\u00020EJ\u0008\u0010i\u001a\u00020EH\u0004J\u000e\u0010j\u001a\u00020E2\u0006\u0010k\u001a\u00020\u0007J\u0008\u0010l\u001a\u00020EH\u0002J\u0010\u0010r\u001a\u00020E2\u0006\u0010s\u001a\u00020\u0007H\u0016J\u0008\u0010t\u001a\u00020EH\u0014J\u0010\u0010u\u001a\u00020E2\u0008\u0010v\u001a\u0004\u0018\u00010\u0018J\u0010\u0010w\u001a\u00020\r2\u0006\u0010x\u001a\u00020yH\u0016J\u000e\u0010{\u001a\u00020E2\u0006\u0010|\u001a\u00020\rJ\u001a\u0010~\u001a\u00020E2\u0010\u0010\u007f\u001a\u000c\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0080\u0001H\u0016J\u0013\u0010\u0082\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0080\u0001H\u0016J\u0013\u0010\u008b\u0001\u001a\u00020\u00072\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0002J\u0013\u0010\u008e\u0001\u001a\u00020\u00072\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0002J\t\u0010\u0091\u0001\u001a\u00020EH\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\u0008\u0012\u0004\u0012\u00020\u0011`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0018\u00010\u0014R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\rX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u00105\u001a\u0004\u0018\u000106X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010;\u001a\u00020\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0010\u0010@\u001a\u0004\u0018\u00010AX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010m\u001a\u0004\u0018\u00010\u00112\u0008\u0010m\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\u0011\u0010z\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010%R\u0014\u0010}\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008}\u0010%R\u0013\u0010\u0083\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010=R\u0013\u0010\u0085\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010=R\u0013\u0010\u0087\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u0088\u0001\u0010=R\u0013\u0010\u0089\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u008a\u0001\u0010=R\u0013\u0010\u008f\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u0090\u0001\u0010=\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "isLoadingData",
        "",
        "isNoMore",
        "mHeaderViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "mWrapAdapter",
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;",
        "mLastY",
        "",
        "mLoadingListener",
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;",
        "pullRefreshEnabled",
        "loadingMoreEnabled",
        "mPageCount",
        "mEmptyView",
        "mFooterView",
        "Lcom/join/mgps/customview/XListViewFooter;",
        "getMFooterView",
        "()Lcom/join/mgps/customview/XListViewFooter;",
        "setMFooterView",
        "(Lcom/join/mgps/customview/XListViewFooter;)V",
        "mPullLoading",
        "getMPullLoading",
        "()Z",
        "setMPullLoading",
        "(Z)V",
        "mDataObserver",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "appbarState",
        "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;",
        "scale",
        "",
        "preloadCount",
        "mScroller",
        "Landroid/widget/Scroller;",
        "getMScroller",
        "()Landroid/widget/Scroller;",
        "setMScroller",
        "(Landroid/widget/Scroller;)V",
        "scrollListener",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "getScrollListener",
        "()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "setScrollListener",
        "(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V",
        "mScrollBack",
        "getMScrollBack",
        "()I",
        "setMScrollBack",
        "(I)V",
        "mPtrFrameLayout",
        "Lcom/join/mgps/ptr/PtrFrameLayout;",
        "ptrDefaultHandler",
        "Lcom/join/mgps/ptr/PtrDefaultHandler;",
        "init",
        "",
        "setPtrFrameLayout",
        "ptrFrameLayout",
        "addHeaderView",
        "view",
        "setFlingScale",
        "fling",
        "velocityX",
        "velocityY",
        "getHeaderViewByType",
        "itemType",
        "isHeaderType",
        "itemViewType",
        "isReservedItemViewType",
        "reset",
        "loadMoreComplete",
        "refreshComplete",
        "showHeaderLoading",
        "stopLoadMore",
        "setNoMoreView",
        "noMore",
        "setNoMore",
        "getNoMore",
        "setPullRefreshEnabled",
        "enabled",
        "setLoadingMoreEnabled",
        "enableLoadingMoreView",
        "disableLoadingMoreView",
        "setRefreshing",
        "refreshing",
        "stopRefresh",
        "hidePullLoad",
        "showPullLoad",
        "updateFooterHeight",
        "delta",
        "startLoadMore",
        "resetFooterHeight",
        "setPreLoadCount",
        "count",
        "preload",
        "emptyView",
        "getEmptyView",
        "()Landroid/view/View;",
        "setEmptyView",
        "(Landroid/view/View;)V",
        "onScrollStateChanged",
        "state",
        "onAttachedToWindow",
        "setLoadingListener",
        "listener",
        "onTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "isRefreshEnable",
        "enablePtrFrameLayout",
        "enable",
        "isOnTop",
        "setAdapter",
        "adapter",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "getWrappedAdapter",
        "firstVisiblePosition",
        "getFirstVisiblePosition",
        "firstCompletelyVisiblePosition",
        "getFirstCompletelyVisiblePosition",
        "lastVisiblePosition",
        "getLastVisiblePosition",
        "lastCompletelyVisiblePosition",
        "getLastCompletelyVisiblePosition",
        "findMax",
        "lastPositions",
        "",
        "findMin",
        "totalItemCount",
        "getTotalItemCount",
        "computeScroll",
        "LoadingListener",
        "DataObserver",
        "WrapAdapter",
        "Companion",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAG_RATE:F = 3.0f

.field private static final HEADER_INIT_INDEX:I = 0x2712

.field protected static final OFFSET_RADIO:F = 2.0f

.field protected static final PULL_LOAD_MORE_DELTA:I = 0x32

.field protected static final SCROLLBACK_FOOTER:I = 0x1

.field protected static final SCROLLBACK_HEADER:I = 0x0

.field protected static final SCROLL_DURATION:I = 0x190

.field private static final TYPE_FOOTER:I = 0x2711

.field private static final TYPE_REFRESH_HEADER:I = 0x2710

.field private static final sHeaderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private appbarState:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLoadingData:Z

.field private isNoMore:Z

.field private loadingMoreEnabled:Z

.field private final mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFooterView:Lcom/join/mgps/customview/XListViewFooter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mLastY:F

.field private mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPageCount:I

.field private mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPullLoading:Z

.field private mScrollBack:I

.field private mScroller:Landroid/widget/Scroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWrapAdapter:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private preloadCount:I

.field private final ptrDefaultHandler:Lcom/join/mgps/ptr/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pullRefreshEnabled:Z

.field private scale:D

.field private scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->Companion:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->pullRefreshEnabled:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 6
    new-instance p1, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;

    invoke-direct {p1, p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$DataObserver;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7
    sget-object p1, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->appbarState:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 8
    iput-wide p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scale:D

    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preloadCount:I

    .line 10
    new-instance p1, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;

    invoke-direct {p1, p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->ptrDefaultHandler:Lcom/join/mgps/ptr/a;

    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->enableLoadingMoreView$lambda$0(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAppbarState$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->appbarState:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHeaderViewByType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getHeaderViewByType(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getLoadingMoreEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMEmptyView$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mEmptyView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMHeaderViews$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLoadingListener$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMWrapAdapter$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mWrapAdapter:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPullRefreshEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->pullRefreshEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getSHeaderTypes$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$isHeaderType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isHeaderType(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isNoMore$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isReservedItemViewType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isReservedItemViewType(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setAppbarState$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->appbarState:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 2
    .line 3
    return-void
.end method

.method private final disableLoadingMoreView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final enableLoadingMoreView()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/kotlin/base/widget/recycleview/a;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/join/kotlin/base/widget/recycleview/a;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final enableLoadingMoreView$lambda$0(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;->onLoadMore()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final findMax([I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    array-length v2, p1

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p1, v0

    .line 8
    .line 9
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private final findMin([I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    array-length v2, p1

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p1, v0

    .line 8
    .line 9
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private final getHeaderViewByType(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isHeaderType(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit16 p1, p1, -0x2712

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    :goto_0
    return-object p1
.end method

.method private final init()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 16
    .line 17
    new-instance v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$init$1;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$init$1;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->pullRefreshEnabled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    const/4 v3, -0x2

    .line 62
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final isHeaderType(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private final isOnTop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getFirstVisiblePosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method

.method private final isReservedItemViewType(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2711

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private final preload()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isLoadingData:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getTotalItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preloadCount:I

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    if-lt v0, v1, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isLoadingData:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;->onLoadMore()V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public final addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit16 v1, v1, 0x2712

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScrollBack:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final enablePtrFrameLayout(Z)V
    .locals 0

    return-void
.end method

.method public fling(II)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scale:D

    .line 2
    .line 3
    double-to-int v0, v0

    .line 4
    mul-int p2, p2, v0

    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mEmptyView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstCompletelyVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->findMin([I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    return v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->findMin([I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    return v0
.end method

.method public final getLastCompletelyVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->findMax([I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    return v0
.end method

.method public final getLastVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->findMax([I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    return v0
.end method

.method protected final getMFooterView()Lcom/join/mgps/customview/XListViewFooter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMPullLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final getMScrollBack()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScrollBack:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getMScroller()Landroid/widget/Scroller;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNoMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mWrapAdapter:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :cond_1
    return-object v0
.end method

.method public final hidePullLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isRefreshEnable()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->appbarState:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 6
    .line 7
    sget-object v2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    :cond_0
    return v3
.end method

.method public final loadMoreComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isLoadingData:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->stopLoadMore()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    :goto_2
    const/4 v2, -0x1

    .line 33
    if-ge v2, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 50
    :goto_3
    if-eqz v2, :cond_4

    .line 51
    .line 52
    new-instance v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isLoadingData:Z

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-array v2, v2, [I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->findMax([I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v1, v0

    .line 56
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v2, 0x0

    .line 78
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-lez v0, :cond_3

    .line 86
    .line 87
    iget v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preloadCount:I

    .line 88
    .line 89
    if-lt v1, v0, :cond_3

    .line 90
    .line 91
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preload()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 7
    .line 8
    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    iput v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getTotalItemCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->startLoadMore()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->resetFooterHeight()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 62
    .line 63
    sub-float/2addr v0, v1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getTotalItemCount()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ne v1, v2, :cond_6

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-gtz v1, :cond_4

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    cmpg-float v1, v0, v1

    .line 93
    .line 94
    if-gez v1, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 97
    .line 98
    if-nez v1, :cond_6

    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 105
    .line 106
    if-nez v1, :cond_6

    .line 107
    .line 108
    neg-float v0, v0

    .line 109
    const/high16 v1, 0x40000000    # 2.0f

    .line 110
    .line 111
    div-float/2addr v0, v1

    .line 112
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->updateFooterHeight(F)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLastY:F

    .line 121
    .line 122
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1
.end method

.method public final refreshComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMoreView(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMoreView(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadMoreComplete()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->refreshComplete()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final resetFooterHeight()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-lez v3, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScrollBack:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    neg-int v5, v3

    .line 23
    const/16 v6, 0x190

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mWrapAdapter:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 7
    .line 8
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mEmptyView:Landroid/view/View;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setFlingScale(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scale:D

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mLoadingListener:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadingMoreEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->enableLoadingMoreView()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->disableLoadingMoreView()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method protected final setMFooterView(Lcom/join/mgps/customview/XListViewFooter;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/XListViewFooter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMPullLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final setMScrollBack(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScrollBack:I

    .line 2
    .line 3
    return-void
.end method

.method protected final setMScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1    # Landroid/widget/Scroller;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    return-void
.end method

.method public final setNoMore()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->stopLoadMore()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setNoMoreView(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMore()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preloadCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1    # Lcom/join/mgps/ptr/PtrFrameLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->ptrDefaultHandler:Lcom/join/mgps/ptr/a;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "null cannot be cast to non-null type com.join.mgps.ptr.PtrFrameLayout"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->ptrDefaultHandler:Lcom/join/mgps/ptr/a;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final setPullRefreshEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->pullRefreshEnabled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->pullRefreshEnabled:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public final showHeaderLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final showPullLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final declared-synchronized startLoadMore()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->preload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public final stopLoadMore()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isLoadingData:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->isNoMore:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final stopRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPtrFrameLayout:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected final updateFooterHeight(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int p1, p1

    .line 11
    add-int/2addr v0, p1

    .line 12
    iget-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadingMoreEnabled:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mPullLoading:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x32

    .line 21
    .line 22
    if-le v0, p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->mFooterView:Lcom/join/mgps/customview/XListViewFooter;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
