.class public Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmVbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment<",
        "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/kl;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyFindContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,841:1\n360#2,7:842\n360#2,7:850\n1878#2,3:857\n1878#2,3:860\n1878#2,3:863\n1#3:849\n*S KotlinDebug\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n*L\n121#1:842,7\n366#1:850,7\n742#1:857,3\n760#1:860,3\n785#1:863,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0002J\u0008\u0010,\u001a\u00020%H\u0002J\u0008\u0010-\u001a\u00020%H\u0002J\u0006\u0010.\u001a\u00020%J\u0008\u0010/\u001a\u00020%H\u0016J\u0008\u00100\u001a\u00020%H\u0016J\u0010\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020\u0017H\u0002J\u0008\u00103\u001a\u00020%H\u0016J\u0008\u00104\u001a\u00020%H\u0016J\u0010\u00105\u001a\u00020%2\u0006\u00106\u001a\u000207H\u0007J\u0018\u00108\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020\u0017J\u0012\u0010<\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010=\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010>\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010?\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0008\u0010@\u001a\u00020%H\u0002J\u0008\u0010A\u001a\u00020%H\u0002J\u0008\u0010B\u001a\u00020%H\u0002J\u0008\u0010C\u001a\u00020%H\u0002J\u0010\u0010D\u001a\u00020!2\u0006\u0010E\u001a\u00020FH\u0002J\u0018\u0010G\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010E\u001a\u00020FH\u0002J\u0010\u0010J\u001a\u00020%2\u0006\u0010K\u001a\u00020!H\u0002J\u0008\u0010L\u001a\u00020%H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;",
        "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentDailyFindContentBinding;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "pageAdapter",
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;",
        "getPageAdapter",
        "()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;",
        "pageAdapter$delegate",
        "Lkotlin/Lazy;",
        "listLayoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getListLayoutManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "listLayoutManager$delegate",
        "timeAdapter",
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;",
        "todayIndex",
        "",
        "cellWidthPx",
        "timeItems",
        "",
        "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
        "getTimeItems",
        "()Ljava/util/List;",
        "lastVisibleIndex",
        "firstVisiblePosition",
        "SCROLLING",
        "",
        "videoHelper",
        "Lcom/join/android/app/component/video/RvListVideoHelper;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "expTimeStrip",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "isExploring",
        "expListPoint",
        "updateLeftSelection",
        "autoPlay",
        "onResume",
        "onPause",
        "scrollToCenterPosition",
        "position",
        "createObserver",
        "onDestroy",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateUI",
        "downloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "from",
        "receiveStart",
        "receiveDelete",
        "receiveSuccess",
        "receiveError",
        "notifyDataSetChanged",
        "updateDownStateList",
        "updateItemPartly",
        "updateProgressPartly",
        "shouldApplyDownloadProgress",
        "downInfo",
        "Lcom/join/kotlin/base/impl/Downloadable;",
        "applyProgressOnView",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "loadData",
        "refresh",
        "lazyLoadData",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDailyFindContentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,841:1\n360#2,7:842\n360#2,7:850\n1878#2,3:857\n1878#2,3:860\n1878#2,3:863\n1#3:849\n*S KotlinDebug\n*F\n+ 1 DailyFindContentFragment.kt\ncom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment\n*L\n121#1:842,7\n366#1:850,7\n742#1:857,3\n760#1:860,3\n785#1:863,3\n*E\n"
    }
.end annotation


# instance fields
.field private SCROLLING:Z

.field private cellWidthPx:I

.field private firstVisiblePosition:I

.field private isExploring:Z

.field private lastVisibleIndex:I

.field private final listLayoutManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pageAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

.field private final timeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private todayIndex:I

.field private videoHelper:Lcom/join/android/app/component/video/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/h;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/h;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->pageAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/i;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/i;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->listLayoutManager$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    sget-object v0, Lcom/join/kotlin/autocode/dailyfind/utils/DateStripHelper;->INSTANCE:Lcom/join/kotlin/autocode/dailyfind/utils/DateStripHelper;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v0, v3, v1, v2}, Lcom/join/kotlin/autocode/dailyfind/utils/DateStripHelper;->buildDateItems$default(Lcom/join/kotlin/autocode/dailyfind/utils/DateStripHelper;IILjava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->initView$lambda$6(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->initView$lambda$7(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->autoPlay$lambda$11(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->listLayoutManager_delegate$lambda$1(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;IILcom/join/kotlin/autocode/dailyfind/model/DateItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->initView$lambda$5(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;IILcom/join/kotlin/autocode/dailyfind/model/DateItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->lazyLoadData$lambda$27(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    return-void
.end method

.method public static synthetic T(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->createObserver$lambda$14$lambda$13$lambda$12(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->createObserver$lambda$14$lambda$13(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->initView$lambda$2(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->pageAdapter_delegate$lambda$0(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$expListPoint(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->expListPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$expTimeStrip(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->expTimeStrip(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getListLayoutManager(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTodayIndex$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->todayIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getVideoHelper$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/android/app/component/video/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$loadData(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadData(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setFirstVisiblePosition$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLastVisibleIndex$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->lastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSCROLLING$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->SCROLLING:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateLeftSelection(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateLeftSelection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final applyProgressOnView(Lv2/c;Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a054e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private static final autoPlay$lambda$11(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/h;->f(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final createObserver$lambda$14$lambda$13(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "loadSir"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    move-object v2, v0

    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string v0, "rvList"

    .line 28
    .line 29
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v0, p1

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadListData$default(Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/kingja/loadsir/core/b;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateDownStateList()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isRefresh()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 56
    .line 57
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/e;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/e;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v1, 0x64

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->autoPlay()V

    .line 68
    .line 69
    .line 70
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method private static final createObserver$lambda$14$lambda$13$lambda$12(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->expListPoint()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final expListPoint()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->isExploring:Z

    .line 3
    .line 4
    if-nez v1, :cond_c

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->isExploring:Z

    .line 8
    .line 9
    iget v2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 10
    .line 11
    if-ltz v2, :cond_c

    .line 12
    .line 13
    iget v3, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->lastVisibleIndex:I

    .line 14
    .line 15
    add-int/2addr v3, v1

    .line 16
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sub-int/2addr v4, v1

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gt v2, v3, :cond_c

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eq v5, v1, :cond_9

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    if-eq v5, v6, :cond_7

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    if-eq v5, v6, :cond_3

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    if-eq v5, v6, :cond_1

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean"

    .line 67
    .line 68
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_b

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ge v5, v6, :cond_b

    .line 85
    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_b

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-eqz v4, :cond_b

    .line 154
    .line 155
    const v5, 0x7f0a1b9f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 163
    .line 164
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    if-eqz v4, :cond_b

    .line 171
    .line 172
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_b

    .line 177
    .line 178
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankAdapter;

    .line 183
    .line 184
    if-eqz v4, :cond_b

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    const/4 v6, 0x0

    .line 191
    :goto_2
    if-ge v6, v5, :cond_b

    .line 192
    .line 193
    invoke-virtual {v4, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Ljava/util/List;

    .line 198
    .line 199
    if-eqz v7, :cond_4

    .line 200
    .line 201
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_4
    const/4 v7, 0x0

    .line 209
    :goto_3
    if-eqz v7, :cond_5

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-nez v8, :cond_5

    .line 216
    .line 217
    const/4 v8, 0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_5
    const/4 v8, 0x0

    .line 220
    :goto_4
    if-eqz v8, :cond_6

    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-static {v8}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    sget-object v9, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 231
    .line 232
    invoke-virtual {v7}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-virtual {v10}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v10}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    invoke-virtual {v8, v9, v10}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    .line 250
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_0
    move-exception v4

    .line 254
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :cond_7
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const-string v5, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean"

    .line 264
    .line 265
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    .line 269
    .line 270
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->getItems()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    if-eqz v4, :cond_b

    .line 275
    .line 276
    const/4 v5, 0x0

    .line 277
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-ge v5, v6, :cond_b

    .line 282
    .line 283
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 288
    .line 289
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-nez v7, :cond_8

    .line 298
    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 308
    .line 309
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v9}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .line 330
    .line 331
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 339
    .line 340
    if-eqz v4, :cond_a

    .line 341
    .line 342
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    if-eqz v5, :cond_a

    .line 347
    .line 348
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-nez v5, :cond_a

    .line 353
    .line 354
    const/4 v5, 0x1

    .line 355
    goto :goto_6

    .line 356
    :cond_a
    const/4 v5, 0x0

    .line 357
    :goto_6
    if-eqz v5, :cond_b

    .line 358
    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 368
    .line 369
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-virtual {v7}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :catch_1
    move-exception v4

    .line 397
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    .line 399
    .line 400
    :cond_b
    :goto_7
    if-eq v2, v3, :cond_c

    .line 401
    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :catchall_0
    move-exception v1

    .line 407
    iput-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->isExploring:Z

    .line 408
    .line 409
    throw v1

    .line 410
    :catch_2
    :cond_c
    iput-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->isExploring:Z

    .line 411
    .line 412
    return-void
.end method

.method private final expTimeStrip(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    :cond_2
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getExplore()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getPageExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, "\u65f6\u95f4\u8f74"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDateStr()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    invoke-virtual {p1, v2}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->setExplore(Z)V

    .line 123
    .line 124
    .line 125
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    return-void
.end method

.method private final getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->listLayoutManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->pageAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$2(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final initView$lambda$5(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;IILcom/join/kotlin/autocode/dailyfind/model/DateItem;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getPageExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "\u65f6\u95f4\u8f74"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDateStr()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getLoading()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_0
    if-ne p1, p2, :cond_1

    .line 79
    .line 80
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getStartDateStr()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDateStr()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x1

    .line 110
    const-string v3, "timeAdapter"

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->isToday()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 122
    .line 123
    if-nez p2, :cond_2

    .line 124
    .line 125
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object p2, v4

    .line 129
    :cond_2
    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    sub-int/2addr p3, v2

    .line 136
    invoke-virtual {p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->setSelectedIndex(I)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 140
    .line 141
    if-nez p2, :cond_3

    .line 142
    .line 143
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move-object p2, v4

    .line 147
    :cond_3
    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    sub-int/2addr p3, v2

    .line 154
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 158
    .line 159
    if-nez p2, :cond_4

    .line 160
    .line 161
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    move-object v4, p2

    .line 166
    :goto_0
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    sub-int/2addr p1, v2

    .line 176
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->scrollToCenterPosition(I)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const/4 p1, 0x0

    .line 184
    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 185
    .line 186
    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 191
    .line 192
    if-nez v0, :cond_6

    .line 193
    .line 194
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    move-object v0, v4

    .line 198
    :cond_6
    invoke-virtual {v0, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->setSelectedIndex(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 202
    .line 203
    if-nez v0, :cond_7

    .line 204
    .line 205
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object v0, v4

    .line 209
    :cond_7
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 213
    .line 214
    if-nez v0, :cond_8

    .line 215
    .line 216
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object v0, v4

    .line 220
    :cond_8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, p2}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->scrollToCenterPosition(I)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 227
    .line 228
    if-nez p1, :cond_9

    .line 229
    .line 230
    const-string p1, "loadSir"

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_9
    move-object v4, p1

    .line 237
    :goto_1
    invoke-static {v4}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 245
    .line 246
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->isToday()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    xor-int/2addr p1, v2

    .line 251
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getTimestamp()J

    .line 252
    .line 253
    .line 254
    move-result-wide p2

    .line 255
    const-string v0, "yyyy-MM-dd"

    .line 256
    .line 257
    invoke-static {p2, p3, v0}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p0, v2, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover(ZILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 265
    .line 266
    return-object p0
.end method

.method private static final initView$lambda$6(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->todayIndex:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->scrollToCenterPosition(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final initView$lambda$7(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->todayIndex:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->scrollToCenterPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->c:Landroid/widget/TextView;

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final lazyLoadData$lambda$27(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const-string v1, "dateStripRecycler"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->expTimeStrip(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final listLayoutManager_delegate$lambda$1(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final loadData(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getCurClickDateItem()Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->setCurClickDateItem(Lcom/join/kotlin/autocode/dailyfind/model/DateItem;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getTimestamp()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const-string v0, "yyyy-MM-dd"

    .line 48
    .line 49
    invoke-static {v2, v3, v0}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, p1, v2, v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover(ZILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateItemPartly()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final pageAdapter_delegate$lambda$0(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;-><init>(Lcom/join/android/app/component/video/h;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private final receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final scrollToCenterPosition(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->cellWidthPx:I

    .line 16
    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method private final shouldApplyDownloadProgress(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq p1, v2, :cond_1

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    if-eq p1, v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0xc

    .line 29
    .line 30
    if-eq p1, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0
.end method

.method private final updateDownStateList()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getAllDownloadAppHomeBeans()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/kotlin/base/impl/BaseDownloadable;

    .line 26
    .line 27
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private final updateItemPartly()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 4
    .line 5
    if-ltz v0, :cond_f

    .line 6
    .line 7
    iget v2, v1, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->lastVisibleIndex:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-int/2addr v4, v3

    .line 20
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gt v0, v2, :cond_f

    .line 25
    .line 26
    move v4, v0

    .line 27
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eq v5, v3, :cond_d

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    const v7, 0x7f0a145c

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    if-eq v5, v6, :cond_9

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    if-eq v5, v6, :cond_5

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    if-eq v5, v6, :cond_1

    .line 59
    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v5, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean"

    .line 67
    .line 68
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_e

    .line 78
    .line 79
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ge v9, v0, :cond_e

    .line 84
    .line 85
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 102
    .line 103
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 104
    .line 105
    iget v10, v1, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 106
    .line 107
    sub-int v10, v4, v10

    .line 108
    .line 109
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 120
    .line 121
    iget-object v10, v10, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 122
    .line 123
    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lv2/c;

    .line 128
    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    :try_start_0
    invoke-virtual {v6, v7}, Lv2/c;->getView(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    instance-of v11, v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    if-eqz v11, :cond_2

    .line 138
    .line 139
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    const/4 v10, 0x0

    .line 143
    :goto_2
    if-eqz v10, :cond_4

    .line 144
    .line 145
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    if-eqz v11, :cond_4

    .line 157
    .line 158
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    instance-of v11, v10, Lv2/c;

    .line 163
    .line 164
    if-eqz v11, :cond_4

    .line 165
    .line 166
    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    instance-of v11, v11, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    .line 173
    .line 174
    if-eqz v11, :cond_3

    .line 175
    .line 176
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const-string v11, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter"

    .line 183
    .line 184
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    check-cast v6, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_3
    const/4 v6, 0x0

    .line 191
    :goto_3
    if-eqz v6, :cond_4

    .line 192
    .line 193
    check-cast v10, Lv2/c;

    .line 194
    .line 195
    invoke-virtual {v6, v10, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 217
    .line 218
    iget-object v5, v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-eqz v5, :cond_e

    .line 225
    .line 226
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_e

    .line 231
    .line 232
    const v6, 0x7f0a1b9f

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    .line 240
    .line 241
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    if-eqz v5, :cond_e

    .line 248
    .line 249
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    if-eqz v6, :cond_e

    .line 254
    .line 255
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankAdapter;

    .line 260
    .line 261
    if-eqz v6, :cond_e

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    const/4 v11, 0x0

    .line 268
    :goto_5
    if-ge v11, v10, :cond_e

    .line 269
    .line 270
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    if-eqz v12, :cond_8

    .line 282
    .line 283
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 288
    .line 289
    if-eqz v12, :cond_8

    .line 290
    .line 291
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    if-eqz v13, :cond_8

    .line 296
    .line 297
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    check-cast v13, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;

    .line 302
    .line 303
    if-eqz v13, :cond_8

    .line 304
    .line 305
    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    const/4 v15, 0x0

    .line 310
    :goto_6
    if-ge v15, v14, :cond_8

    .line 311
    .line 312
    invoke-virtual {v12, v15}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    instance-of v8, v3, Lv2/c;

    .line 317
    .line 318
    if-eqz v8, :cond_7

    .line 319
    .line 320
    if-eqz v0, :cond_6

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getRankListData()Ljava/util/ArrayList;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    if-eqz v8, :cond_6

    .line 327
    .line 328
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    check-cast v8, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 333
    .line 334
    if-eqz v8, :cond_6

    .line 335
    .line 336
    invoke-virtual {v8}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getGame_list()Ljava/util/ArrayList;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    if-eqz v8, :cond_6

    .line 341
    .line 342
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_6
    const/4 v8, 0x0

    .line 350
    :goto_7
    if-eqz v8, :cond_7

    .line 351
    .line 352
    check-cast v3, Lv2/c;

    .line 353
    .line 354
    invoke-virtual {v13, v3, v8}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    .line 356
    .line 357
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 358
    .line 359
    const/4 v3, 0x1

    .line 360
    goto :goto_6

    .line 361
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 362
    .line 363
    const/4 v3, 0x1

    .line 364
    goto :goto_5

    .line 365
    :catch_1
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_c

    .line 370
    .line 371
    :cond_9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-string v3, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean"

    .line 376
    .line 377
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->getItems()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    if-eqz v3, :cond_e

    .line 387
    .line 388
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-ge v9, v0, :cond_e

    .line 393
    .line 394
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    if-eqz v5, :cond_c

    .line 405
    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 411
    .line 412
    iget-object v5, v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 413
    .line 414
    iget v6, v1, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 415
    .line 416
    sub-int v6, v4, v6

    .line 417
    .line 418
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    if-eqz v5, :cond_c

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 429
    .line 430
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 431
    .line 432
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Lv2/c;

    .line 437
    .line 438
    if-eqz v5, :cond_c

    .line 439
    .line 440
    :try_start_2
    invoke-virtual {v5, v7}, Lv2/c;->getView(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    instance-of v8, v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 445
    .line 446
    if-eqz v8, :cond_a

    .line 447
    .line 448
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_a
    const/4 v6, 0x0

    .line 452
    :goto_9
    if-eqz v6, :cond_c

    .line 453
    .line 454
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    if-eqz v8, :cond_c

    .line 466
    .line 467
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    instance-of v8, v6, Lv2/c;

    .line 472
    .line 473
    if-eqz v8, :cond_c

    .line 474
    .line 475
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 476
    .line 477
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    instance-of v8, v8, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;

    .line 482
    .line 483
    if-eqz v8, :cond_b

    .line 484
    .line 485
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 486
    .line 487
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    const-string v8, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameAdapter"

    .line 492
    .line 493
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    check-cast v5, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_b
    const/4 v5, 0x0

    .line 500
    :goto_a
    if-eqz v5, :cond_c

    .line 501
    .line 502
    check-cast v6, Lv2/c;

    .line 503
    .line 504
    invoke-virtual {v5, v6, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 505
    .line 506
    .line 507
    goto :goto_b

    .line 508
    :catch_2
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    .line 511
    .line 512
    :cond_c
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :cond_d
    :try_start_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 526
    .line 527
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 528
    .line 529
    iget v5, v1, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->firstVisiblePosition:I

    .line 530
    .line 531
    sub-int v5, v4, v5

    .line 532
    .line 533
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    if-eqz v3, :cond_e

    .line 538
    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 544
    .line 545
    iget-object v5, v5, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 546
    .line 547
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    instance-of v5, v3, Lv2/c;

    .line 552
    .line 553
    if-eqz v5, :cond_e

    .line 554
    .line 555
    if-eqz v0, :cond_e

    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    if-eqz v5, :cond_e

    .line 566
    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    check-cast v3, Lv2/c;

    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v5, v3, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->updateDailyGameUI(Lv2/c;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 578
    .line 579
    .line 580
    goto :goto_c

    .line 581
    :catch_3
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 583
    .line 584
    .line 585
    :cond_e
    :goto_c
    if-eq v4, v2, :cond_f

    .line 586
    .line 587
    add-int/lit8 v4, v4, 0x1

    .line 588
    .line 589
    const/4 v3, 0x1

    .line 590
    goto/16 :goto_0

    .line 591
    .line 592
    :cond_f
    return-void
.end method

.method private final updateLeftSelection()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-ltz v0, :cond_c

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getTimeLines()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lt v0, v2, :cond_2

    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getTimeLines()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "get(...)"

    .line 59
    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDateStr()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v4, -0x1

    .line 100
    :goto_2
    if-eq v4, v1, :cond_c

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    const-string v2, "timeAdapter"

    .line 106
    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v0, v1

    .line 113
    :cond_5
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->getSelectedIndex()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eq v4, v0, :cond_c

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v0, v1

    .line 127
    :cond_6
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->getSelectedIndex()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 132
    .line 133
    if-nez v5, :cond_7

    .line 134
    .line 135
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v5, v1

    .line 139
    :cond_7
    invoke-virtual {v5, v4}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->setSelectedIndex(I)V

    .line 140
    .line 141
    .line 142
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 143
    .line 144
    if-nez v5, :cond_8

    .line 145
    .line 146
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v5, v1

    .line 150
    :cond_8
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 151
    .line 152
    .line 153
    if-ltz v0, :cond_9

    .line 154
    .line 155
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 156
    .line 157
    check-cast v5, Ljava/util/Collection;

    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-ge v0, v5, :cond_9

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    goto :goto_3

    .line 167
    :cond_9
    const/4 v5, 0x0

    .line 168
    :goto_3
    if-eqz v5, :cond_b

    .line 169
    .line 170
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 171
    .line 172
    if-nez v5, :cond_a

    .line 173
    .line 174
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    move-object v1, v5

    .line 179
    :goto_4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 180
    .line 181
    .line 182
    :cond_b
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 189
    .line 190
    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v4}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->scrollToCenterPosition(I)V

    .line 194
    .line 195
    .line 196
    :cond_c
    :goto_5
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    const-string v0, "rvList"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v0, -0x1

    .line 40
    if-ne v3, v0, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    if-gt v3, v5, :cond_33

    .line 44
    .line 45
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    goto/16 :goto_17

    .line 58
    .line 59
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x1

    .line 64
    if-eq v6, v7, :cond_2e

    .line 65
    .line 66
    const/4 v7, 0x2

    .line 67
    const v8, 0x7f0a145c

    .line 68
    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    if-eq v6, v7, :cond_23

    .line 72
    .line 73
    const/4 v7, 0x3

    .line 74
    if-eq v6, v7, :cond_f

    .line 75
    .line 76
    const/4 v7, 0x4

    .line 77
    if-eq v6, v7, :cond_4

    .line 78
    .line 79
    goto/16 :goto_17

    .line 80
    .line 81
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    goto/16 :goto_17

    .line 90
    .line 91
    :cond_5
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    instance-of v7, v6, Lv2/c;

    .line 96
    .line 97
    if-eqz v7, :cond_6

    .line 98
    .line 99
    check-cast v6, Lv2/c;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    const/4 v6, 0x0

    .line 103
    :goto_2
    if-nez v6, :cond_7

    .line 104
    .line 105
    goto/16 :goto_17

    .line 106
    .line 107
    :cond_7
    invoke-virtual {v6, v8}, Lv2/c;->b(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    if-nez v7, :cond_8

    .line 114
    .line 115
    goto/16 :goto_17

    .line 116
    .line 117
    :cond_8
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    instance-of v8, v6, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    .line 124
    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    check-cast v6, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_9
    const/4 v6, 0x0

    .line 131
    :goto_3
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_32

    .line 136
    .line 137
    check-cast v0, Ljava/lang/Iterable;

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_32

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    add-int/lit8 v10, v9, 0x1

    .line 154
    .line 155
    if-gez v9, :cond_a

    .line 156
    .line 157
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 158
    .line 159
    .line 160
    :cond_a
    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 161
    .line 162
    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    instance-of v11, v9, Lv2/c;

    .line 167
    .line 168
    if-eqz v11, :cond_b

    .line 169
    .line 170
    check-cast v9, Lv2/c;

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_b
    const/4 v9, 0x0

    .line 174
    :goto_5
    if-nez v9, :cond_c

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_c
    invoke-direct {v1, v8}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->shouldApplyDownloadProgress(Lcom/join/kotlin/base/impl/Downloadable;)Z

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eqz v11, :cond_e

    .line 182
    .line 183
    if-eqz v6, :cond_d

    .line 184
    .line 185
    invoke-virtual {v6, v9, v8}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;->updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_d
    invoke-direct {v1, v9, v8}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->applyProgressOnView(Lv2/c;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 190
    .line 191
    .line 192
    :cond_e
    :goto_6
    move v9, v10

    .line 193
    goto :goto_4

    .line 194
    :cond_f
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 199
    .line 200
    if-nez v0, :cond_10

    .line 201
    .line 202
    goto/16 :goto_17

    .line 203
    .line 204
    :cond_10
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    instance-of v7, v6, Lv2/c;

    .line 209
    .line 210
    if-eqz v7, :cond_11

    .line 211
    .line 212
    check-cast v6, Lv2/c;

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_11
    const/4 v6, 0x0

    .line 216
    :goto_7
    if-nez v6, :cond_12

    .line 217
    .line 218
    goto/16 :goto_17

    .line 219
    .line 220
    :cond_12
    const v7, 0x7f0a1b9f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v7}, Lv2/c;->b(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    .line 228
    .line 229
    if-nez v6, :cond_13

    .line 230
    .line 231
    goto/16 :goto_17

    .line 232
    .line 233
    :cond_13
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    instance-of v7, v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    if-eqz v7, :cond_14

    .line 240
    .line 241
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_14
    const/4 v6, 0x0

    .line 245
    :goto_8
    if-nez v6, :cond_15

    .line 246
    .line 247
    goto/16 :goto_17

    .line 248
    .line 249
    :cond_15
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    instance-of v10, v7, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankAdapter;

    .line 254
    .line 255
    if-eqz v10, :cond_16

    .line 256
    .line 257
    check-cast v7, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankAdapter;

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_16
    const/4 v7, 0x0

    .line 261
    :goto_9
    if-nez v7, :cond_17

    .line 262
    .line 263
    goto/16 :goto_17

    .line 264
    .line 265
    :cond_17
    invoke-virtual {v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    const/4 v10, 0x0

    .line 270
    :goto_a
    if-ge v10, v7, :cond_32

    .line 271
    .line 272
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    if-eqz v11, :cond_22

    .line 277
    .line 278
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    if-nez v11, :cond_18

    .line 283
    .line 284
    goto/16 :goto_10

    .line 285
    .line 286
    :cond_18
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    if-nez v11, :cond_19

    .line 293
    .line 294
    goto :goto_10

    .line 295
    :cond_19
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    instance-of v13, v12, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;

    .line 300
    .line 301
    if-eqz v13, :cond_1a

    .line 302
    .line 303
    check-cast v12, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_1a
    const/4 v12, 0x0

    .line 307
    :goto_b
    if-nez v12, :cond_1b

    .line 308
    .line 309
    goto :goto_10

    .line 310
    :cond_1b
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getRankListData()Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v13

    .line 314
    if-eqz v13, :cond_1c

    .line 315
    .line 316
    invoke-static {v13, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    check-cast v13, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 321
    .line 322
    if-eqz v13, :cond_1c

    .line 323
    .line 324
    invoke-virtual {v13}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getGame_list()Ljava/util/ArrayList;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    goto :goto_c

    .line 329
    :cond_1c
    const/4 v13, 0x0

    .line 330
    :goto_c
    if-nez v13, :cond_1d

    .line 331
    .line 332
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    :cond_1d
    check-cast v13, Ljava/lang/Iterable;

    .line 337
    .line 338
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v13

    .line 342
    const/4 v14, 0x0

    .line 343
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-eqz v15, :cond_22

    .line 348
    .line 349
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    add-int/lit8 v16, v14, 0x1

    .line 354
    .line 355
    if-gez v14, :cond_1e

    .line 356
    .line 357
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 358
    .line 359
    .line 360
    :cond_1e
    check-cast v15, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 361
    .line 362
    invoke-virtual {v11, v14}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    instance-of v4, v14, Lv2/c;

    .line 367
    .line 368
    if-eqz v4, :cond_1f

    .line 369
    .line 370
    check-cast v14, Lv2/c;

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_1f
    const/4 v14, 0x0

    .line 374
    :goto_e
    if-nez v14, :cond_20

    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_20
    invoke-direct {v1, v15}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->shouldApplyDownloadProgress(Lcom/join/kotlin/base/impl/Downloadable;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_21

    .line 382
    .line 383
    invoke-virtual {v12, v14, v15}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 384
    .line 385
    .line 386
    :cond_21
    :goto_f
    move/from16 v14, v16

    .line 387
    .line 388
    goto :goto_d

    .line 389
    :cond_22
    :goto_10
    add-int/lit8 v10, v10, 0x1

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_23
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    .line 397
    .line 398
    if-nez v0, :cond_24

    .line 399
    .line 400
    goto/16 :goto_17

    .line 401
    .line 402
    :cond_24
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    instance-of v6, v4, Lv2/c;

    .line 407
    .line 408
    if-eqz v6, :cond_25

    .line 409
    .line 410
    check-cast v4, Lv2/c;

    .line 411
    .line 412
    goto :goto_11

    .line 413
    :cond_25
    const/4 v4, 0x0

    .line 414
    :goto_11
    if-nez v4, :cond_26

    .line 415
    .line 416
    goto/16 :goto_17

    .line 417
    .line 418
    :cond_26
    invoke-virtual {v4, v8}, Lv2/c;->b(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 423
    .line 424
    if-nez v6, :cond_27

    .line 425
    .line 426
    goto/16 :goto_17

    .line 427
    .line 428
    :cond_27
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 429
    .line 430
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    instance-of v7, v4, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;

    .line 435
    .line 436
    if-eqz v7, :cond_28

    .line 437
    .line 438
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;

    .line 439
    .line 440
    goto :goto_12

    .line 441
    :cond_28
    const/4 v4, 0x0

    .line 442
    :goto_12
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->getItems()Ljava/util/List;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_32

    .line 447
    .line 448
    check-cast v0, Ljava/lang/Iterable;

    .line 449
    .line 450
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-eqz v7, :cond_32

    .line 459
    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    add-int/lit8 v8, v9, 0x1

    .line 465
    .line 466
    if-gez v9, :cond_29

    .line 467
    .line 468
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 469
    .line 470
    .line 471
    :cond_29
    check-cast v7, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 472
    .line 473
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    instance-of v10, v9, Lv2/c;

    .line 478
    .line 479
    if-eqz v10, :cond_2a

    .line 480
    .line 481
    check-cast v9, Lv2/c;

    .line 482
    .line 483
    goto :goto_14

    .line 484
    :cond_2a
    const/4 v9, 0x0

    .line 485
    :goto_14
    if-nez v9, :cond_2b

    .line 486
    .line 487
    goto :goto_15

    .line 488
    :cond_2b
    invoke-direct {v1, v7}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->shouldApplyDownloadProgress(Lcom/join/kotlin/base/impl/Downloadable;)Z

    .line 489
    .line 490
    .line 491
    move-result v10

    .line 492
    if-eqz v10, :cond_2d

    .line 493
    .line 494
    if-eqz v4, :cond_2c

    .line 495
    .line 496
    invoke-virtual {v4, v9, v7}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;->updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 497
    .line 498
    .line 499
    goto :goto_15

    .line 500
    :cond_2c
    invoke-direct {v1, v9, v7}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->applyProgressOnView(Lv2/c;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 501
    .line 502
    .line 503
    :cond_2d
    :goto_15
    move v9, v8

    .line 504
    goto :goto_13

    .line 505
    :cond_2e
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 510
    .line 511
    if-eqz v0, :cond_32

    .line 512
    .line 513
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    if-nez v0, :cond_2f

    .line 518
    .line 519
    goto :goto_17

    .line 520
    :cond_2f
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    instance-of v6, v4, Lv2/c;

    .line 525
    .line 526
    if-eqz v6, :cond_30

    .line 527
    .line 528
    check-cast v4, Lv2/c;

    .line 529
    .line 530
    goto :goto_16

    .line 531
    :cond_30
    const/4 v4, 0x0

    .line 532
    :goto_16
    if-nez v4, :cond_31

    .line 533
    .line 534
    goto :goto_17

    .line 535
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-virtual {v6, v4, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->updateDailyGameProgress(Lv2/c;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .line 541
    .line 542
    goto :goto_17

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 545
    .line 546
    .line 547
    :cond_32
    :goto_17
    if-eq v3, v5, :cond_33

    .line 548
    .line 549
    add-int/lit8 v3, v3, 0x1

    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :cond_33
    return-void
.end method


# virtual methods
.method public final autoPlay()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/fragment/g;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/g;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x1f4

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/fragment/f;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/f;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getTimeItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "extBean"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v2, v0, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_1
    invoke-virtual {p1, v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getPageExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getParentExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getPageExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "page"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 104
    .line 105
    const-string v0, "rvList"

    .line 106
    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/a;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/a;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 120
    .line 121
    new-instance p1, Lcom/join/android/app/component/video/h;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 130
    .line 131
    const-string v2, "DailyFindContentFragment"

    .line 132
    .line 133
    invoke-direct {p1, v0, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 137
    .line 138
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 167
    .line 168
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->getPageAdapter()Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 182
    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 206
    .line 207
    new-instance v3, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$2;

    .line 208
    .line 209
    invoke-direct {v3, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$2;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v3}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const v3, 0x7f0711e2

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->cellWidthPx:I

    .line 227
    .line 228
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const/4 v3, 0x0

    .line 235
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_3

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 246
    .line 247
    invoke-virtual {v4}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->isToday()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_2

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_3
    const/4 v3, -0x1

    .line 258
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-ltz v3, :cond_4

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    goto :goto_4

    .line 270
    :cond_4
    const/4 v3, 0x0

    .line 271
    :goto_4
    if-eqz v3, :cond_5

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_5
    move-object p1, v1

    .line 275
    :goto_5
    if-eqz p1, :cond_6

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    goto :goto_6

    .line 282
    :cond_6
    const/4 p1, 0x0

    .line 283
    :goto_6
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->todayIndex:I

    .line 284
    .line 285
    new-instance p1, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 286
    .line 287
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 288
    .line 289
    new-instance v4, Lcom/join/kotlin/autocode/dailyfind/fragment/b;

    .line 290
    .line 291
    invoke-direct {v4, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/b;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {p1, v3, v4}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    .line 295
    .line 296
    .line 297
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 304
    .line 305
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    .line 307
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 308
    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-direct {v3, v4, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 324
    .line 325
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    .line 328
    .line 329
    if-nez v0, :cond_7

    .line 330
    .line 331
    const-string v0, "timeAdapter"

    .line 332
    .line 333
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_7
    move-object v1, v0

    .line 338
    :goto_7
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 346
    .line 347
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    .line 349
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 357
    .line 358
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 359
    .line 360
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/c;

    .line 361
    .line 362
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/c;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 373
    .line 374
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 375
    .line 376
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;

    .line 377
    .line 378
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 389
    .line 390
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->c:Landroid/widget/TextView;

    .line 391
    .line 392
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/d;

    .line 393
    .line 394
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/d;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 405
    .line 406
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/kl;->g:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 407
    .line 408
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;

    .line 409
    .line 410
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 414
    .line 415
    .line 416
    return-void
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->timeItems:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->setCurClickDateItem(Lcom/join/kotlin/autocode/dailyfind/model/DateItem;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v3}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->loadData(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/kl;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/fragment/j;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/j;-><init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x64

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "downloadTaskEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onEventMainThread(Lcom/join/mgps/event/r;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq p1, v1, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq p1, v2, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq p1, v1, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    if-eq p1, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    if-eq p1, v3, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    if-eq p1, v2, :cond_0

    .line 37
    .line 38
    const/16 v4, 0x30

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    const/16 p1, 0x9

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->SCROLLING:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateProgressPartly()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_0
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->F()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
