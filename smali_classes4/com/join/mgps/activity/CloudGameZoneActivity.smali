.class public Lcom/join/mgps/activity/CloudGameZoneActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0032
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudGameZoneActivity"


# instance fields
.field private SCROLLING:Z

.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private accountClientV2:Lcom/join/mgps/rpc/c;

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

.field cl_recent_games:Landroidx/constraintlayout/widget/ConstraintLayout;
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

.field isSign:Z

.field iv_btn_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mHanler:Landroid/os/Handler;

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private recentGameAdapter:Lcom/join/mgps/adapter/j;

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_list:Landroidx/recyclerview/widget/RecyclerView;
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
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->SCROLLING:Z

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
    iput-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    new-instance v1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->mHanler:Landroid/os/Handler;

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isSign:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isExposuring:Z

    .line 54
    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CloudGameZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CloudGameZoneActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/CloudGameZoneActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/CloudGameZoneActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/CloudGameZoneActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->mHanler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/CloudGameZoneActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private expDiscountGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isExposuring:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v7, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isExposuring:Z

    .line 153
    .line 154
    throw v1

    .line 155
    :catch_1
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isExposuring:Z

    .line 156
    .line 157
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/CloudGameZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$updateData$5()V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/CloudGameZoneActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$showSignDialog$3()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$afterviews$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterviews$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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

.method private synthetic lambda$showSignDialog$2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "cld_"

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p0, p1, v0}, Lcom/join/mgps/Util/w0;->s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    return-object p1
.end method

.method private synthetic lambda$showSignDialog$3()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->refreshUserCenter()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$showSignDialog$4()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$updateData$5()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->autoPlay()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->expDiscountGame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$updateUserInfo$1(Lcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CloudGameZoneActivity;->checkSign(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    sget-object p2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameZone:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    sget-object p2, Lcom/papa/sim/statistic/EventP$TypeCode;->btnSign:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    const-string p2, "\u65e5\u7b7e"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$showSignDialog$2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$showSignDialog$4()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/CloudGameZoneActivity;->lambda$updateUserInfo$1(Lcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V

    return-void
.end method

.method private openWebPage(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCfgInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/join/mgps/rpc/h;->U:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "isVip"

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    const-string v4, "?"

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "&currentDay="

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const-string v4, "="

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "&isVip="

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "?isVip="

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string p1, "intentdate"

    .line 130
    .line 131
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 137
    .line 138
    .line 139
    sget-object v1, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object v1, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v1, "parentExtBean"

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance v1, Lcom/join/mgps/activity/CloudGameZoneActivity$b;

    .line 183
    .line 184
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudGameZoneActivity$b;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    .line 185
    .line 186
    .line 187
    const-class v2, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 188
    .line 189
    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 190
    .line 191
    .line 192
    :cond_2
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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->notifyDataSetChanged()V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->notifyDataSetChanged()V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->notifyDataSetChanged()V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private updateDownStateList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    .locals 15

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    if-ltz v0, :cond_a

    .line 4
    .line 5
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->lastVisibleIndex:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_a

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItemType()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const v3, 0x7f0a054e

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v2, v4, :cond_8

    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    const/16 v6, 0xc

    .line 47
    .line 48
    if-eq v2, v5, :cond_5

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    if-eq v2, v5, :cond_1

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/util/List;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ge v2, v5, :cond_9

    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eq v7, v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-ne v7, v6, :cond_4

    .line 91
    .line 92
    :cond_2
    iget-object v7, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    iget v8, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->firstVisiblePosition:I

    .line 95
    .line 96
    sub-int v8, v0, v8

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    iget-object v8, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    instance-of v8, v7, Lcom/join/mgps/base/b;

    .line 111
    .line 112
    if-eqz v8, :cond_4

    .line 113
    .line 114
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v8, v5}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_3

    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    check-cast v7, Lcom/join/mgps/base/b;

    .line 130
    .line 131
    const v8, 0x7f0a1345

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    if-eqz v7, :cond_4

    .line 141
    .line 142
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_4

    .line 151
    .line 152
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Lcom/join/mgps/customview/DownloadNormalView;

    .line 157
    .line 158
    if-eqz v7, :cond_4

    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-ne v8, v4, :cond_4

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 167
    .line 168
    .line 169
    move-result-wide v8

    .line 170
    invoke-virtual {v7, v8, v9}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_0
    move-exception v5

    .line 175
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    iget v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->firstVisiblePosition:I

    .line 190
    .line 191
    sub-int v3, v0, v3

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v2, :cond_9

    .line 198
    .line 199
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    instance-of v3, v2, Lcom/join/mgps/base/b;

    .line 206
    .line 207
    if-eqz v3, :cond_9

    .line 208
    .line 209
    check-cast v2, Lcom/join/mgps/base/b;

    .line 210
    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_9

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v3, v5}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 242
    .line 243
    .line 244
    move-result-wide v7

    .line 245
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 246
    .line 247
    mul-double v7, v7, v9

    .line 248
    .line 249
    mul-double v7, v7, v9

    .line 250
    .line 251
    double-to-long v7, v7

    .line 252
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 253
    .line 254
    .line 255
    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    const-wide/16 v11, 0x0

    .line 257
    .line 258
    const-string v5, "/"

    .line 259
    .line 260
    const v13, 0x7f0a00f7

    .line 261
    .line 262
    .line 263
    cmp-long v14, v9, v11

    .line 264
    .line 265
    if-nez v14, :cond_6

    .line 266
    .line 267
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 273
    .line 274
    .line 275
    move-result-wide v10

    .line 276
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v2, v13, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 307
    .line 308
    .line 309
    move-result-wide v10

    .line 310
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v2, v13, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 332
    .line 333
    .line 334
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-ne v5, v6, :cond_7

    .line 339
    .line 340
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 341
    .line 342
    .line 343
    move-result-wide v5

    .line 344
    long-to-int v6, v5

    .line 345
    const v5, 0x7f0a12a5

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/base/b;->setProgress(II)Lcom/join/mgps/base/b;

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 353
    .line 354
    .line 355
    move-result-wide v5

    .line 356
    long-to-int v6, v5

    .line 357
    const v5, 0x7f0a129e

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v5, v6}, Lcom/join/mgps/base/b;->setProgress(II)Lcom/join/mgps/base/b;

    .line 361
    .line 362
    .line 363
    :goto_4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-ne v1, v4, :cond_9

    .line 368
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v3, "/S"

    .line 382
    .line 383
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    const v3, 0x7f0a0f94

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :catch_1
    move-exception v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_8
    :try_start_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 407
    .line 408
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 409
    .line 410
    iget v5, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->firstVisiblePosition:I

    .line 411
    .line 412
    sub-int v5, v0, v5

    .line 413
    .line 414
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    if-eqz v2, :cond_9

    .line 419
    .line 420
    iget-object v5, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 421
    .line 422
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    instance-of v5, v2, Lcom/join/mgps/base/b;

    .line 427
    .line 428
    if-eqz v5, :cond_9

    .line 429
    .line 430
    check-cast v2, Lcom/join/mgps/base/b;

    .line 431
    .line 432
    if-eqz v1, :cond_9

    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    if-eqz v5, :cond_9

    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-virtual {v5, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    if-eqz v1, :cond_9

    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-ne v5, v4, :cond_9

    .line 463
    .line 464
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    check-cast v2, Lcom/join/mgps/customview/DownloadNormalView;

    .line 469
    .line 470
    if-eqz v2, :cond_9

    .line 471
    .line 472
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 473
    .line 474
    .line 475
    move-result-wide v3

    .line 476
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 477
    .line 478
    .line 479
    goto :goto_5

    .line 480
    :catch_2
    move-exception v1

    .line 481
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 482
    .line 483
    .line 484
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :cond_a
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->templateId:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showMessage(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    const-string v2, "PapaMainV3Fragment"

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/adapter/t;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/t;-><init>(Ljava/util/List;Lcom/join/android/app/component/video/h;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/b0;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/b0;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->checkSign(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/activity/CloudGameZoneActivity$a;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudGameZoneActivity$a;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->getData()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->recentGameAdapter:Lcom/join/mgps/adapter/j;

    .line 108
    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/adapter/j;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/join/mgps/adapter/j;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->recentGameAdapter:Lcom/join/mgps/adapter/j;

    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->recentGameAdapter:Lcom/join/mgps/adapter/j;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->getTopGameData()V

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method autoPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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

.method checkSign(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proactive"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 53
    .line 54
    .line 55
    sget-object v3, Lcom/wufan/user/service/protobuf/enumeration/SceneType;->CLOUD_GAMING_SIGN_BTN:Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSceneType(Lcom/wufan/user/service/protobuf/enumeration/SceneType;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 65
    .line 66
    .line 67
    new-instance v3, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "uid"

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, ""

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v4, "token"

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getToken()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v4, "sceneType"

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getSceneType()Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v4, "appVersion"

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/c;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getError()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    const/16 v4, 0xc8

    .line 153
    .line 154
    if-ne v3, v4, :cond_1

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    if-eqz p1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_2
    if-eqz p1, :cond_4

    .line 171
    .line 172
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    if-eqz p1, :cond_4

    .line 181
    .line 182
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    if-eqz p1, :cond_4

    .line 187
    .line 188
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_0
    return-void

    .line 192
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 193
    .line 194
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 195
    .line 196
    .line 197
    :cond_6
    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLoding()V

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
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->templateId:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLodingFailed()V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLodingFailed()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showMessage(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLodingFailed()V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method getTopGameData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/dto/RequestMiniGameArgs;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestMiniGameArgs;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/Util/r0;->o0(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setUid(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->O(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->setTopGameValue(Lcom/join/mgps/dto/ResponseModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public onAccountChangeEvent(Lcom/join/mgps/event/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->mHanler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 22
    .line 23
    .line 24
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
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->SCROLLING:Z

    .line 51
    .line 52
    if-nez v0, :cond_6

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateProgressPartly()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->videoHelper:Lcom/join/android/app/component/video/h;

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

.method public refreshUserCenter()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->reload()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->getData()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setTopGameValue(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/H5GameDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/dto/H5GameDataBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/H5GameDataBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->cl_recent_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/join/mgps/dto/H5GameDataBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameZone:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "\u6700\u8fd1\u5728\u73a9"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    .line 90
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->recentGameAdapter:Lcom/join/mgps/adapter/j;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/join/mgps/dto/H5GameDataBean;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/H5GameDataBean;->getTop_game_list()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->cl_recent_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->cl_recent_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCfgInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    return-void
.end method

.method showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adCfgInfo",
            "proactive"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getShowOldMember()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameOldUserDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    new-instance v2, Lcom/join/mgps/activity/z;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/z;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showCloudGameSignTip(Landroid/content/Context;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lcom/join/mgps/dto/ExtBean;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLastLaunchCloudGameIfNeeded()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsSigned()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->openWebPage(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->sign()V

    :goto_0
    return-void
.end method

.method showLastLaunchCloudGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cld_"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->continuePlayCloudGamePop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 39
    .line 40
    new-instance v3, Lcom/join/mgps/activity/CloudGameZoneActivity$c;

    .line 41
    .line 42
    invoke-direct {v3, p0, p1, v1, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity$c;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/ExtBean;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "#90000000"

    .line 49
    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v2, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->C2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->popup:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method showLastLaunchCloudGameIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameTipTime()Lorg/androidannotations/api/sharedpreferences/k;

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
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLastLaunchCloudGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchCloudGameTipTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->context:Landroid/content/Context;

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

.method showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalTime",
            "freeTime",
            "vipTime"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 2
    .line 3
    new-instance v5, Lcom/join/mgps/activity/w;

    .line 4
    .line 5
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/w;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    .line 6
    .line 7
    .line 8
    new-instance v6, Lcom/join/mgps/activity/x;

    .line 9
    .line 10
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/x;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/join/mgps/activity/y;

    .line 14
    .line 15
    invoke-direct {v7}, Lcom/join/mgps/activity/y;-><init>()V

    .line 16
    .line 17
    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showSignDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method sign()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isSign:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v0, "\u4eca\u65e5\u5df2\u7b7e,\u660e\u65e5\u518d\u6765\u5427~"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/o;->F3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isSign:Z

    .line 38
    .line 39
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "517_6.1.7.0"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getUid()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ""

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "uid"

    .line 101
    .line 102
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v3, "token"

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getToken()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string v3, "appVersion"

    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->l(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->isSign:Z

    .line 141
    .line 142
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showMain()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->title_textview:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->templateId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v5, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 271
    .line 272
    .line 273
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v7, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 331
    .line 332
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 333
    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 390
    .line 391
    .line 392
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v6, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 461
    .line 462
    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 463
    .line 464
    .line 465
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 517
    .line 518
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 519
    .line 520
    .line 521
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v5, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 572
    .line 573
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 574
    .line 575
    .line 576
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 630
    .line 631
    .line 632
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v6, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 684
    .line 685
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 686
    .line 687
    .line 688
    goto :goto_7

    .line 689
    :cond_11
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 774
    .line 775
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 776
    .line 777
    .line 778
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 789
    .line 790
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_8

    .line 794
    :cond_14
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->allDownloadAppHomeBeans:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->sevenAdapter:Lcom/join/mgps/adapter/t;

    .line 827
    .line 828
    if-eqz p1, :cond_16

    .line 829
    .line 830
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->datas:Ljava/util/List;

    .line 831
    .line 832
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t;->C(Ljava/util/List;)V

    .line 833
    .line 834
    .line 835
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->breakListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 836
    .line 837
    new-instance v0, Lcom/join/mgps/activity/v;

    .line 838
    .line 839
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/v;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showLodingFailed()V

    .line 849
    .line 850
    .line 851
    :goto_a
    return-void
.end method

.method updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u7b7e\u5230\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getError()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0xc8

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getTotalTime()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getFreeTime()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getVipTime()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p0, v0, v2, v3}, Lcom/join/mgps/activity/CloudGameZoneActivity;->showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    const-string v2, "total"

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getTotalTime()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v2, "dailySign"

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getFreeTime()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string v2, "cloudGameVipSign"

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getVipTime()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    move-object v1, p1

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_0
    const/4 p1, 0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    const/4 p1, 0x0

    .line 106
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    sget-object p1, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    sget-object p1, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 128
    .line 129
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 156
    .line 157
    .line 158
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->iv_btn_1:Landroid/widget/ImageView;

    .line 12
    .line 13
    const v1, 0x7f080271

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->iv_btn_1:Landroid/widget/ImageView;

    .line 21
    .line 22
    const v1, 0x7f080270

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameZoneActivity;->iv_btn_1:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/activity/a0;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/a0;-><init>(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/wufan/user/service/protobuf/NewMemberInfo;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
