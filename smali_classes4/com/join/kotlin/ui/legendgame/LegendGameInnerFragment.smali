.class public final Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmVbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment<",
        "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/hd0;",
        ">;",
        "Lcom/join/mgps/callbacks/q;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n172#2,9:372\n19#3:381\n19#3:384\n19#3:385\n1869#4,2:382\n*S KotlinDebug\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n*L\n43#1:372,9\n236#1:381\n319#1:384\n333#1:385\n306#1:382,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 62\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00016B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0008\u0010$\u001a\u00020\u001cH\u0002J\u0008\u0010%\u001a\u00020\u001cH\u0002J\u0008\u0010&\u001a\u00020\u001cH\u0002J\u0008\u0010+\u001a\u00020\u001cH\u0002J \u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u0014H\u0002J\u0008\u00100\u001a\u00020\u001cH\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u000203H\u0007J\u0008\u00104\u001a\u00020\u001cH\u0002J\u0008\u00105\u001a\u00020\u001cH\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010(R\u0012\u0010)\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010*\u00a8\u00067"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;",
        "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/LegendGameCategoryInnerFragmentBinding;",
        "Lcom/join/mgps/callbacks/OnPageVisibleChanged;",
        "<init>",
        "()V",
        "zoneViewModel",
        "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;",
        "getZoneViewModel",
        "()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;",
        "zoneViewModel$delegate",
        "Lkotlin/Lazy;",
        "adapter",
        "Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;",
        "tabTitle",
        "",
        "pageIndex",
        "",
        "pageVisible",
        "",
        "isExposuring",
        "moduleExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "scrolling",
        "firstVisiblePosition",
        "lastVisibleIndex",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "lazyLoadData",
        "createObserver",
        "onPageVisible",
        "position",
        "trackBespeakBookSuccess",
        "trackBespeakCancelSuccess",
        "expVisibleGames",
        "pendingServerRemindPosition",
        "Ljava/lang/Integer;",
        "pendingServerRemindBook",
        "Ljava/lang/Boolean;",
        "openServerReminderPage",
        "handleLegendServerRemind",
        "item",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
        "book",
        "onDestroy",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateBtnPartly",
        "updateProgressPartly",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLegendGameInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n172#2,9:372\n19#3:381\n19#3:384\n19#3:385\n1869#4,2:382\n*S KotlinDebug\n*F\n+ 1 LegendGameInnerFragment.kt\ncom/join/kotlin/ui/legendgame/LegendGameInnerFragment\n*L\n43#1:372,9\n236#1:381\n319#1:384\n333#1:385\n306#1:382,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ARG_PAGE_INDEX:Ljava/lang/String; = "pageIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_TAB_ID:Ljava/lang/String; = "tab_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_TAB_TITLE:Ljava/lang/String; = "tab_title"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAB_RECOMMEND:I


# instance fields
.field private adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

.field private firstVisiblePosition:I

.field private isExposuring:Z

.field private lastVisibleIndex:I

.field private moduleExtBean:Lcom/join/mgps/dto/ExtBean;

.field private pageIndex:I

.field private pageVisible:Z

.field private pendingServerRemindBook:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingServerRemindPosition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scrolling:Z

.field private tabTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zoneViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->Companion:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->zoneViewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->tabTitle:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageIndex:I

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->createObserver$lambda$1(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->createObserver$lambda$6(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->createObserver$lambda$3(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->createObserver$lambda$3$lambda$2(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->initView$lambda$0(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$expVisibleGames(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->expVisibleGames()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getZoneViewModel(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->getZoneViewModel()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setFirstVisiblePosition$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->firstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLastVisibleIndex$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->lastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setScrolling$p(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->scrolling:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final createObserver$lambda$1(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 10
    .line 11
    check-cast p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/base/state/ResultState$Success;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->applyZoneData(Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of p1, p1, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->refreshComplete()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final createObserver$lambda$3(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadMoreComplete()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isSuccess()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isRefresh()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "adapter"

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v0

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v1, v0

    .line 53
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->refreshComplete()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getHasMore()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMore()V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageVisible:Z

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    xor-int/lit8 p1, p1, 0x1

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 121
    .line 122
    new-instance v0, Lcom/join/kotlin/ui/legendgame/j;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/legendgame/j;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v1, 0x12c

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isRefresh()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->refreshComplete()V

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p0
.end method

.method private static final createObserver$lambda$3$lambda$2(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->expVisibleGames()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createObserver$lambda$6(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindPosition:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindBook:Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eqz v2, :cond_7

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindPosition:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindBook:Ljava/lang/Boolean;

    .line 25
    .line 26
    check-cast p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/kotlin/base/state/ResultState$Success;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;

    .line 33
    .line 34
    if-eqz p1, :cond_5

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 37
    .line 38
    const-string v4, "adapter"

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v3, v1

    .line 46
    :cond_0
    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getBespeakUi()Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-boolean v5, p1, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;->is_reminded:Z

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->set_reminded(Z)V

    .line 64
    .line 65
    .line 66
    iget-boolean v5, p1, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;->is_follow:Z

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->set_follow(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v3, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move-object v1, v3

    .line 80
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 81
    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    iget-boolean p1, p1, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;->is_follow:Z

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    const-string p1, "\u9884\u7ea6\u6210\u529f\uff01"

    .line 90
    .line 91
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->openServerReminderPage()V

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->trackBespeakBookSuccess()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->trackBespeakCancelSuccess()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_9
    instance-of v0, p1, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    iput-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindPosition:Ljava/lang/Integer;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindBook:Ljava/lang/Boolean;

    .line 121
    .line 122
    check-cast p1, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/kotlin/base/state/ResultState$Error;->getError()Lcom/join/kotlin/base/net/AppException;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0
.end method

.method private final expVisibleGames()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->isExposuring:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->isExposuring:Z

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getFirstVisiblePosition()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 63
    .line 64
    .line 65
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 v4, -0x1

    .line 67
    if-ne v3, v4, :cond_2

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->isExposuring:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    const-string v4, "adapter"

    .line 78
    .line 79
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v4, v5

    .line 83
    :cond_3
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    sub-int/2addr v6, v0

    .line 92
    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-gt v2, v3, :cond_9

    .line 97
    .line 98
    :goto_0
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    .line 103
    .line 104
    if-nez v6, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {v6}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->isGameItem()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_8

    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getData()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    instance-of v7, v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 118
    .line 119
    if-nez v7, :cond_5

    .line 120
    .line 121
    move-object v6, v5

    .line 122
    :cond_5
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 123
    .line 124
    if-nez v6, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-nez v6, :cond_7

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_8

    .line 139
    .line 140
    invoke-virtual {v6, v0}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    sget-object v8, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 152
    .line 153
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v9, "game"

    .line 158
    .line 159
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v7, v8, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_1
    if-eq v2, v3, :cond_9

    .line 175
    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    goto :goto_2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    .line 185
    :cond_9
    iput-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->isExposuring:Z

    .line 186
    .line 187
    return-void

    .line 188
    :goto_2
    iput-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->isExposuring:Z

    .line 189
    .line 190
    throw v0

    .line 191
    :cond_a
    :goto_3
    return-void
.end method

.method private final getZoneViewModel()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->zoneViewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final handleLegendServerRemind(Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getBespeakUi()Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->getDetailId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-gtz p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindPosition:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pendingServerRemindBook:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, p3}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->toggleServerRemind(JZ)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method private static final initView$lambda$0(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->handleLegendServerRemind(Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final openServerReminderPage()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->getZoneViewModel()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;->getZoneData()Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;->getMp_subscribe_url()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 29
    :goto_2
    if-eqz v1, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final trackBespeakBookSuccess()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    sget-object v2, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->INSTANCE:Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-static {v2, v3, v4, v3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->legendTrackExtBean$default(Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;Ljava/lang/String;ILjava/lang/Object;)Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "btnOk"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "succ"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final trackBespeakCancelSuccess()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    sget-object v2, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->INSTANCE:Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-static {v2, v3, v4, v3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->legendTrackExtBean$default(Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;Ljava/lang/String;ILjava/lang/Object;)Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "btnCancel"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "cancel"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final updateBtnPartly()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    :try_start_0
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->firstVisiblePosition:I

    .line 45
    .line 46
    if-gez v0, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 56
    .line 57
    const-string v1, "recycleView"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->firstVisiblePosition:I

    .line 63
    .line 64
    iget v2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->lastVisibleIndex:I

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 69
    .line 70
    const-string v4, "adapter"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v3, v5

    .line 79
    :cond_3
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 84
    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-gt v1, v2, :cond_c

    .line 90
    .line 91
    :goto_1
    iget-object v3, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 92
    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    move-object v3, v5

    .line 99
    :cond_4
    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    .line 104
    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->isGameItem()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_b

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getData()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    instance-of v6, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 119
    .line 120
    if-nez v6, :cond_6

    .line 121
    .line 122
    move-object v3, v5

    .line 123
    :cond_6
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 124
    .line 125
    if-nez v3, :cond_7

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_b

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    instance-of v7, v6, Lv2/c;

    .line 139
    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    check-cast v6, Lv2/c;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    move-object v6, v5

    .line 146
    :goto_2
    if-nez v6, :cond_9

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_9
    iget-object v7, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 150
    .line 151
    if-nez v7, :cond_a

    .line 152
    .line 153
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v7, v5

    .line 157
    :cond_a
    invoke-virtual {v7, v6, v3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->updateGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 158
    .line 159
    .line 160
    :cond_b
    :goto_3
    if-eq v1, v2, :cond_c

    .line 161
    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_c
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->firstVisiblePosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 13
    .line 14
    const-string v1, "recycleView"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->firstVisiblePosition:I

    .line 20
    .line 21
    iget v2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->lastVisibleIndex:I

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    add-int/2addr v2, v3

    .line 25
    iget-object v4, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    const-string v5, "adapter"

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    :try_start_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v4, v6

    .line 36
    :cond_1
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v3

    .line 41
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-gt v1, v2, :cond_c

    .line 46
    .line 47
    :goto_0
    iget-object v4, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v4, v6

    .line 55
    :cond_2
    invoke-virtual {v4, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v4}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->isGameItem()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_b

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    instance-of v7, v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 75
    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    move-object v4, v6

    .line 79
    :cond_4
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 80
    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    if-eqz v7, :cond_b

    .line 89
    .line 90
    sget-object v7, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 91
    .line 92
    invoke-virtual {v7, v4}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    if-nez v7, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eq v7, v3, :cond_7

    .line 104
    .line 105
    const/4 v8, 0x2

    .line 106
    if-eq v7, v8, :cond_7

    .line 107
    .line 108
    const/4 v8, 0x3

    .line 109
    if-eq v7, v8, :cond_7

    .line 110
    .line 111
    const/16 v8, 0xa

    .line 112
    .line 113
    if-eq v7, v8, :cond_7

    .line 114
    .line 115
    const/16 v8, 0xc

    .line 116
    .line 117
    if-eq v7, v8, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    instance-of v8, v7, Lv2/c;

    .line 125
    .line 126
    if-eqz v8, :cond_8

    .line 127
    .line 128
    check-cast v7, Lv2/c;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_8
    move-object v7, v6

    .line 132
    :goto_1
    if-nez v7, :cond_9

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    iget-object v8, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 136
    .line 137
    if-nez v8, :cond_a

    .line 138
    .line 139
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v8, v6

    .line 143
    :cond_a
    invoke-virtual {v8, v7, v4}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    :cond_b
    :goto_2
    if-eq v1, v2, :cond_c

    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_c
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->getZoneViewModel()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;->getZoneState()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/join/kotlin/ui/legendgame/l;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/legendgame/l;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lcom/join/kotlin/ui/legendgame/m;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/legendgame/m;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->getServerRemindState()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lcom/join/kotlin/ui/legendgame/n;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/legendgame/n;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;

    .line 73
    .line 74
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 78
    .line 79
    .line 80
    return-void
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
    check-cast p1, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

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
    const-string v2, "tab_id"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->setTabId(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string v1, "tab_title"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p1, v0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    :cond_2
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->tabTitle:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, -0x1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const-string v2, "pageIndex"

    .line 52
    .line 53
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :cond_3
    iput v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageIndex:I

    .line 58
    .line 59
    sget-object p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->INSTANCE:Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->tabTitle:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->legendTrackExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->moduleExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const v2, 0x7f0713ee

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v3, 0x7f07133d

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 118
    .line 119
    new-instance v4, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;

    .line 120
    .line 121
    invoke-direct {v4, v1, v2}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;-><init>(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 128
    .line 129
    invoke-direct {v1}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->getTabId()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    const-string v2, "adapter"

    .line 145
    .line 146
    if-nez v1, :cond_5

    .line 147
    .line 148
    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 149
    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    move-object v1, v0

    .line 156
    :cond_4
    new-instance v3, Lcom/join/kotlin/ui/legendgame/k;

    .line 157
    .line 158
    invoke-direct {v3, p0}, Lcom/join/kotlin/ui/legendgame/k;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->setOnBespeakConfirm(Lkotlin/jvm/functions/Function3;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->adapter:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    .line 173
    .line 174
    if-nez v3, :cond_6

    .line 175
    .line 176
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    move-object v0, v3

    .line 181
    :goto_1
    invoke-virtual {v1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 203
    .line 204
    new-instance v2, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3;

    .line 205
    .line 206
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/hd0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 219
    .line 220
    new-instance v2, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;

    .line 221
    .line 222
    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$4;-><init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->getZoneViewModel()Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;->getZoneState()Landroidx/lifecycle/MutableLiveData;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcom/join/kotlin/base/state/ResultState;

    .line 241
    .line 242
    instance-of v0, p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 243
    .line 244
    if-eqz v0, :cond_7

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;

    .line 251
    .line 252
    check-cast p1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/join/kotlin/base/state/ResultState$Success;->getData()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;

    .line 259
    .line 260
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->applyZoneData(Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;Z)V

    .line 261
    .line 262
    .line 263
    :cond_7
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    const/16 v0, 0x30

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->scrolling:Z

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->updateProgressPartly()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->updateBtnPartly()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageVisible(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageIndex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->pageVisible:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->moduleExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v2, "moduleExtBean"

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v3, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 39
    .line 40
    sget-object v4, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->INSTANCE:Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->tabTitle:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;->legendModuleExpExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {p1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->moduleExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v0, p1

    .line 68
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->expVisibleGames()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method
