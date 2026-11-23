.class public Lcom/join/mgps/fragment/d4;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d05e6
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field d:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/b;

.field private h:I

.field private i:Lcom/join/mgps/adapter/t4;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method O()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method P()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method Q()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->e:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->i:Lcom/join/mgps/adapter/t4;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/d4;->g:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/d4;->c:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountVoucherGame;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountVoucherGame;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 39
    .line 40
    new-instance v1, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountVoucherGame;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 49
    .line 50
    new-instance v1, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountVoucherGame;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/adapter/t4;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/fragment/d4;->c:Landroid/content/Context;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t4;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/fragment/d4;->i:Lcom/join/mgps/adapter/t4;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->Q()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->g:Lcom/join/mgps/rpc/b;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lez v1, :cond_1

    .line 46
    .line 47
    iget v1, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 48
    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->Q()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->O()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->P()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->O()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->showLodingFailed()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->P()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->showLodingFailed()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->loadData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->loadData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/d4;->h:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d4;->loadData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->j:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->f:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->e:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/d4;->d:Lcom/join/mgps/customview/XListView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
