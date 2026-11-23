.class public final Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/un;",
        ">;",
        "Lcom/join/mgps/callbacks/q;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNostalgiaGameListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,303:1\n1869#2,2:304\n167#3,2:306\n182#3,4:308\n*S KotlinDebug\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n*L\n159#1:304,2\n247#1:306,2\n247#1:308,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 >2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001>B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010.\u001a\u00020+H\u0016J\u0008\u0010/\u001a\u00020+H\u0016J\u000e\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020\u0018J\u0008\u00102\u001a\u00020+H\u0002J\u0008\u00103\u001a\u00020+H\u0002J\u0008\u00104\u001a\u00020+H\u0002J\u0008\u00105\u001a\u00020+H\u0002J\u0008\u00107\u001a\u00020+H\u0002J\u0010\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020:H\u0007J\u0008\u0010;\u001a\u00020+H\u0016J\u0010\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\u0015H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u00106\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentNostalgiaGamePageBinding;",
        "Lcom/join/mgps/callbacks/OnPageVisibleChanged;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "mAdapter",
        "Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "allDownloadBeans",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lkotlin/collections/ArrayList;",
        "mFirstVisiblePosition",
        "",
        "mLastVisibleIndex",
        "scrolling",
        "",
        "pageVisible",
        "pageIndex",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "pageExtBean",
        "getPageExtBean",
        "setPageExtBean",
        "sopNo",
        "",
        "getSopNo",
        "()Ljava/lang/String;",
        "setSopNo",
        "(Ljava/lang/String;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "lazyLoadData",
        "loadData",
        "refresh",
        "syncAllDownloadBeans",
        "updateDownStateList",
        "updateItemPartly",
        "updateProgressPartly",
        "isExposuring",
        "expGame",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "onDestroy",
        "onPageVisible",
        "position",
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
        "SMAP\nNostalgiaGameListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,303:1\n1869#2,2:304\n167#3,2:306\n182#3,4:308\n*S KotlinDebug\n*F\n+ 1 NostalgiaGameListFragment.kt\ncom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment\n*L\n159#1:304,2\n247#1:306,2\n247#1:308,4\n*E\n"
    }
.end annotation


# static fields
.field private static final ARG_NOSTALGIA_TYPE:Ljava/lang/String; = "nostalgia_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ARG_PRELOAD_GAMES:Ljava/lang/String; = "preload_games"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NostalgiaGameListFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allDownloadBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFirstVisiblePosition:I

.field private mLastVisibleIndex:I

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIndex:I

.field private pageVisible:Z

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scrolling:Z

.field private sopNo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->Companion:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/nostalgia/h;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageIndex:I

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "nostalgiaGame"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "setChatId(...)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->sopNo:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->syncAllDownloadBeans$lambda$5(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->initView$lambda$2(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->createObserver$lambda$4(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$expGame(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->expGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMFirstVisiblePosition$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMLastVisibleIndex$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setScrolling$p(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->scrolling:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final createObserver$lambda$4(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/join/android/app/mgsim/wufun/databinding/un;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

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
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->syncAllDownloadBeans()V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private final expGame()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageVisible:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->isExposuring:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->isExposuring:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/un;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastVisiblePosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ltz v2, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    iget-object v4, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "get(...)"

    .line 35
    .line 36
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_0
    if-eq v3, v2, :cond_1

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    iput-boolean v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->isExposuring:Z

    .line 82
    .line 83
    throw v1

    .line 84
    :catch_0
    :cond_1
    iput-boolean v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->isExposuring:Z

    .line 85
    .line 86
    return-void
.end method

.method private final getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$2(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    move-result-object p0

    .line 18
    check-cast p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList(Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->Companion:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->Companion:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/util/ArrayList;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->Companion:Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    move-result-object p0

    return-object p0
.end method

.method private final syncAllDownloadBeans()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->updateDownStateList()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMHandler()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/join/kotlin/ui/nostalgia/i;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/nostalgia/i;-><init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x320

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final syncAllDownloadBeans$lambda$5(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->expGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateDownStateList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->sopNo:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private final updateItemPartly()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mLastVisibleIndex:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mFirstVisiblePosition:I

    .line 25
    .line 26
    if-gt v1, v0, :cond_4

    .line 27
    .line 28
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/un;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, v3, v2}, Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;->updateGameUI(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    nop

    .line 73
    :cond_3
    :goto_1
    if-eq v1, v0, :cond_4

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mLastVisibleIndex:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->mFirstVisiblePosition:I

    .line 25
    .line 26
    if-gt v1, v0, :cond_8

    .line 27
    .line 28
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/un;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    const v4, 0x7f0a054e

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 73
    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v4, v2}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x2

    .line 97
    if-eq v4, v5, :cond_6

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/16 v5, 0xc

    .line 104
    .line 105
    if-ne v4, v5, :cond_7

    .line 106
    .line 107
    :cond_6
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    nop

    .line 116
    :cond_7
    :goto_1
    if-eq v1, v0, :cond_8

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
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
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/ui/nostalgia/g;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/nostalgia/g;-><init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSopNo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->sopNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/un;->n(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "extBean"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string v0, "pageIndex"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, -0x1

    .line 48
    :goto_1
    iput p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageIndex:I

    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 68
    .line 69
    const-string v1, "nostalgia_type"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    const-string p1, ""

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->setNostalgiaTabType(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageIndex:I

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    const-string p1, "80"

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/4 v1, 0x1

    .line 91
    if-ne p1, v1, :cond_5

    .line 92
    .line 93
    const-string p1, "90"

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-ne p1, v0, :cond_6

    .line 97
    .line 98
    const-string p1, "00"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    const-string p1, "10"

    .line 102
    .line 103
    :goto_2
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->sopNo:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/un;->b:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    const-string v1, "clContainer"

    .line 126
    .line 127
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lcom/join/kotlin/ui/nostalgia/j;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/nostalgia/j;-><init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/un;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/un;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 148
    .line 149
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->getMAdapter()Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$1;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$1;-><init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$initView$3$2;-><init>(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "preload_games"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    :goto_1
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v3, 0x0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 37
    :goto_3
    if-nez v3, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->applyPreloadedFirstPage(Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    const-string v0, "loadSir"

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_5
    move-object v1, v0

    .line 65
    :goto_4
    invoke-static {v1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList(Z)V

    .line 75
    .line 76
    .line 77
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
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList(Z)V

    .line 8
    .line 9
    .line 10
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
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->onDestroy()V

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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->scrolling:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->updateProgressPartly()V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x2a

    .line 43
    .line 44
    if-eq p1, v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x30

    .line 47
    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->updateDownStateList()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->updateItemPartly()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
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
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageIndex:I

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
    iput-boolean p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageVisible:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "page"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->expGame()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final setPageExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setSopNo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;->sopNo:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
