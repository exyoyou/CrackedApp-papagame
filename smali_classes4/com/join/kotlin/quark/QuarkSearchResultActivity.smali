.class public final Lcom/join/kotlin/quark/QuarkSearchResultActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/QuarkSearchClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/f4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/QuarkSearchClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0014J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/join/kotlin/quark/QuarkSearchResultActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkSearchResultBinding;",
        "Lcom/join/kotlin/quark/proxy/QuarkSearchClickProxy;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "adapter",
        "Lcom/join/kotlin/quark/adapter/SearchResultAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "loadData",
        "refresh",
        "",
        "onBackClick",
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

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/quark/u;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/quark/u;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method private static final adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/quark/adapter/SearchResultAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final createObserver$lambda$12$lambda$11(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->getAdapter()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "loadSir"

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/f4;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 25
    .line 26
    const-string v3, "xrvList"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/join/kotlin/quark/v;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/join/kotlin/quark/v;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadListData(Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/kingja/loadsir/core/b;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final createObserver$lambda$12$lambda$11$lambda$10(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "loadSir"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    const-class v0, Lcom/join/kotlin/quark/loadCallBack/EmptyQuarkSourceCallback;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/kingja/loadsir/core/b;->g(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final initView$lambda$4$lambda$3(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

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
    const-string p2, "ss"

    .line 36
    .line 37
    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final initView$lambda$5(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final initView$lambda$9$lambda$8(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    const p1, 0x7f0a1987

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/join/kotlin/quark/q;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/join/kotlin/quark/q;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static final initView$lambda$9$lambda$8$lambda$7$lambda$6(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;

    .line 4
    .line 5
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getKeyword()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "_keyword"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->createObserver$lambda$12$lambda$11$lambda$10(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->createObserver$lambda$12$lambda$11(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->initView$lambda$9$lambda$8$lambda$7$lambda$6(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->initView$lambda$4$lambda$3(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->initView$lambda$5(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->adapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->initView$lambda$9$lambda$8(Lcom/join/kotlin/quark/QuarkSearchResultActivity;Landroid/content/Context;Landroid/view/View;)V

    return-void
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
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/quark/p;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/p;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/quark/QuarkSearchResultActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/QuarkSearchResultActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getAdapter()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 14
    .line 15
    const-string v3, "_keyword"

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2, p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->setKeyword(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, Lcom/papa/sim/statistic/Event;->visitPCPageZone:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getKeyword()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-lez p1, :cond_1

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    :goto_0
    if-ne p1, v0, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_1
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getKeyword()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, "-\u8d44\u6e90\u5171\u4eab"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/f4;->u(Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/f4;->t(Lcom/join/kotlin/quark/proxy/QuarkSearchClickProxy;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 152
    .line 153
    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/f4;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 154
    .line 155
    const-string p1, "xrvList"

    .line 156
    .line 157
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 161
    .line 162
    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->getAdapter()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const/4 v5, 0x0

    .line 170
    const/4 v6, 0x4

    .line 171
    const/4 v7, 0x0

    .line 172
    invoke-static/range {v2 .. v7}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->init$default(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;ZILjava/lang/Object;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setPullRefreshEnabled(Z)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;

    .line 180
    .line 181
    invoke-direct {v1, v2}, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$2$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->getAdapter()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v2, Lcom/join/kotlin/quark/r;

    .line 192
    .line 193
    invoke-direct {v2, v1, p0}, Lcom/join/kotlin/quark/r;-><init>(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 204
    .line 205
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/f4;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 206
    .line 207
    new-instance v2, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$4;

    .line 208
    .line 209
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity$initView$4;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/f4;

    .line 220
    .line 221
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/f4;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 222
    .line 223
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance p1, Lcom/join/kotlin/quark/s;

    .line 227
    .line 228
    invoke-direct {p1, p0}, Lcom/join/kotlin/quark/s;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v1, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    const-string v2, "loadSir"

    .line 239
    .line 240
    if-nez p1, :cond_4

    .line 241
    .line 242
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    move-object p1, v1

    .line 246
    :cond_4
    new-instance v3, Lcom/join/kotlin/quark/t;

    .line 247
    .line 248
    invoke-direct {v3, p0}, Lcom/join/kotlin/quark/t;-><init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V

    .line 249
    .line 250
    .line 251
    const-class v4, Lcom/join/kotlin/quark/loadCallBack/EmptyQuarkSourceCallback;

    .line 252
    .line 253
    invoke-virtual {p1, v4, v3}, Lcom/kingja/loadsir/core/b;->f(Ljava/lang/Class;Lcom/kingja/loadsir/core/d;)Lcom/kingja/loadsir/core/b;

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 257
    .line 258
    if-nez p1, :cond_5

    .line 259
    .line 260
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_5
    move-object v1, p1

    .line 265
    :goto_2
    invoke-static {v1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->loadData(Z)V

    .line 269
    .line 270
    .line 271
    return-void
.end method

.method public final loadData(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getResourceSearch(Z)V

    .line 8
    .line 9
    .line 10
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

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method
