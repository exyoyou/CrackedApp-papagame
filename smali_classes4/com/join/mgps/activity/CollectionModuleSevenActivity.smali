.class public Lcom/join/mgps/activity/CollectionModuleSevenActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0033
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectionModuleSeven"


# instance fields
.field private SCROLLING:Z

.field private allDownloadAppHomeBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field breakListView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            ">;"
        }
    .end annotation
.end field

.field private firstVisiblePosition:I

.field private isExposuring:Z

.field private lastVisibleIndex:I

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private sevenAdapter:Lcom/join/mgps/adapter/t;

.field templateId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private videoHelper:Lcom/join/android/app/component/video/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->SCROLLING:Z

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "10012"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->isExposuring:Z

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CollectionModuleSevenActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/CollectionModuleSevenActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/CollectionModuleSevenActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method private expDiscountGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->isExposuring:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-gt v3, v2, :cond_3

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->isHasExposure()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->setHasExposure(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItemType()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v5, v6, :cond_0

    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    if-eq v5, v6, :cond_0

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    instance-of v5, v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->p2(Lcom/join/mgps/dto/CommonGameInfoBean;)Z

    .line 69
    .line 70
    .line 71
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 75
    .line 76
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "discount_game"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 96
    .line 97
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 118
    .line 119
    invoke-virtual {v7, v8, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception v5

    .line 124
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    .line 152
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->isExposuring:Z

    .line 153
    .line 154
    throw v1

    .line 155
    :catch_1
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->isExposuring:Z

    .line 156
    .line 157
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->lambda$updateData$1()V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/CollectionModuleSevenActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->lambda$afterviews$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterviews$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateData$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->autoPlay()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->expDiscountGame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private shouldApplyDownloadProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
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

.method private updateDownStateList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 18
    .line 19
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

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
    invoke-direct {p0, v6}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->shouldApplyDownloadProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

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
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->shouldApplyDownloadProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

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
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

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
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->templateId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "\u4e13\u533aid\u4e0d\u5b58\u5728"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showMessage(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    const-string v2, "PapaMainV3Fragment"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/adapter/t;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t;-><init>(Ljava/util/List;Lcom/join/android/app/component/video/h;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 66
    .line 67
    new-instance v1, Lcom/join/mgps/activity/k0;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/k0;-><init>(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity$a;-><init>(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->getData()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method autoPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/dto/CollectionModuleSevenArgs;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->templateId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;->setTemplateId(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v1, v0}, Lb7/i;->N(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0xc8

    .line 68
    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleSevenBean;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showLodingFailed()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showMessage(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showLodingFailed()V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method protected onDestroy()V
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
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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
    .locals 6
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_5

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v1, v3, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    const/4 v4, 0x7

    .line 22
    if-eq v1, v4, :cond_1

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eq v1, v3, :cond_0

    .line 27
    .line 28
    const/16 v5, 0x30

    .line 29
    .line 30
    if-eq v1, v5, :cond_3

    .line 31
    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 v1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->SCROLLING:Z

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateProgressPartly()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "receiveStart: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->E()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->context:Landroid/content/Context;

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
    .locals 8
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_17

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_17

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->title_textview:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTitle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_type()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameZone:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->templateId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_14

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_type()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTitle()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_4

    .line 143
    .line 144
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 145
    .line 146
    invoke-direct {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->setType(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-eqz v5, :cond_3

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTitle()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTitle(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getSub_title()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setSubTitle(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_id()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CollectionSevenListBean;->setCollection_id(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getTpl_type()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTpl_type(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;->setTitle(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_4
    const/4 v0, 0x2

    .line 216
    if-ne v2, v1, :cond_7

    .line 217
    .line 218
    if-eqz v3, :cond_1

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    if-eqz v2, :cond_1

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_5

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setBig_pic(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-nez v4, :cond_6

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setV_url(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 271
    .line 272
    .line 273
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 274
    .line 275
    new-instance v5, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 276
    .line 277
    invoke-direct {v5, v0, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 284
    .line 285
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_7
    const/4 v4, 0x4

    .line 295
    const/4 v5, 0x3

    .line 296
    if-ne v2, v0, :cond_a

    .line 297
    .line 298
    if-eqz v3, :cond_9

    .line 299
    .line 300
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_9

    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-eqz v6, :cond_8

    .line 319
    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 325
    .line 326
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 333
    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 337
    .line 338
    new-instance v6, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 339
    .line 340
    invoke-direct {v6, v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 347
    .line 348
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    .line 354
    .line 355
    :cond_9
    if-eqz v3, :cond_1

    .line 356
    .line 357
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_1

    .line 362
    .line 363
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_1

    .line 376
    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 390
    .line 391
    .line 392
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 393
    .line 394
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 395
    .line 396
    invoke-direct {v4, v5, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 403
    .line 404
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    goto :goto_3

    .line 408
    :cond_a
    if-ne v2, v5, :cond_e

    .line 409
    .line 410
    if-eqz v3, :cond_d

    .line 411
    .line 412
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-eqz v2, :cond_d

    .line 417
    .line 418
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-nez v4, :cond_b

    .line 431
    .line 432
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCover_url()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setBig_pic(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :cond_b
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_c

    .line 448
    .line 449
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getVideo_url()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setV_url(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    :cond_c
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    iget-object v6, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 461
    .line 462
    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 463
    .line 464
    .line 465
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 466
    .line 467
    new-instance v6, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 468
    .line 469
    invoke-direct {v6, v0, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 476
    .line 477
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    :cond_d
    if-eqz v3, :cond_1

    .line 485
    .line 486
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-eqz v0, :cond_1

    .line 491
    .line 492
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-eqz v2, :cond_1

    .line 505
    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 511
    .line 512
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 517
    .line 518
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 519
    .line 520
    .line 521
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 522
    .line 523
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 524
    .line 525
    invoke-direct {v4, v5, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 532
    .line 533
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_4

    .line 537
    :cond_e
    if-ne v2, v4, :cond_f

    .line 538
    .line 539
    if-eqz v3, :cond_1

    .line 540
    .line 541
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big_list()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    if-eqz v2, :cond_1

    .line 546
    .line 547
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_big_list()Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-eqz v3, :cond_1

    .line 560
    .line 561
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 566
    .line 567
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 572
    .line 573
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 574
    .line 575
    .line 576
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 577
    .line 578
    new-instance v5, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 579
    .line 580
    invoke-direct {v5, v0, v3}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 587
    .line 588
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    goto :goto_5

    .line 592
    :cond_f
    const/4 v0, 0x5

    .line 593
    if-ne v2, v0, :cond_10

    .line 594
    .line 595
    if-eqz v3, :cond_1

    .line 596
    .line 597
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    if-eqz v0, :cond_1

    .line 602
    .line 603
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    if-eqz v2, :cond_1

    .line 616
    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 622
    .line 623
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 630
    .line 631
    .line 632
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 633
    .line 634
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 635
    .line 636
    invoke-direct {v4, v5, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 643
    .line 644
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    goto :goto_6

    .line 648
    :cond_10
    const/4 v6, 0x6

    .line 649
    if-ne v2, v6, :cond_12

    .line 650
    .line 651
    if-eqz v3, :cond_1

    .line 652
    .line 653
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    if-eqz v0, :cond_1

    .line 658
    .line 659
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_11

    .line 672
    .line 673
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 678
    .line 679
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    iget-object v6, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 684
    .line 685
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 686
    .line 687
    .line 688
    goto :goto_7

    .line 689
    :cond_11
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 690
    .line 691
    new-instance v5, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 692
    .line 693
    invoke-direct {v5, v4, v0}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 700
    .line 701
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getCollection_list()Ljava/util/List;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 706
    .line 707
    .line 708
    goto/16 :goto_0

    .line 709
    .line 710
    :cond_12
    const/4 v4, 0x7

    .line 711
    if-ne v2, v4, :cond_13

    .line 712
    .line 713
    if-eqz v3, :cond_1

    .line 714
    .line 715
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getAdvert_list()Ljava/util/List;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    if-eqz v2, :cond_1

    .line 720
    .line 721
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 722
    .line 723
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 724
    .line 725
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getAdvert_list()Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-direct {v4, v0, v3}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    goto/16 :goto_0

    .line 736
    .line 737
    :cond_13
    const/16 v0, 0xe

    .line 738
    .line 739
    if-ne v2, v0, :cond_1

    .line 740
    .line 741
    if-eqz v3, :cond_1

    .line 742
    .line 743
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    if-eqz v0, :cond_1

    .line 748
    .line 749
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    if-eqz v2, :cond_1

    .line 762
    .line 763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 768
    .line 769
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 774
    .line 775
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 776
    .line 777
    .line 778
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 779
    .line 780
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 781
    .line 782
    invoke-direct {v4, v5, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 789
    .line 790
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_8

    .line 794
    :cond_14
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 795
    .line 796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    if-eqz v0, :cond_15

    .line 805
    .line 806
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 811
    .line 812
    const/16 v1, 0xa8

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 818
    .line 819
    .line 820
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 821
    .line 822
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 823
    .line 824
    .line 825
    goto :goto_9

    .line 826
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 827
    .line 828
    if-eqz p1, :cond_16

    .line 829
    .line 830
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->datas:Ljava/util/List;

    .line 831
    .line 832
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t;->C(Ljava/util/List;)V

    .line 833
    .line 834
    .line 835
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 836
    .line 837
    new-instance v0, Lcom/join/mgps/activity/l0;

    .line 838
    .line 839
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/l0;-><init>(Lcom/join/mgps/activity/CollectionModuleSevenActivity;)V

    .line 840
    .line 841
    .line 842
    const-wide/16 v1, 0x1f4

    .line 843
    .line 844
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 845
    .line 846
    .line 847
    goto :goto_a

    .line 848
    :cond_17
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->showLodingFailed()V

    .line 849
    .line 850
    .line 851
    :goto_a
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSevenActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
