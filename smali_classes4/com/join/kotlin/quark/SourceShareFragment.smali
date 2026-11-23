.class public final Lcom/join/kotlin/quark/SourceShareFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/uo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/quark/SourceShareFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSourceShareBinding;",
        "<init>",
        "()V",
        "tabId",
        "",
        "getTabId",
        "()I",
        "setTabId",
        "(I)V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "adapter",
        "Lcom/join/kotlin/quark/adapter/SourceShareAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "lazyLoadData",
        "loadData",
        "refresh",
        "",
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
.field private final adapter$delegate:Lkotlin/Lazy;
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

.field private tabId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/quark/r0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/quark/r0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/quark/SourceShareFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/quark/SourceShareFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/SourceShareFragment;->initView$lambda$5(Lcom/join/kotlin/quark/SourceShareFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/quark/SourceShareFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceShareFragment;->createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/SourceShareFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/quark/SourceShareFragment;->adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Q(Lcom/join/kotlin/quark/adapter/SourceShareAdapter;Lcom/join/kotlin/quark/SourceShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/quark/SourceShareFragment;->initView$lambda$4$lambda$3(Lcom/join/kotlin/quark/adapter/SourceShareAdapter;Lcom/join/kotlin/quark/SourceShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/quark/adapter/SourceShareAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/SourceShareFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceShareFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    move-result-object p0

    .line 23
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/uo;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string p0, "xrvList"

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

.method private static final initView$lambda$4$lambda$3(Lcom/join/kotlin/quark/adapter/SourceShareAdapter;Lcom/join/kotlin/quark/SourceShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p3, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-class v0, Lcom/join/kotlin/quark/SourceShareDetailActivity;

    .line 18
    .line 19
    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/io/Serializable;

    .line 27
    .line 28
    const-string p2, "itemBean"

    .line 29
    .line 30
    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p0, "qkPosition"

    .line 34
    .line 35
    const-string p2, "hp"

    .line 36
    .line 37
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final initView$lambda$5(Lcom/join/kotlin/quark/SourceShareFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/SourceShareFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
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
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/quark/s0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/s0;-><init>(Lcom/join/kotlin/quark/SourceShareFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/quark/SourceShareFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/SourceShareFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getAdapter()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getTabId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/quark/SourceShareFragment;->tabId:I

    .line 2
    .line 3
    return v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6
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
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "_tab_id"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/kotlin/quark/SourceShareFragment;->tabId:I

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/uo;->u(Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/uo;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 38
    .line 39
    const-string p1, "xrvList"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceShareFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x4

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->init$default(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;ZILjava/lang/Object;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 68
    .line 69
    new-instance v1, Lcom/join/kotlin/quark/SourceShareFragment$initView$2$1;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lcom/join/kotlin/quark/SourceShareFragment$initView$2$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceShareFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lcom/join/kotlin/quark/t0;

    .line 82
    .line 83
    invoke-direct {v1, v0, p0}, Lcom/join/kotlin/quark/t0;-><init>(Lcom/join/kotlin/quark/adapter/SourceShareAdapter;Lcom/join/kotlin/quark/SourceShareFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 96
    .line 97
    new-instance v1, Lcom/join/kotlin/quark/SourceShareFragment$initView$4;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/SourceShareFragment$initView$4;-><init>(Lcom/join/kotlin/quark/SourceShareFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/uo;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 112
    .line 113
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/join/kotlin/quark/u0;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lcom/join/kotlin/quark/u0;-><init>(Lcom/join/kotlin/quark/SourceShareFragment;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 126
    .line 127
    if-nez p1, :cond_1

    .line 128
    .line 129
    const-string p1, "loadSir"

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/SourceShareFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final loadData(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    .line 6
    .line 7
    iget v1, p0, Lcom/join/kotlin/quark/SourceShareFragment;->tabId:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "getUid(...)"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "getToken(...)"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;->getResourceList(ZILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final setTabId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/quark/SourceShareFragment;->tabId:I

    .line 2
    .line 3
    return-void
.end method
