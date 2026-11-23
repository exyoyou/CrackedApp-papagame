.class public final Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/v0;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailServerBookDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1878#2,3:123\n360#2,7:126\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n*L\n80#1:123,3\n111#1:126,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailServerBookDialogBinding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;",
        "<init>",
        "()V",
        "mAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "getContentView",
        "Landroid/view/View;",
        "createObserver",
        "scrollToAvailableData",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameDetailServerBookDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1878#2,3:123\n360#2,7:126\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n*L\n80#1:123,3\n111#1:126,7\n*E\n"
    }
.end annotation


# instance fields
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
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/discount/j0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/discount/j0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic access$scrollToAvailableData(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->scrollToAvailableData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createObserver$lambda$6$lambda$3(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "loadSir"

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v2, v7

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/join/android/app/mgsim/wufun/databinding/v0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 28
    .line 29
    const-string v0, "recyclerview"

    .line 30
    .line 31
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/16 v5, 0x10

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v0, p1

    .line 39
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadListData$default(Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/kingja/loadsir/core/b;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    new-instance v3, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$createObserver$1$1$1;

    .line 53
    .line 54
    invoke-direct {v3, p0, v7}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$createObserver$1$1$1;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 60
    .line 61
    .line 62
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method private static final createObserver$lambda$6$lambda$5(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

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
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 31
    .line 32
    .line 33
    :cond_0
    check-cast v2, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->getSubscribe()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    xor-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->setSubscribe(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->getSubscribe()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    const-string p1, "\u8ba2\u9605\u6210\u529f"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string p1, "\u53d6\u6d88\u8ba2\u9605\u6210\u529f"

    .line 68
    .line 69
    :goto_1
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_2
    move v1, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method private static final initView$lambda$1(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadData()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final initView$lambda$2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p2, "adapter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->createObserver$lambda$6$lambda$3(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->scrollToAvailableData$lambda$8(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->createObserver$lambda$6$lambda$5(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final loadData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->getServerList()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic m()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic n(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->initView$lambda$2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->initView$lambda$1(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final scrollToAvailableData()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/i0;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final scrollToAvailableData$lambda$8(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$scrollToAvailableData$1$scroller$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$scrollToAvailableData$1$scroller$1;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;->getExpire()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, -0x1

    .line 48
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 64
    .line 65
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/join/kotlin/discount/g0;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/g0;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->getSubscribeResultBean()Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/join/kotlin/discount/h0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/h0;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/v0;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/v0;->t(Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 32
    .line 33
    const-string v0, "recyclerview"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/kotlin/discount/e0;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/e0;-><init>(Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "gameId"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->setGameId(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 78
    .line 79
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v0;->d:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Lcom/join/kotlin/discount/f0;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/join/kotlin/discount/f0;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 116
    .line 117
    if-nez p1, :cond_0

    .line 118
    .line 119
    const-string p1, "loadSir"

    .line 120
    .line 121
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;->loadData()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
