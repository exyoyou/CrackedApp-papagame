.class public Lcom/join/mgps/fragment/b;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02a7
.end annotation


# static fields
.field private static final n:I = 0xa


# instance fields
.field d:Lcom/join/mgps/rpc/l;

.field e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/join/mgps/adapter/f2;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/b;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d02a7

    return v0
.end method

.method protected Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a06c7

    return v0
.end method

.method afterViews()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/b;->d:Lcom/join/mgps/rpc/l;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/f2;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 33
    .line 34
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v5, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    float-to-double v4, v4

    .line 53
    const-wide v6, 0x3ffe666666666666L    # 1.9

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const/4 v8, 0x2

    .line 59
    cmpl-double v9, v4, v6

    .line 60
    .line 61
    if-ltz v9, :cond_1

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v4, 0x2

    .line 66
    :goto_0
    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 80
    .line 81
    new-instance v1, Lcom/join/mgps/fragment/b$a;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/b$a;-><init>(Lcom/join/mgps/fragment/b;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/f2;->f(Lcom/join/mgps/adapter/f2$e;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 101
    .line 102
    new-instance v3, Lcom/join/mgps/fragment/b$b;

    .line 103
    .line 104
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/b$b;-><init>(Lcom/join/mgps/fragment/b;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 111
    .line 112
    if-ne v0, v8, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    if-lt v0, v3, :cond_2

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v1, 0x0

    .line 126
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 127
    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->W()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->loadData()V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/basefragment/a;->c:Lcom/join/mgps/customview/LoadingLayout;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutBGColor(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public c0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/b;->g:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->loadData()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method d0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f12031e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method e0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ltz v0, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/f2;->e(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 55
    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-gtz p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/b;->i:Lcom/join/mgps/adapter/f2;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method protected loadData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->d:Lcom/join/mgps/rpc/l;

    .line 11
    .line 12
    iget v2, p0, Lcom/join/mgps/fragment/b;->g:I

    .line 13
    .line 14
    iget v3, p0, Lcom/join/mgps/fragment/b;->f:I

    .line 15
    .line 16
    iget v4, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 17
    .line 18
    invoke-interface {v0, v2, v3, v4}, Lcom/join/mgps/rpc/l;->M(III)Lcom/join/mgps/dto/ResultResMainBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 23
    .line 24
    if-eqz v2, :cond_7

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_7

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    if-eqz v0, :cond_6

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/NewArenaGameListBean;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/NewArenaGameListBean;->getGame_list()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-lez v3, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/16 v4, 0xa

    .line 74
    .line 75
    if-lt v3, v4, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 82
    .line 83
    :goto_0
    iget v2, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 84
    .line 85
    if-gt v2, v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-boolean v2, p0, Lcom/join/mgps/fragment/b;->m:Z

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    iget v2, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 95
    .line 96
    add-int/2addr v2, v1

    .line 97
    iput v2, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/b;->e0(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    :goto_1
    iget v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 104
    .line 105
    if-gt v0, v1, :cond_9

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    :goto_2
    return-void

    .line 112
    :catch_0
    nop

    .line 113
    iget v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 114
    .line 115
    if-gt v0, v1, :cond_9

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->showLodingFailed()V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    iget v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 122
    .line 123
    if-gt v0, v1, :cond_9

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->showLodingFailed()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/mgps/fragment/b;->d0()V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "game_type"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/join/mgps/fragment/b;->f:I

    .line 15
    .line 16
    const-string v0, "room_type"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/b;->g:I

    .line 23
    .line 24
    const-string v0, "from"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/join/mgps/fragment/b;->l:I

    .line 31
    .line 32
    const-string v0, "pn"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    const-string v0, "datas"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-gtz v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 67
    iput p1, p0, Lcom/join/mgps/fragment/b;->h:I

    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/b;->k:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b;->j:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method
