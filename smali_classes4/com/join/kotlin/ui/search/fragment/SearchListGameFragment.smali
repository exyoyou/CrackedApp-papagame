.class public final Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/jo;",
        ">;",
        "Lcom/join/mgps/callbacks/n;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchListGameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,333:1\n167#2,2:334\n182#2,4:336\n*S KotlinDebug\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n*L\n229#1:334,2\n229#1:336,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0006\u0010$\u001a\u00020 J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\'H\u0007J \u0010(\u001a\u00020 2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*2\u0006\u0010,\u001a\u00020\u001aH\u0002J\u0008\u0010-\u001a\u00020 H\u0002J\u0008\u0010.\u001a\u00020 H\u0002J\u0008\u0010/\u001a\u00020 H\u0016J\u0008\u00100\u001a\u00020 H\u0016J\u0008\u00101\u001a\u00020 H\u0016J\u0008\u00102\u001a\u00020 H\u0016J\u000e\u00103\u001a\u00020 2\u0006\u00104\u001a\u00020\u001aJ\u0008\u00105\u001a\u00020 H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010#\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSearchListGameBinding;",
        "Lcom/join/mgps/callbacks/ISearchGameListener;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "mAdapter",
        "Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "mFirstVisiblePosition",
        "",
        "getMFirstVisiblePosition",
        "()I",
        "setMFirstVisiblePosition",
        "(I)V",
        "mLastVisibleIndex",
        "getMLastVisibleIndex",
        "setMLastVisibleIndex",
        "SCROLLING",
        "",
        "getSCROLLING",
        "()Z",
        "setSCROLLING",
        "(Z)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "isExposure",
        "exposureItem",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateDownStateList",
        "beanList",
        "",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "notify",
        "updatePartly",
        "updateProgressPartly",
        "onDestroyView",
        "createObserver",
        "onExploreItem",
        "lazyLoadData",
        "loadData",
        "refresh",
        "loading",
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
        "SMAP\nSearchListGameFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,333:1\n167#2,2:334\n182#2,4:336\n*S KotlinDebug\n*F\n+ 1 SearchListGameFragment.kt\ncom/join/kotlin/ui/search/fragment/SearchListGameFragment\n*L\n229#1:334,2\n229#1:336,4\n*E\n"
    }
.end annotation


# instance fields
.field private SCROLLING:Z

.field private isExposure:Z

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFirstVisiblePosition:I

.field private mLastVisibleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/search/fragment/e;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->initView$lambda$2(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->initView$lambda$5(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->initView$lambda$8(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->initView$lambda$6(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->createObserver$lambda$11(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static final createObserver$lambda$11(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string v0, "xrvList"

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
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->updateDownStateList(Ljava/util/List;Z)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, 0x12c

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->delayItemExplore(J)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method

.method private final getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$2(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final initView$lambda$5(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->isGame()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const-string p3, "searchResultGame"

    .line 24
    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object p3, v0

    .line 48
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    if-eqz p3, :cond_1

    .line 75
    .line 76
    invoke-interface {p3}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object p3, v0

    .line 82
    :goto_1
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    if-eqz p3, :cond_2

    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/join/mgps/dto/ExtBean;->getTypeCode()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object p3, v0

    .line 98
    :goto_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    if-eqz p3, :cond_3

    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p3, v0, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    const/4 p2, 0x3

    .line 181
    if-ne p1, p2, :cond_5

    .line 182
    .line 183
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 184
    .line 185
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-instance p2, Landroid/content/Intent;

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    const-class v0, Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;

    .line 217
    .line 218
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    new-instance p3, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v0, "\u66f4\u591a\""

    .line 227
    .line 228
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, "\"\u6e38\u620f"

    .line 245
    .line 246
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    const-string v0, "_title"

    .line 254
    .line 255
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 263
    .line 264
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    const-string v0, "_keyword"

    .line 269
    .line 270
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    const-string p3, "_api_type"

    .line 274
    .line 275
    const/4 v0, 0x1

    .line 276
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 284
    .line 285
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getPlugin_num()I

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    const-string v0, "plugin_num"

    .line 290
    .line 291
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 299
    .line 300
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getLang_id()I

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    const-string v0, "lang_id"

    .line 305
    .line 306
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    check-cast p3, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 314
    .line 315
    invoke-virtual {p3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getSearch_status()I

    .line 316
    .line 317
    .line 318
    move-result p3

    .line 319
    const-string v0, "search_status"

    .line 320
    .line 321
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    const-string p3, "extBean"

    .line 325
    .line 326
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 330
    .line 331
    .line 332
    :cond_5
    :goto_3
    return-void
.end method

.method private static final initView$lambda$6(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/dialog/o0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/join/mgps/dialog/o0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/join/mgps/dialog/o0;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final initView$lambda$8(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string p3, "getData(...)"

    .line 30
    .line 31
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;->getMore()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    const-string v0, "searchResultGame"

    .line 62
    .line 63
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object v0, v1

    .line 80
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getTypeCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    move-object v0, v1

    .line 100
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getSopName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p3, p1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance p3, Landroid/content/Intent;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-class v1, Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;

    .line 137
    .line 138
    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "_title"

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;->getTitle()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "_keyword"

    .line 161
    .line 162
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string v0, "_search_type"

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;->getSearch_type()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const-string p2, "_api_type"

    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getPlugin_num()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    const-string v0, "plugin_num"

    .line 191
    .line 192
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 200
    .line 201
    invoke-virtual {p2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getLang_id()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    const-string v0, "lang_id"

    .line 206
    .line 207
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    const-string p2, "extBean"

    .line 211
    .line 212
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 233
    .line 234
    .line 235
    :cond_3
    return-void
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final updateDownStateList(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 34
    .line 35
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->update(Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    return-void
.end method

.method private final updatePartly()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    :try_start_0
    iget v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 17
    .line 18
    iget v1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_4

    .line 21
    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lt v0, v2, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-ltz v0, :cond_3

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne v3, v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonMultiItemBean;->update(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    instance-of v4, v3, Lv2/a;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    check-cast v3, Lv2/a;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 83
    :goto_1
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4, v3, v2}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->updateGameUI(Lv2/a;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    :cond_3
    if-eq v0, v1, :cond_4

    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    :try_start_0
    iget v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 17
    .line 18
    iget v1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_4

    .line 21
    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lt v0, v2, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-ltz v0, :cond_3

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x2

    .line 64
    if-eq v4, v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/16 v4, 0xc

    .line 71
    .line 72
    if-ne v3, v4, :cond_3

    .line 73
    .line 74
    :cond_2
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->update(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eq v0, v1, :cond_4

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/ui/search/fragment/f;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/search/fragment/f;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final exposureItem()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->isExposure:Z

    .line 3
    .line 4
    if-nez v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->isExposure:Z

    .line 8
    .line 9
    iget v2, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 10
    .line 11
    iget v3, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 12
    .line 13
    if-gt v2, v3, :cond_3

    .line 14
    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/join/kotlin/base/impl/Downloadable;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/IExposure;->getExposure()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v6, "searchResultGame"

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    invoke-interface {v6}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const/4 v6, 0x0

    .line 73
    :goto_1
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->getTypeCode()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v4}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v6, v7, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    invoke-interface {v4, v1}, Lcom/join/kotlin/base/impl/IExposure;->setExposure(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    :cond_2
    if-eq v2, v3, :cond_3

    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :catchall_0
    move-exception v1

    .line 160
    iput-boolean v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->isExposure:Z

    .line 161
    .line 162
    throw v1

    .line 163
    :catch_0
    :cond_3
    iput-boolean v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->isExposure:Z

    .line 164
    .line 165
    return-void
.end method

.method public final getMFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSCROLLING()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->SCROLLING:Z

    .line 2
    .line 3
    return v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/jo;->n(Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 34
    .line 35
    const-string v1, "keyword"

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setKeyword(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 51
    .line 52
    const-string v1, "game_id"

    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setGameId(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 68
    .line 69
    const-string v0, "xrvList"

    .line 70
    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/a;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/search/fragment/a;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 92
    .line 93
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;

    .line 113
    .line 114
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 118
    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$2;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$2;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v1, Lcom/join/kotlin/ui/search/fragment/b;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/search/fragment/b;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 142
    .line 143
    .line 144
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {p1, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->sch_feed_back_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_1

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 174
    .line 175
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;->b:Landroid/widget/ImageView;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;->b:Landroid/widget/ImageView;

    .line 188
    .line 189
    const/16 v0, 0x8

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/jo;->b:Landroid/widget/ImageView;

    .line 201
    .line 202
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/c;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/search/fragment/c;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/d;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/search/fragment/d;-><init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;)V

    .line 217
    .line 218
    .line 219
    const v1, 0x7f0a0389

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter/base/BaseQuickAdapter$b;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->getMAdapter()Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->setKeyword(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 251
    .line 252
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 253
    .line 254
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v2, "searchResultGame"

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setPlugin_num(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setLang_id(I)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadData(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final loadData(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameSearchList(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public loading()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "null cannot be cast to non-null type com.join.mgps.activity.SearchListActivity1"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentPluginNum()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setPlugin_num(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->getCurrentLangId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setLang_id(I)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->loadData(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

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
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
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
    goto :goto_0

    .line 39
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->updateDownStateList(Ljava/util/List;Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->updatePartly()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/16 v0, 0x8

    .line 61
    .line 62
    if-ne p1, v0, :cond_1

    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->SCROLLING:Z

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->updateProgressPartly()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onExploreItem()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onExploreItem()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->o(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/jo;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->q(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->exposureItem()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setMFirstVisiblePosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMLastVisibleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSCROLLING(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->SCROLLING:Z

    .line 2
    .line 3
    return-void
.end method
