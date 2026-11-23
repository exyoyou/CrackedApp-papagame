.class public Lcom/join/mgps/activity/o0;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d028a
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "CollectionModuleSeven"


# instance fields
.field private c:Landroid/content/Context;

.field d:Landroidx/recyclerview/widget/RecyclerView;
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

.field g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/join/mgps/adapter/t;

.field private j:Lcom/join/android/app/component/video/h;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/join/mgps/pref/PrefDef_;

.field n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/o0;->l:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/activity/o0;->n:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/o0;->o:Z

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/activity/o0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->W()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/mgps/activity/o0;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/o0;->V(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Lcom/join/mgps/activity/o0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/o0;->l:Z

    .line 2
    .line 3
    return p1
.end method

.method private U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->m:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->game_section_id()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->g:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private synthetic V(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p2, p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 22
    .line 23
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private synthetic W()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/o0;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method private Y(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    return v1
.end method

.method private Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    const/16 v0, 0xd2

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method private expDiscountGame()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/join/mgps/activity/o0;->o:Z

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/o0;->o:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-gt v3, v2, :cond_2

    .line 31
    .line 32
    iget-object v4, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->isHasExposure()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->setHasExposure(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItemType()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x2

    .line 54
    if-eq v5, v6, :cond_0

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    if-eq v5, v6, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    instance-of v5, v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 65
    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->p2(Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    .line 75
    .line 76
    .line 77
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 81
    .line 82
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v6, "discount_game"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    .line 101
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 102
    .line 103
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v6, v4}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 124
    .line 125
    invoke-virtual {v4, v7, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v4

    .line 130
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    .line 137
    iput-boolean v0, p0, Lcom/join/mgps/activity/o0;->o:Z

    .line 138
    .line 139
    throw v1

    .line 140
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/o0;->o:Z

    .line 141
    .line 142
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, -0x1

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    :goto_0
    if-gt v1, v0, :cond_10

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItemType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v4, 0x2

    .line 51
    const v5, 0x7f0a054e

    .line 52
    .line 53
    .line 54
    if-eq v3, v4, :cond_b

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    if-eq v3, v4, :cond_b

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    if-eq v3, v4, :cond_4

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    instance-of v3, v3, Ljava/util/List;

    .line 69
    .line 70
    if-nez v3, :cond_5

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/util/List;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v4, v3, Lv2/c;

    .line 87
    .line 88
    if-nez v4, :cond_6

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_6
    check-cast v3, Lv2/c;

    .line 93
    .line 94
    const v4, 0x7f0a1345

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Lv2/c;->b(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    if-eqz v3, :cond_f

    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_7

    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_7
    const/4 v4, 0x0

    .line 114
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ge v4, v6, :cond_f

    .line 119
    .line 120
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 125
    .line 126
    sget-object v7, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-direct {p0, v6}, Lcom/join/mgps/activity/o0;->Y(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_8

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_8
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-nez v7, :cond_9

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_9
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Lcom/join/mgps/customview/DownloadNormalView;

    .line 155
    .line 156
    if-eqz v7, :cond_a

    .line 157
    .line 158
    invoke-virtual {v7, v6}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 159
    .line 160
    .line 161
    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_b
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 169
    .line 170
    if-nez v3, :cond_c

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_c
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 178
    .line 179
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/o0;->Y(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_d

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_d
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    instance-of v4, v3, Lv2/c;

    .line 199
    .line 200
    if-nez v4, :cond_e

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_e
    check-cast v3, Lv2/c;

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Lv2/c;->b(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 210
    .line 211
    if-eqz v3, :cond_f

    .line 212
    .line 213
    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    :cond_f
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_10
    :goto_4
    return-void
.end method


# virtual methods
.method S()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x320L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->U()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/activity/o0;->n:I

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->U()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/join/mgps/activity/o0;->n:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/join/mgps/activity/o0;->n:I

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string v0, "\u4e13\u533aid\u4e0d\u5b58\u5728"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/o0;->showMessage(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/dto/CollectionModuleSevenArgs;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;->setTemplateId(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v1, v0}, Lb7/i;->N(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/16 v2, 0xc8

    .line 111
    .line 112
    if-ne v1, v2, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleSevenBean;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/o0;->updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/o0;->showMessage(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
.end method

.method X(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/o0;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->m:Lcom/join/mgps/pref/PrefDef_;

    .line 22
    .line 23
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    const-string v2, "PapaMainV3Fragment"

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/adapter/t;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t;-><init>(Ljava/util/List;Lcom/join/android/app/component/video/h;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 63
    .line 64
    new-instance v1, Lcom/join/mgps/activity/m0;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0;-><init>(Lcom/join/mgps/activity/o0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/activity/o0$a;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$a;-><init>(Lcom/join/mgps/activity/o0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method autoPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/o0;->l:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->updateProgressPartly()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/activity/n0;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/n0;-><init>(Lcom/join/mgps/activity/o0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/o0;->n:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLoding()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->S()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->j:Lcom/join/android/app/component/video/h;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->E()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->S()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->f:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->e:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showMain()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_14

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_14

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_12

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_type()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 63
    .line 64
    invoke-direct {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/CollectionSevenListBean;->setType(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTitle()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTitle(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getSub_title()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setSubTitle(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_id()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setCollection_id(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTpl_type()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTpl_type(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getTitle()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTitle(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_3
    const/4 v0, 0x2

    .line 134
    if-ne v1, v3, :cond_6

    .line 135
    .line 136
    if-eqz v2, :cond_0

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_4

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setBig_pic(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setV_url(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 183
    .line 184
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 185
    .line 186
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v4, v0, v1}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_6
    const/4 v3, 0x4

    .line 208
    const/4 v4, 0x3

    .line 209
    if-ne v1, v0, :cond_9

    .line 210
    .line 211
    if-eqz v2, :cond_8

    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_8

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_7

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 238
    .line 239
    invoke-direct {p0, v5}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 244
    .line 245
    new-instance v5, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 246
    .line 247
    invoke-direct {v5, v3, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    .line 261
    .line 262
    :cond_8
    if-eqz v2, :cond_0

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    .line 270
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_0

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 289
    .line 290
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 291
    .line 292
    new-instance v3, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 293
    .line 294
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 305
    .line 306
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_9
    if-ne v1, v4, :cond_d

    .line 311
    .line 312
    if-eqz v2, :cond_c

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-eqz v1, :cond_c

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-nez v3, :cond_a

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setBig_pic(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_a
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_b

    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setV_url(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_b
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 359
    .line 360
    new-instance v5, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 361
    .line 362
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-direct {v5, v0, v1}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 373
    .line 374
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_c
    if-eqz v2, :cond_0

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 408
    .line 409
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 410
    .line 411
    new-instance v3, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 412
    .line 413
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 424
    .line 425
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_d
    if-ne v1, v3, :cond_e

    .line 430
    .line 431
    if-eqz v2, :cond_0

    .line 432
    .line 433
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big_list()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-eqz v1, :cond_0

    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big_list()Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_0

    .line 452
    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 458
    .line 459
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 460
    .line 461
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 462
    .line 463
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    invoke-direct {v4, v0, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    iget-object v3, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 474
    .line 475
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_e
    const/4 v0, 0x5

    .line 480
    if-ne v1, v0, :cond_f

    .line 481
    .line 482
    if-eqz v2, :cond_0

    .line 483
    .line 484
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    .line 490
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_0

    .line 503
    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 509
    .line 510
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 511
    .line 512
    new-instance v3, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 513
    .line 514
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    iget-object v2, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 525
    .line 526
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    goto :goto_6

    .line 530
    :cond_f
    const/4 v4, 0x6

    .line 531
    if-ne v1, v4, :cond_11

    .line 532
    .line 533
    if-eqz v2, :cond_0

    .line 534
    .line 535
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    if-eqz v0, :cond_0

    .line 540
    .line 541
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-eqz v4, :cond_10

    .line 554
    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 560
    .line 561
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/o0;->Z(Lcom/join/mgps/dto/CommonGameInfoBean;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 562
    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 566
    .line 567
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 568
    .line 569
    invoke-direct {v4, v3, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 576
    .line 577
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    .line 583
    .line 584
    goto/16 :goto_0

    .line 585
    .line 586
    :cond_11
    const/4 v3, 0x7

    .line 587
    if-ne v1, v3, :cond_0

    .line 588
    .line 589
    if-eqz v2, :cond_0

    .line 590
    .line 591
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getAdvert_list()Ljava/util/List;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    if-eqz v1, :cond_0

    .line 596
    .line 597
    iget-object v1, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 598
    .line 599
    new-instance v3, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 600
    .line 601
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getAdvert_list()Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-direct {v3, v0, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->i:Lcom/join/mgps/adapter/t;

    .line 614
    .line 615
    if-eqz p1, :cond_13

    .line 616
    .line 617
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->h:Ljava/util/List;

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t;->C(Ljava/util/List;)V

    .line 620
    .line 621
    .line 622
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->k:Ljava/util/List;

    .line 623
    .line 624
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/o0;->updateDownStateList(Ljava/util/List;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->autoPlay()V

    .line 628
    .line 629
    .line 630
    invoke-direct {p0}, Lcom/join/mgps/activity/o0;->expDiscountGame()V

    .line 631
    .line 632
    .line 633
    goto :goto_8

    .line 634
    :cond_14
    invoke-virtual {p0}, Lcom/join/mgps/activity/o0;->showLodingFailed()V

    .line 635
    .line 636
    .line 637
    :goto_8
    return-void
.end method
