.class public final Lcom/join/kotlin/quark/SourceHopeFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;
.implements Lcom/join/kotlin/quark/callback/IChangeSortCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/so;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;",
        "Lcom/join/kotlin/quark/callback/IChangeSortCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019J\u0012\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u000f\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\u0012H\u0016R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/quark/SourceHopeFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSourceHopeBinding;",
        "Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;",
        "Lcom/join/kotlin/quark/callback/IChangeSortCallback;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "adapter",
        "Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;",
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
        "onUploadSourceClick",
        "item",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "onWantClick",
        "onViewSourceClick",
        "getStatusState",
        "",
        "()Ljava/lang/Integer;",
        "onStatusChanged",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/quark/g0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/quark/g0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/quark/SourceHopeFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/quark/SourceHopeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->initView$lambda$5(Lcom/join/kotlin/quark/SourceHopeFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->onWantClick$lambda$9(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/SourceHopeFragment;->initView$lambda$4$lambda$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceHopeFragment;->onWantClick$lambda$8(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceHopeFragment;->createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/quark/SourceHopeFragment;->adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static final adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceHopeFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/so;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

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

.method private static final initView$lambda$4$lambda$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p2, "adapter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final initView$lambda$5(Lcom/join/kotlin/quark/SourceHopeFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/SourceHopeFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final onWantClick$lambda$8(Lcom/join/kotlin/quark/SourceHopeFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string p1, "\u6570\u636e\u4e0a\u4f20\u6210\u529f"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/SourceHopeFragment;->loadData(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string p0, "\u6570\u636e\u4e0a\u4f20\u5931\u8d25"

    .line 28
    .line 29
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final onWantClick$lambda$9(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
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
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/quark/f0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/f0;-><init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/quark/SourceHopeFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/SourceHopeFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceHopeFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public getStatusState()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->getStatus()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 8
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
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 14
    .line 15
    const-string v3, "_keyword"

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    .line 19
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->setKeyword(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 31
    .line 32
    const-string v3, "_sortType"

    .line 33
    .line 34
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->setSortType(Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 50
    .line 51
    const-string v3, "_type"

    .line 52
    .line 53
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v2, p1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->setType(Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/so;->n(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 84
    .line 85
    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/so;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 86
    .line 87
    const-string p1, "xrvList"

    .line 88
    .line 89
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-direct {v3, v4, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x4

    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-static/range {v2 .. v7}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->init$default(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;ZILjava/lang/Object;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;->setSourceHopeItemClickProxy(Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/so;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 125
    .line 126
    new-instance v1, Lcom/join/kotlin/quark/SourceHopeFragment$initView$2$1;

    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/join/kotlin/quark/SourceHopeFragment$initView$2$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceHopeFragment;->getAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Lcom/join/kotlin/quark/h0;

    .line 139
    .line 140
    invoke-direct {v1}, Lcom/join/kotlin/quark/h0;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/so;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 153
    .line 154
    new-instance v1, Lcom/join/kotlin/quark/SourceHopeFragment$initView$4;

    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/SourceHopeFragment$initView$4;-><init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/so;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/so;->b:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 169
    .line 170
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Lcom/join/kotlin/quark/i0;

    .line 174
    .line 175
    invoke-direct {p1, p0}, Lcom/join/kotlin/quark/i0;-><init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceHopeFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 183
    .line 184
    if-nez p1, :cond_1

    .line 185
    .line 186
    const-string p1, "loadSir"

    .line 187
    .line 188
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    :cond_1
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/SourceHopeFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final loadData(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/kotlin/quark/callback/IChangeSortCallback;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IChangeSortCallback"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/join/kotlin/quark/callback/IChangeSortCallback;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/join/kotlin/quark/callback/IChangeSortCallback;->getStatusState()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->setStatus(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "getUid(...)"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->getWishPoolList(ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onStatusChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/SourceHopeFragment;->loadData(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onUploadSourceClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_wishPoolItem"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "putExtra(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1;-><init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V

    .line 28
    .line 29
    .line 30
    const-class v3, Lcom/join/kotlin/quark/ShareSourceActivity;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onViewSourceClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
    .locals 3
    .param p1    # Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/join/kotlin/quark/SourceShareDetailActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "itemBean"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onWantClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getId()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getUid(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/join/kotlin/quark/d0;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/d0;-><init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/join/kotlin/quark/e0;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/join/kotlin/quark/e0;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->wishPoolWant(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
