.class public final Lcom/join/kotlin/ui/notice/NoticeListActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0019H\u0016J\u0008\u0010!\u001a\u00020\u0019H\u0016J\u0008\u0010\"\u001a\u00020\u0019H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/notice/NoticeListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "setViewModle",
        "(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V",
        "viewdataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;",
        "getViewdataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;",
        "setViewdataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;)V",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "onClickItem",
        "data",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "onClickBack",
        "onClickReload",
        "onClickSetNetWork",
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
.field private page:I

.field public viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

.field private viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/notice/NoticeListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->onCreate$lambda$0(Lcom/join/kotlin/ui/notice/NoticeListActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/notice/NoticeListActivity;Lcom/join/mgps/dto/ResponseModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->onCreate$lambda$1(Lcom/join/kotlin/ui/notice/NoticeListActivity;Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/ui/notice/NoticeListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/join/kotlin/ui/notice/NoticeListActivity;Lcom/join/mgps/dto/ResponseModel;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0xc8

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/kotlin/ui/coupon/NoticeListData;

    .line 21
    .line 22
    iget v2, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 31
    .line 32
    add-int/2addr p1, v1

    .line 33
    iput p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/ui/coupon/NoticeListData;->getGame_announcement_dto_list()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0, v1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->updateShowLoadUI(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "viewModle"

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

.method public final getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/i3;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final loadData(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "gameId"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getRequest()Lcom/join/kotlin/ui/notice/NoticeRequest;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/notice/NoticeRequest;->getNoticeData(Lcom/join/mgps/dto/RequestModel;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->updateShowLoadUI(Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onClickReload()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->loadData(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0088

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 14
    .line 15
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->setViewModle(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/16 v0, 0x36

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const/16 v0, 0x8

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const/16 v0, 0x1e

    .line 63
    .line 64
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    new-instance p1, Lcom/join/kotlin/ui/notice/NoticeListAdapter;

    .line 75
    .line 76
    invoke-direct {p1, p0, p0}, Lcom/join/kotlin/ui/notice/NoticeListAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/notice/ClickProxy;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Lcom/join/kotlin/ui/notice/a;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/notice/a;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-object v1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    new-instance v2, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;

    .line 120
    .line 121
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->loadData(I)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getRequest()Lcom/join/kotlin/ui/notice/NoticeRequest;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v0, Lcom/join/kotlin/ui/notice/b;

    .line 181
    .line 182
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/notice/b;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setViewModle(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/notice/NoticeViewModle;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 7
    .line 8
    return-void
.end method

.method public final setViewdataBinding(Lcom/join/android/app/mgsim/wufun/databinding/i3;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/i3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/i3;

    .line 2
    .line 3
    return-void
.end method
