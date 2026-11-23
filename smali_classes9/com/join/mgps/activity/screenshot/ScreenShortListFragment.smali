.class public Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;,
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;,
        Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0819
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

.field allItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/join/mgps/rpc/e;

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;

.field loading_none:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pn:I

.field recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field typeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->client:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "gameId"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "typeId"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loadListData(I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 52
    .line 53
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 74
    .line 75
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const v3, 0x7f071310

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$1;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method loadListData(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->client:Lcom/join/mgps/rpc/e;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->k(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->updateUi(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showNone()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/util/List;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showNone()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->showError()V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method showError()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->refreshComplete()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method showNone()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loading_none:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->refreshComplete()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/16 v0, 0x14

    .line 67
    .line 68
    if-ge p1, v0, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->recycleView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
