.class public final Lcom/join/kotlin/EverdayNewFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;,
        Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/fj;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEverdayNewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,560:1\n1878#2,3:561\n1869#2,2:570\n167#3,2:564\n182#3,4:566\n*S KotlinDebug\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n*L\n290#1:561,3\n344#1:570,2\n333#1:564,2\n333#1:566,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002efB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010.\u001a\u00020+H\u0016J\u0008\u0010/\u001a\u00020+H\u0016J\u0012\u00100\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u00101\u001a\u00020+H\u0016J\u0008\u00102\u001a\u00020+H\u0016J\u000e\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u000204J\u001c\u0010M\u001a\u00020+2\u0006\u0010=\u001a\u0002042\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020P0OJ\u0008\u0010R\u001a\u00020+H\u0002J\u0008\u0010Y\u001a\u00020+H\u0016J\u0010\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0007J\u0006\u0010]\u001a\u00020+J\u0012\u0010^\u001a\u00020+2\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0002J\u0006\u0010a\u001a\u00020+J\u0006\u0010b\u001a\u00020+J\u000e\u0010c\u001a\u00020+2\u0006\u0010d\u001a\u00020?R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001b\u0010&\u001a\n \'*\u0004\u0018\u00010!0!\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008(\u0010#R\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u00106\"\u0004\u0008;\u00108R\u001a\u0010>\u001a\u00020?X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010D\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u001d\"\u0004\u0008F\u0010\u001fR\u001a\u0010G\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00106\"\u0004\u0008I\u00108R\u001a\u0010J\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u00106\"\u0004\u0008L\u00108R\u000e\u0010Q\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010S\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00106\"\u0004\u0008U\u00108R\u001a\u0010V\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u00106\"\u0004\u0008X\u00108\u00a8\u0006g"
    }
    d2 = {
        "Lcom/join/kotlin/EverdayNewFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewFragmentBinding;",
        "<init>",
        "()V",
        "adapter",
        "Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;",
        "setAdapter",
        "(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V",
        "showDataList",
        "Ljava/util/ArrayList;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lkotlin/collections/ArrayList;",
        "getShowDataList",
        "()Ljava/util/ArrayList;",
        "setShowDataList",
        "(Ljava/util/ArrayList;)V",
        "manager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "setManager",
        "(Landroidx/recyclerview/widget/LinearLayoutManager;)V",
        "fromHome",
        "",
        "getFromHome",
        "()Z",
        "setFromHome",
        "(Z)V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "pageBean",
        "kotlin.jvm.PlatformType",
        "getPageBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "onExploreItem",
        "initView",
        "lazyLoadData",
        "createObserver",
        "pageCount",
        "",
        "getPageCount",
        "()I",
        "setPageCount",
        "(I)V",
        "type",
        "getType",
        "setType",
        "loadData",
        "page",
        "lastTimeDay",
        "",
        "getLastTimeDay",
        "()Ljava/lang/String;",
        "setLastTimeDay",
        "(Ljava/lang/String;)V",
        "refesh",
        "getRefesh",
        "setRefesh",
        "rowIndex",
        "getRowIndex",
        "setRowIndex",
        "colIndex",
        "getColIndex",
        "setColIndex",
        "loadFinish",
        "datas",
        "",
        "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;",
        "isExposuring",
        "expDiscountGame",
        "lastVisibleIndex",
        "getLastVisibleIndex",
        "setLastVisibleIndex",
        "firstVisiblePosition",
        "getFirstVisiblePosition",
        "setFirstVisiblePosition",
        "onDestroyView",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateDownStateList",
        "updateProgressPartly",
        "changedTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "showLoding",
        "hidLoading",
        "onError",
        "message",
        "ViewHolderTitle",
        "EverydayNewAdapter",
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
        "SMAP\nEverdayNewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,560:1\n1878#2,3:561\n1869#2,2:570\n167#3,2:564\n182#3,4:566\n*S KotlinDebug\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n*L\n290#1:561,3\n344#1:570,2\n333#1:564,2\n333#1:566,4\n*E\n"
    }
.end annotation


# instance fields
.field public adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

.field private colIndex:I

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private firstVisiblePosition:I

.field private fromHome:Z

.field private isExposuring:Z

.field private lastTimeDay:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field public manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final pageBean:Lcom/join/mgps/dto/ExtBean;

.field private pageCount:I

.field private refesh:Z

.field private rowIndex:I

.field private showDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "page"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 26
    .line 27
    iput v0, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 28
    .line 29
    const-string v1, "0"

    .line 30
    .line 31
    iput-object v1, p0, Lcom/join/kotlin/EverdayNewFragment;->lastTimeDay:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/join/kotlin/EverdayNewFragment;->refesh:Z

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/EverdayNewFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/EverdayNewFragment;->initView$lambda$0(Lcom/join/kotlin/EverdayNewFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/EverdayNewFragment;->loadFinish$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->loadFinish$lambda$1(Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$expDiscountGame(Lcom/join/kotlin/EverdayNewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/EverdayNewFragment;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBindingOrNull(Lcom/join/kotlin/EverdayNewFragment;)Lcom/join/android/app/mgsim/wufun/databinding/fj;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getBindingOrNull()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 6
    .line 7
    return-object p0
.end method

.method private final expDiscountGame()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/join/kotlin/EverdayNewFragment;->isExposuring:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/join/kotlin/EverdayNewFragment;->isExposuring:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getLastVisiblePosition()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    add-int/lit8 v6, v4, 0x1

    .line 45
    .line 46
    if-gez v4, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 49
    .line 50
    .line 51
    :cond_0
    check-cast v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 52
    .line 53
    if-gt v4, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getHasExposured()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v5, v1}, Lcom/psk/kotlin/util/CommonListMainData;->setHasExposured(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v7, 0x2

    .line 69
    if-ne v4, v7, :cond_2

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 76
    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 81
    .line 82
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 83
    .line 84
    .line 85
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 89
    .line 90
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "discount_game"

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 96
    .line 97
    .line 98
    const-class v7, Lcom/join/kotlin/EverdayNewFragment;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 105
    .line 106
    .line 107
    new-instance v7, Lcom/papa/sim/statistic/Data;

    .line 108
    .line 109
    invoke-direct {v7}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    sget-object v9, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 128
    .line 129
    invoke-virtual {v8, v9, v5, v7}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception v5

    .line 134
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v5, v7, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    .line 162
    :cond_2
    move v4, v6

    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :catchall_0
    move-exception v1

    .line 166
    iput-boolean v0, p0, Lcom/join/kotlin/EverdayNewFragment;->isExposuring:Z

    .line 167
    .line 168
    throw v1

    .line 169
    :catch_1
    :cond_3
    iput-boolean v0, p0, Lcom/join/kotlin/EverdayNewFragment;->isExposuring:Z

    .line 170
    .line 171
    return-void
.end method

.method private static final initView$lambda$0(Lcom/join/kotlin/EverdayNewFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/EverdayNewFragment;->loadData(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final loadFinish$lambda$1(Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-lez v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const/4 v5, -0x1

    .line 24
    cmp-long v6, v0, v2

    .line 25
    .line 26
    if-gez v6, :cond_1

    .line 27
    .line 28
    :goto_0
    const/4 v4, -0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getList()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getList()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v4, 0x0

    .line 53
    :goto_1
    return v4
.end method

.method private static final loadFinish$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final updateProgressPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-nez v0, :cond_7

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->getManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->getManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-gt v0, v1, :cond_7

    .line 38
    .line 39
    :goto_2
    iget-object v2, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lt v0, v2, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    if-ltz v0, :cond_6

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "get(...)"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, 0x2

    .line 68
    if-ne v3, v4, :cond_6

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 75
    .line 76
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eq v3, v4, :cond_5

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/16 v4, 0xc

    .line 113
    .line 114
    if-eq v3, v4, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 122
    .line 123
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 124
    .line 125
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    instance-of v4, v3, Lv2/c;

    .line 130
    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    check-cast v3, Lv2/c;

    .line 134
    .line 135
    const v4, 0x7f0a054e

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Lv2/c;->getView(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_3
    if-eq v0, v1, :cond_7

    .line 152
    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public final getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getColIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->firstVisiblePosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFromHome()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/EverdayNewFragment;->fromHome:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLastTimeDay()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->lastTimeDay:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->lastVisibleIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "manager"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPageBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRefesh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/EverdayNewFragment;->refesh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRowIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final hidLoading()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getBindingOrNull()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->c:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->b:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "extBean"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    instance-of v1, p1, Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object p1, v0

    .line 24
    :goto_1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    const-string v1, "home"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "newGame"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "10010"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    :goto_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->setManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->getManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->setAdapter(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->b:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->f:Landroid/widget/ImageView;

    .line 112
    .line 113
    const-string v1, "relodingimag"

    .line 114
    .line 115
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/join/kotlin/c;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/join/kotlin/c;-><init>(Lcom/join/kotlin/EverdayNewFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 145
    .line 146
    new-instance v2, Lcom/join/kotlin/EverdayNewFragment$initView$2;

    .line 147
    .line 148
    invoke-direct {v2, p0}, Lcom/join/kotlin/EverdayNewFragment$initView$2;-><init>(Lcom/join/kotlin/EverdayNewFragment;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 161
    .line 162
    new-instance v2, Lcom/join/kotlin/EverdayNewFragment$initView$3;

    .line 163
    .line 164
    invoke-direct {v2, p0}, Lcom/join/kotlin/EverdayNewFragment$initView$3;-><init>(Lcom/join/kotlin/EverdayNewFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 168
    .line 169
    .line 170
    iput v1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_3

    .line 177
    .line 178
    const-string v0, "title"

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_4

    .line 189
    .line 190
    const-string v2, "_from_home"

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    const/4 p1, 0x0

    .line 198
    :goto_3
    iput-boolean p1, p0, Lcom/join/kotlin/EverdayNewFragment;->fromHome:Z

    .line 199
    .line 200
    if-eqz v0, :cond_9

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :sswitch_0
    const-string p1, "\u6a21\u62df\u5668"

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_5

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_5
    const/4 p1, 0x5

    .line 220
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 221
    .line 222
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 223
    .line 224
    const-string v0, "newGameEmu"

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :sswitch_1
    const-string p1, "\u7f51\u6e38"

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-nez p1, :cond_6

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_6
    const/4 p1, 0x2

    .line 240
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 241
    .line 242
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 243
    .line 244
    const-string v0, "newGameOnline"

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :sswitch_2
    const-string p1, "\u5355\u673a"

    .line 251
    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_7

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_7
    const/4 p1, 0x3

    .line 260
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 261
    .line 262
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 263
    .line 264
    const-string v0, "newGameSingle"

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :sswitch_3
    const-string p1, "\u5168\u90e8"

    .line 271
    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-nez p1, :cond_8

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_8
    iput v1, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 280
    .line 281
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 282
    .line 283
    const-string v0, "newGameAll"

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 286
    .line 287
    .line 288
    :cond_9
    :goto_4
    iget p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 289
    .line 290
    invoke-virtual {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->loadData(I)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :sswitch_data_0
    .sparse-switch
        0xa6c80 -> :sswitch_3
        0xa7e85 -> :sswitch_2
        0xfd907 -> :sswitch_1
        0x19ab54a -> :sswitch_0
    .end sparse-switch
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public final loadData(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v1, v0}, Lb7/i;->o1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/join/kotlin/EverdayNewFragment$loadData$1;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/EverdayNewFragment$loadData$1;-><init>(Lcom/join/kotlin/EverdayNewFragment;I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    throw p1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    const-string p1, ""

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->onError(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const p1, 0x7f12031e

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "getString(...)"

    .line 100
    .line 101
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->onError(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method public final loadFinish(ILjava/util/List;)V
    .locals 17
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "datas"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    iput-boolean v4, v0, Lcom/join/kotlin/EverdayNewFragment;->refesh:Z

    .line 17
    .line 18
    iput v3, v0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 19
    .line 20
    iput v3, v0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 21
    .line 22
    :cond_0
    iget v5, v0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 23
    .line 24
    if-ne v1, v5, :cond_1

    .line 25
    .line 26
    move-object v1, v2

    .line 27
    check-cast v1, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    xor-int/2addr v1, v4

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v1, v0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 37
    .line 38
    add-int/2addr v1, v4

    .line 39
    iput v1, v0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 40
    .line 41
    :cond_1
    move-object v1, v2

    .line 42
    check-cast v1, Ljava/lang/Iterable;

    .line 43
    .line 44
    new-instance v5, Lcom/join/kotlin/a;

    .line 45
    .line 46
    invoke-direct {v5}, Lcom/join/kotlin/a;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lcom/join/kotlin/b;

    .line 50
    .line 51
    invoke-direct {v6, v5}, Lcom/join/kotlin/b;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_a

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;

    .line 72
    .line 73
    iget v5, v0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 74
    .line 75
    add-int/2addr v5, v4

    .line 76
    iput v5, v0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 77
    .line 78
    iget-object v5, v0, Lcom/join/kotlin/EverdayNewFragment;->lastTimeDay:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    const/16 v8, 0x3e8

    .line 85
    .line 86
    int-to-long v8, v8

    .line 87
    mul-long v6, v6, v8

    .line 88
    .line 89
    invoke-static {v6, v7}, Lcom/join/mgps/Util/e0;->E(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_2

    .line 98
    .line 99
    iget-object v5, v0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 100
    .line 101
    new-instance v6, Lcom/psk/kotlin/util/CommonListMainData;

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    mul-long v12, v12, v8

    .line 109
    .line 110
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/16 v15, 0xc

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    move-object v10, v6

    .line 121
    invoke-direct/range {v10 .. v16}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    mul-long v5, v5, v8

    .line 132
    .line 133
    invoke-static {v5, v6}, Lcom/join/mgps/Util/e0;->E(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iput-object v5, v0, Lcom/join/kotlin/EverdayNewFragment;->lastTimeDay:Ljava/lang/String;

    .line 138
    .line 139
    iput v3, v0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 140
    .line 141
    :cond_2
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getList()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    iget-boolean v5, v0, Lcom/join/kotlin/EverdayNewFragment;->fromHome:Z

    .line 146
    .line 147
    const/16 v6, 0xd1

    .line 148
    .line 149
    const/16 v7, 0x81

    .line 150
    .line 151
    if-eqz v5, :cond_3

    .line 152
    .line 153
    const/16 v5, 0xd1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const/16 v5, 0x81

    .line 157
    .line 158
    :goto_1
    invoke-virtual {v12, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 159
    .line 160
    .line 161
    iget-boolean v5, v0, Lcom/join/kotlin/EverdayNewFragment;->fromHome:Z

    .line 162
    .line 163
    if-eqz v5, :cond_4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    const/16 v6, 0x81

    .line 167
    .line 168
    :goto_2
    invoke-virtual {v12, v6}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->isThe_new()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-virtual {v12, v5}, Lcom/join/mgps/dto/CollectionBeanSub;->setThe_new(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->isThe_update()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-virtual {v12, v5}, Lcom/join/mgps/dto/CollectionBeanSub;->setThe_update(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v6, v0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 190
    .line 191
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    iget v7, v0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const/16 v7, 0x5f

    .line 206
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget v7, v0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 211
    .line 212
    add-int/2addr v7, v4

    .line 213
    iput v7, v0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 214
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v12}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->getTime()J

    .line 235
    .line 236
    .line 237
    move-result-wide v6

    .line 238
    mul-long v6, v6, v8

    .line 239
    .line 240
    invoke-static {v6, v7}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v12}, Lcom/join/mgps/dto/CollectionBeanSub;->isThe_new()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_5

    .line 253
    .line 254
    const-string v5, "new"

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_5
    invoke-virtual {v12}, Lcom/join/mgps/dto/CollectionBeanSub;->isThe_update()Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_6

    .line 262
    .line 263
    const-string v5, "update"

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    const/4 v5, 0x0

    .line 267
    :goto_3
    if-eqz v5, :cond_8

    .line 268
    .line 269
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-nez v6, :cond_7

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_7
    const/4 v6, 0x0

    .line 277
    goto :goto_5

    .line 278
    :cond_8
    :goto_4
    const/4 v6, 0x1

    .line 279
    :goto_5
    if-nez v6, :cond_9

    .line 280
    .line 281
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 282
    .line 283
    .line 284
    :cond_9
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 285
    .line 286
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v12}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 293
    .line 294
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 295
    .line 296
    const/4 v11, 0x2

    .line 297
    const/4 v13, 0x0

    .line 298
    const/4 v14, 0x0

    .line 299
    const/16 v15, 0xc

    .line 300
    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    move-object v10, v5

    .line 304
    invoke-direct/range {v10 .. v16}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/EverdayNewFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    iget-object v2, v0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 319
    .line 320
    .line 321
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

.method public final onError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getBindingOrNull()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    if-nez v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-gtz v0, :cond_5

    .line 48
    .line 49
    :cond_4
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->c:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->b:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_5
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
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->updateDownStateList()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    if-ne v0, v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/join/kotlin/EverdayNewFragment;->updateProgressPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onExploreItem()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/EverdayNewFragment;->expDiscountGame()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/kotlin/EverdayNewFragment;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0x320

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->delayItemExplore(J)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final setAdapter(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;
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
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setColIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->colIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstVisiblePosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->firstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFromHome(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/EverdayNewFragment;->fromHome:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLastTimeDay(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->lastTimeDay:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setLastVisibleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->lastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/LinearLayoutManager;
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
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    return-void
.end method

.method public final setPageCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->pageCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRefesh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/EverdayNewFragment;->refesh:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRowIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->rowIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowDataList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/EverdayNewFragment;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public final showLoding()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getBindingOrNull()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->c:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->b:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateDownStateList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment;->showDataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v2, v2, Lcom/join/kotlin/base/impl/Downloadable;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/kotlin/base/impl/Downloadable;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
