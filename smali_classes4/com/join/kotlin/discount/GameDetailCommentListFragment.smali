.class public final Lcom/join/kotlin/discount/GameDetailCommentListFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailCommentListClickProxy;
.implements Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/dm;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailCommentListClickProxy;",
        "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailCommentListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1869#2,2:178\n*S KotlinDebug\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n*L\n83#1:178,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001bH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0002J\u0008\u0010!\u001a\u00020\u001bH\u0016J\u0008\u0010\"\u001a\u00020\u001bH\u0016J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%J\u0008\u0010&\u001a\u00020\u001bH\u0016J\u0008\u0010+\u001a\u00020\u001bH\u0016J\u0012\u0010,\u001a\u00020\u001b2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u0010/\u001a\u00020\u001bR\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\'\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailCommentListFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentGameDetailCommentListBinding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailCommentListClickProxy;",
        "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "mAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "rvSpinner",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "popupWindow",
        "Landroid/widget/PopupWindow;",
        "spinnerAdapter",
        "Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;",
        "getSpinnerAdapter",
        "()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;",
        "spinnerAdapter$delegate",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "getGoodRate",
        "initSpinner",
        "createObserver",
        "lazyLoadData",
        "loadData",
        "refresh",
        "",
        "clickSpinner",
        "isLoginFromGoComment",
        "()Z",
        "setLoginFromGoComment",
        "(Z)V",
        "toCommentEdit",
        "like",
        "bean",
        "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;",
        "setTopPadding",
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
        "SMAP\nGameDetailCommentListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1869#2,2:178\n*S KotlinDebug\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n*L\n83#1:178,2\n*E\n"
    }
.end annotation


# instance fields
.field private isLoginFromGoComment:Z

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

.field private popupWindow:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rvSpinner:Landroidx/recyclerview/widget/RecyclerView;

.field private final spinnerAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Lcom/join/kotlin/discount/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/discount/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/discount/d;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/join/kotlin/discount/d;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->spinnerAdapter$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->createObserver$lambda$9$lambda$8(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->spinnerAdapter_delegate$lambda$1()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Q(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->initSpinner$lambda$7$lambda$6(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->initView$lambda$2(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLoadSir$p(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)Lcom/kingja/loadsir/core/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final createObserver$lambda$9$lambda$8(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/dm;->e:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string p0, "rvList"

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

.method private final getGoodRate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getFragments(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    instance-of v2, v1, Lcom/join/kotlin/discount/GameDetailFragment;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getGoodRate()Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v1, Lcom/join/kotlin/discount/GameDetailFragment;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->getGoodRate()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getShowGoodRate()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->getGoodRate()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method private final getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->spinnerAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final initSpinner()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0802a1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const v2, 0x7f071293

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    float-to-int v1, v1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->rvSpinner:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/join/kotlin/discount/f;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/f;-><init>(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 73
    .line 74
    .line 75
    const-string v1, "\u6700\u70ed"

    .line 76
    .line 77
    const-string v2, "\u6700\u65b0"

    .line 78
    .line 79
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private static final initSpinner$lambda$7$lambda$6(Lcom/join/kotlin/discount/GameDetailCommentListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;->setSelectedIndex(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getSortType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    rsub-int/lit8 p2, p3, 0x2

    .line 27
    .line 28
    if-eq p1, p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->setSortType(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getSortText()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/String;

    .line 58
    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    const-string p2, "\u6700\u70ed"

    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const-string p1, "loadSir"

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadData(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getSpinnerAdapter()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method private static final initView$lambda$2(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final spinnerAdapter_delegate$lambda$1()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public clickSpinner()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->rvSpinner:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "rvSpinner"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v3, 0x7f071294

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const v4, 0x7f0712fb

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/dm;->c:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const v3, 0x7f0711b5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    float-to-int v2, v2

    .line 89
    neg-int v2, v2

    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/discount/e;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/e;-><init>(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/discount/GameDetailCommentListFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/discount/GameDetailCommentListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/dm;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/dm;->t(Lcom/join/kotlin/discount/proxy/GameDetailCommentListClickProxy;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string v2, "gameId"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v0, v1

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->setGameId(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;->e:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 56
    .line 57
    const-string v0, "rvList"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/join/kotlin/discount/g;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/g;-><init>(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    const-string p1, "loadSir"

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v1, p1

    .line 82
    :goto_1
    invoke-static {v1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, p0}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->setClick(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;->e:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 99
    .line 100
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;->e:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    .line 132
    .line 133
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dm;->e:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 149
    .line 150
    new-instance v0, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;-><init>(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->initSpinner()V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->getGoodRate()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->setTopPadding()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final isLoginFromGoComment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->isLoginFromGoComment:Z

    .line 2
    .line 3
    return v0
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadSir:Lcom/kingja/loadsir/core/b;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public like(Lcom/join/kotlin/discount/model/bean/CommentDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/discount/model/bean/CommentDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;->getCommentList(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setLoginFromGoComment(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->isLoginFromGoComment:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTopPadding()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/dm;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/dm;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getTabBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public toCommentEdit()V
    .locals 0

    return-void
.end method
