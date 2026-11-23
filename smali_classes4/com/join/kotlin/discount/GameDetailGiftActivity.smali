.class public final Lcom/join/kotlin/discount/GameDetailGiftActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/r0;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0012\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailGiftActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailGiftBinding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "datas",
        "",
        "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
        "mAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "createObserver",
        "onBackClick",
        "goGiftDetail",
        "giftItemBean",
        "Lcom/join/kotlin/discount/model/bean/GiftItemBean;",
        "receiveGift",
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


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
            ">;"
        }
    .end annotation

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

.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->datas:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/join/kotlin/discount/b0;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/kotlin/discount/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method private static final createObserver$lambda$3$lambda$2(Lcom/join/kotlin/discount/GameDetailGiftActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/r0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string p0, "rvGift"

    .line 28
    .line 29
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private final getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$1(Lcom/join/kotlin/discount/GameDetailGiftActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->loadData()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static synthetic j(Lcom/join/kotlin/discount/GameDetailGiftActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->initView$lambda$1(Lcom/join/kotlin/discount/GameDetailGiftActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/discount/GameDetailGiftActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->createObserver$lambda$3$lambda$2(Lcom/join/kotlin/discount/GameDetailGiftActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    move-result-object v0

    return-object v0
.end method

.method private final loadData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;->getGiftList()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/discount/c0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/c0;-><init>(Lcom/join/kotlin/discount/GameDetailGiftActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/discount/GameDetailGiftActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/discount/GameDetailGiftActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public goGiftDetail(Lcom/join/kotlin/discount/model/bean/GiftItemBean;)V
    .locals 2
    .param p1    # Lcom/join/kotlin/discount/model/bean/GiftItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lcom/join/kotlin/discount/CommonBottomDialogActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "title"

    .line 9
    .line 10
    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    const-string v1, "\u8bf7\u524d\u5f80\u6e38\u620f\u4e2d\u9886\u53d6"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v0, "btnText"

    .line 23
    .line 24
    const-string v1, "\u6211\u77e5\u9053\u4e86"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/r0;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/r0;->t(Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 32
    .line 33
    const-string v0, "rvGift"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/kotlin/discount/a0;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/a0;-><init>(Lcom/join/kotlin/discount/GameDetailGiftActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailGiftActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const-string p1, "loadSir"

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p0}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;->setClick(Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "gameId"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;->setGameId(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 93
    .line 94
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/r0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailGiftActivity;->loadData()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public receiveGift(Lcom/join/kotlin/discount/model/bean/GiftItemBean;)V
    .locals 2
    .param p1    # Lcom/join/kotlin/discount/model/bean/GiftItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lcom/join/kotlin/discount/CommonBottomDialogActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "title"

    .line 9
    .line 10
    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    const-string v1, "\u8bf7\u524d\u5f80\u6e38\u620f\u4e2d\u9886\u53d6"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v0, "btnText"

    .line 23
    .line 24
    const-string v1, "\u6211\u77e5\u9053\u4e86"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
