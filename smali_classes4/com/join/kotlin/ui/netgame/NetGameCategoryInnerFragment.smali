.class public final Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmVbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment<",
        "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ho0;",
        ">;",
        "Lcom/join/mgps/callbacks/q;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetGameCategoryInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n167#2,2:223\n182#2:225\n185#2:228\n1869#3,2:226\n*S KotlinDebug\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n*L\n148#1:223,2\n148#1:225\n148#1:228\n149#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\u0014H\u0002J\u0008\u0010\u001d\u001a\u00020\u0014H\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0008\u0010!\u001a\u00020\u0014H\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmVbFragment;",
        "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/NetGameCategoryInnerFragmentBinding;",
        "Lcom/join/mgps/callbacks/OnPageVisibleChanged;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "adapter",
        "Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;",
        "pageIndex",
        "",
        "pageVisible",
        "",
        "isExposuring",
        "pageExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "lazyLoadData",
        "createObserver",
        "onPageVisible",
        "position",
        "expVisibleGames",
        "onDestroyView",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
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
        "SMAP\nNetGameCategoryInnerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n167#2,2:223\n182#2:225\n185#2:228\n1869#3,2:226\n*S KotlinDebug\n*F\n+ 1 NetGameCategoryInnerFragment.kt\ncom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment\n*L\n148#1:223,2\n148#1:225\n148#1:228\n149#1:226,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ARG_FROM_HOME:Ljava/lang/String; = "_from_home"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_PAGE_INDEX:Ljava/lang/String; = "pageIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_TAB_TITLE:Ljava/lang/String; = "tab_title"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_TAB_TYPE:Ljava/lang/String; = "tab_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

.field private isExposuring:Z

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field private pageIndex:I

.field private pageVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->Companion:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageIndex:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->createObserver$lambda$2$lambda$1(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->createObserver$lambda$2(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->initView$lambda$0(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$expVisibleGames(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->expVisibleGames()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createObserver$lambda$2(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "adapter"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v3, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, v0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "loadSir"

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v4, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, v0

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 34
    .line 35
    iget-object v5, v0, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 36
    .line 37
    const-string v0, "recycleView"

    .line 38
    .line 39
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/16 v7, 0x10

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v2, p1

    .line 47
    invoke-static/range {v2 .. v8}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadListData$default(Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/kingja/loadsir/core/b;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isSuccess()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 72
    :goto_3
    if-nez p1, :cond_4

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageVisible:Z

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 85
    .line 86
    new-instance v0, Lcom/join/kotlin/ui/netgame/e;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/netgame/e;-><init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v1, 0x12c

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method

.method private static final createObserver$lambda$2$lambda$1(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->expVisibleGames()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final expVisibleGames()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->isExposuring:Z

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
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

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
    iput-boolean v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->isExposuring:Z

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
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

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
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

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
    iput-boolean v1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->isExposuring:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    sub-int/2addr v4, v0

    .line 87
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-gt v2, v3, :cond_6

    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 108
    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_5

    .line 124
    .line 125
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v7, "game"

    .line 143
    .line 144
    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_1
    if-eq v2, v3, :cond_6

    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_6
    iput-boolean v1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->isExposuring:Z

    .line 171
    .line 172
    return-void

    .line 173
    :goto_2
    iput-boolean v1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->isExposuring:Z

    .line 174
    .line 175
    throw v0

    .line 176
    :cond_7
    :goto_3
    return-void
.end method

.method private static final initView$lambda$0(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->setPageCount(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "loadSir"

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->loadData(Z)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final updateProgressPartly()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v2

    .line 39
    :goto_0
    if-nez v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 49
    .line 50
    const-string v3, "recycleView"

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-gt v3, v0, :cond_a

    .line 64
    .line 65
    :goto_1
    iget-object v4, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    const-string v5, "adapter"

    .line 68
    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    :try_start_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v4, v2

    .line 75
    :cond_3
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 80
    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    sget-object v6, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-nez v6, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    const/4 v7, 0x1

    .line 98
    if-eq v6, v7, :cond_6

    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    if-eq v6, v7, :cond_6

    .line 102
    .line 103
    const/4 v7, 0x3

    .line 104
    if-eq v6, v7, :cond_6

    .line 105
    .line 106
    const/16 v7, 0xa

    .line 107
    .line 108
    if-eq v6, v7, :cond_6

    .line 109
    .line 110
    const/16 v7, 0xc

    .line 111
    .line 112
    if-eq v6, v7, :cond_6

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    instance-of v7, v6, Lv2/c;

    .line 120
    .line 121
    if-eqz v7, :cond_7

    .line 122
    .line 123
    check-cast v6, Lv2/c;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    move-object v6, v2

    .line 127
    :goto_2
    if-nez v6, :cond_8

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    iget-object v7, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 131
    .line 132
    if-nez v7, :cond_9

    .line 133
    .line 134
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v7, v2

    .line 138
    :cond_9
    invoke-virtual {v7, v6, v4}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    :goto_3
    if-eq v3, v0, :cond_a

    .line 142
    .line 143
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_a
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/join/kotlin/ui/netgame/f;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/netgame/f;-><init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$sam$androidx_lifecycle_Observer$0;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 26
    .line 27
    .line 28
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
    check-cast p1, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "tab_type"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->setTabType(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string v2, "tab_title"

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p1, v0

    .line 40
    :goto_1
    if-nez p1, :cond_2

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->setCategoryName(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string v4, "_from_home"

    .line 66
    .line 67
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    :goto_2
    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->setFromHome(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/4 v3, -0x1

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    const-string v4, "pageIndex"

    .line 84
    .line 85
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :cond_4
    iput v3, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageIndex:I

    .line 90
    .line 91
    sget-object v2, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->Companion:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;

    .line 92
    .line 93
    invoke-static {v2, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->access$categoryClickExtBean(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 106
    .line 107
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 120
    .line 121
    invoke-direct {p1}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 135
    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    const-string v2, "adapter"

    .line 139
    .line 140
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object v2, v0

    .line 144
    :cond_5
    invoke-virtual {p1, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 154
    .line 155
    const-string v2, "recycleView"

    .line 156
    .line 157
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/join/kotlin/ui/netgame/d;

    .line 161
    .line 162
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/netgame/d;-><init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v2}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 189
    .line 190
    new-instance v2, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;-><init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ho0;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 205
    .line 206
    new-instance v2, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$3;

    .line 207
    .line 208
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$3;-><init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->setPageCount(I)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 224
    .line 225
    if-nez p1, :cond_6

    .line 226
    .line 227
    const-string p1, "loadSir"

    .line 228
    .line 229
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_6
    move-object v0, p1

    .line 234
    :goto_3
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->loadData(Z)V

    .line 244
    .line 245
    .line 246
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

.method public onDestroyView()V
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
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->onDestroyView()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const/16 v1, 0x2a

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const/16 v1, 0x30

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getAllGameList()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 64
    .line 65
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->adapter:Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    const-string v0, "adapter"

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/16 v0, 0x8

    .line 89
    .line 90
    if-ne p1, v0, :cond_3

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->updateProgressPartly()V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageVisible(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageIndex:I

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
    iput-boolean p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageVisible:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v2, "pageExtBean"

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
    sget-object v4, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->Companion:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getCategoryName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v4, v5}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->access$categoryPageExpExtBean(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v0, p1

    .line 76
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->expVisibleGames()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method
