.class public Lcom/join/mgps/activity/recomend/RecommendActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;,
        Lcom/join/mgps/activity/recomend/RecommendActivity$ClickSpan;,
        Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;,
        Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0809
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

.field allData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field enterGame:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isExposuring:Z

.field loadDataType:I

.field lodingImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pageBean:Lcom/join/mgps/dto/ExtBean;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field protocol:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protocolCheck:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recycleView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field selectedNumber:I

.field userProtocolTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->loadDataType:I

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "page"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "oneKeyDown"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "112"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->isExposuring:Z

    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/recomend/RecommendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->expGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private expGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->isExposuring:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget v3, v2, v0

    .line 16
    .line 17
    :goto_0
    aget v4, v2, v1

    .line 18
    .line 19
    if-gt v3, v4, :cond_1

    .line 20
    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getViewType()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ne v5, v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->isExposuring:Z

    .line 104
    .line 105
    throw v1

    .line 106
    :catch_0
    :cond_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->isExposuring:Z

    .line 107
    .line 108
    return-void
.end method

.method public static sortIntMethod(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecommendActivity$5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/RecommendActivity$5;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private updateGameUi(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Lcom/join/mgps/activity/recomend/RecommendBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imag",
            "appname",
            "recommendBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f080caf

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 8
    .line 9
    const v1, 0x7f080676

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 33
    .line 34
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivity$1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivity$1;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->adapter:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->getData()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 76
    .line 77
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/u;->x(Z)V

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivity$2;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivity$2;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method delayRequest()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->getData()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method down()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->downv2(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method downv2(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyDownNet"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v2}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "7"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->sortIntMethod(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v1, 0x5dc

    .line 88
    .line 89
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 98
    .line 99
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "count"

    .line 109
    .line 110
    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    const-string v2, "games"

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 160
    .line 161
    new-instance v3, Lcom/join/mgps/dto/ExtBean;

    .line 162
    .line 163
    invoke-direct {v3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v4, "oneKeyDown"

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    const-string v4, "112"

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const-string v4, "btnOneKey"

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_7

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/16 v2, 0x70

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 226
    .line 227
    .line 228
    const-wide/16 v2, 0x3e8

    .line 229
    .line 230
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :catch_2
    move-exception v2

    .line 235
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    :goto_4
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-string v2, "oneKey"

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    if-eqz v2, :cond_5

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_6

    .line 298
    .line 299
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {v2, v0}, Lcom/join/android/app/common/http/PointSendUtile;->sendPoint(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_6
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 305
    .line 306
    invoke-static {v2}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    const-string v3, "gameDownloadDetail"

    .line 311
    .line 312
    invoke-virtual {v2, v3, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 317
    .line 318
    const-string v2, "_from"

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v0, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 329
    .line 330
    const-string v2, "_from_type"

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    invoke-virtual {v0, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 341
    .line 342
    const-string v2, "ext"

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadPointBase;->getExt()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 353
    .line 354
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 355
    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :cond_7
    :goto_5
    return-void
.end method

.method enterGame()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, "   "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/pref/b;->F(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_d

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_c

    .line 32
    .line 33
    iget v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 42
    .line 43
    .line 44
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    const/4 v3, 0x2

    .line 46
    const-string v4, ""

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v1, :cond_9

    .line 50
    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v7, v4

    .line 58
    const/4 v6, 0x0

    .line 59
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_8

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-ne v9, v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_3

    .line 86
    .line 87
    const-string v7, "VIRTUAL_SINGLE"

    .line 88
    .line 89
    :cond_3
    const-string v8, "7"

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const-string v7, "ANDROID_SINGLE"

    .line 112
    .line 113
    const/4 v8, 0x1

    .line 114
    :goto_0
    if-nez v8, :cond_7

    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_5

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    :goto_1
    if-eqz v8, :cond_7

    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->f2(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-ne v6, v3, :cond_6

    .line 155
    .line 156
    const-string v6, "SO_SIMULATOR"

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    const-string v6, "RAW_SIMULATOR"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    :goto_2
    move-object v7, v6

    .line 162
    :cond_7
    move v6, v8

    .line 163
    if-eqz v6, :cond_2

    .line 164
    .line 165
    :cond_8
    move v5, v6

    .line 166
    goto :goto_3

    .line 167
    :cond_9
    move-object v7, v4

    .line 168
    :goto_3
    :try_start_2
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 171
    .line 172
    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    sget-object v6, Lcom/MApplication;->K:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-class v2, Ljava/util/List;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/util/List;

    .line 221
    .line 222
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_a

    .line 229
    .line 230
    sget-object v1, Lcom/MApplication;->K:Ljava/lang/String;

    .line 231
    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    if-eqz v5, :cond_a

    .line 239
    .line 240
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 247
    .line 248
    .line 249
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    if-eqz v0, :cond_a

    .line 251
    .line 252
    return-void

    .line 253
    :catch_0
    :cond_a
    :try_start_3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 256
    .line 257
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Ljava/lang/Boolean;

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v5, :cond_b

    .line 275
    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 279
    .line 280
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivity$4;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivity$4;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v0, v3, v4, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->down()V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    const v0, 0x8627

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :catch_1
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    :goto_4
    return-void

    .line 327
    :cond_c
    :goto_5
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 332
    .line 333
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 334
    .line 335
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v3, "oneKeyDown"

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    const-string v3, "112"

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const-string v3, "btnEnter"

    .line 351
    .line 352
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 368
    .line 369
    .line 370
    :cond_d
    :goto_6
    return-void
.end method

.method finishActivit()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x8627

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method getData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/dto/RecommendArgs;

    .line 13
    .line 14
    iget v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->loadDataType:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/dto/RecommendArgs;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->C(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    :goto_1
    and-int v1, v2, v3

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/mgps/activity/recomend/RecommendDataBean;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getUser_protocol()Lcom/join/mgps/activity/recomend/UserProtocolBean;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/recomend/RecommendActivity;->updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->delayRequest()V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->finishActivit()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->delayRequest()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->delayRequest()V

    .line 90
    .line 91
    .line 92
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->delayRequest()V

    .line 103
    .line 104
    .line 105
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\u8bf7\u91cd\u8bd5"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->showToast(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x8627

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method protocolCheckPlaceholder()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->refreshEnterGame()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method refreshEnterGame()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocolCheck:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "\u83b7\u53d6 \uff08"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "\u6b3e\u6e38\u620f\uff09"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 44
    .line 45
    const v1, 0x7f08044b

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x7f080676

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v1, "\u8fdb\u5165\u5e94\u7528"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "protocol"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocol:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v2, Landroid/text/SpannableString;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getTxt()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/join/mgps/activity/recomend/RecommendActivity$ClickSpan;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-direct {v3, v4}, Lcom/join/mgps/activity/recomend/RecommendActivity$ClickSpan;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl_txt()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-int/2addr v4, p2

    .line 42
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/16 v5, 0x11

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4, p2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->userProtocolTxt:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->userProtocolTxt:Landroid/widget/TextView;

    .line 57
    .line 58
    new-instance v2, Lcom/join/mgps/Util/d0;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/join/mgps/Util/d0;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p2

    .line 68
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->protocol:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 78
    .line 79
    const v2, 0x7f08044b

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v2, "_"

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    if-eqz p2, :cond_1

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-nez p2, :cond_1

    .line 113
    .line 114
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 115
    .line 116
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->getTag()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const/4 v4, 0x0

    .line 147
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_1

    .line 152
    .line 153
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 158
    .line 159
    invoke-virtual {v5, v3}, Lcom/join/mgps/activity/recomend/RecommendBean;->setViewType(I)V

    .line 160
    .line 161
    .line 162
    div-int/lit8 v6, v4, 0x4

    .line 163
    .line 164
    rem-int/lit8 v7, v4, 0x4

    .line 165
    .line 166
    add-int/2addr v4, v3

    .line 167
    new-instance v8, Lcom/join/mgps/dto/ExtBean;

    .line 168
    .line 169
    invoke-direct {v8}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    check-cast v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/join/mgps/activity/recomend/RecommendBean;->getTag()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    add-int/2addr v6, v3

    .line 196
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    add-int/2addr v7, v3

    .line 203
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v5, v6}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 215
    .line 216
    .line 217
    iget-object v6, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    if-eqz p2, :cond_2

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    if-eqz p2, :cond_2

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-nez p2, :cond_2

    .line 252
    .line 253
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 254
    .line 255
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    const/4 v4, 0x0

    .line 284
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_2

    .line 289
    .line 290
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 295
    .line 296
    div-int/lit8 v6, v4, 0x4

    .line 297
    .line 298
    rem-int/lit8 v7, v4, 0x4

    .line 299
    .line 300
    add-int/2addr v4, v3

    .line 301
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 302
    .line 303
    new-instance v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 304
    .line 305
    invoke-direct {v9, v3, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILcom/join/mgps/dto/AppBean;)V

    .line 306
    .line 307
    .line 308
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    .line 309
    .line 310
    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v5, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    add-int/2addr v6, v3

    .line 331
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    add-int/2addr v7, v3

    .line 338
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v9, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    if-eqz p2, :cond_3

    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    if-eqz p2, :cond_3

    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result p2

    .line 385
    if-nez p2, :cond_3

    .line 386
    .line 387
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 388
    .line 389
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    const/4 v4, 0x0

    .line 418
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_3

    .line 423
    .line 424
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 429
    .line 430
    div-int/lit8 v6, v4, 0x4

    .line 431
    .line 432
    rem-int/lit8 v7, v4, 0x4

    .line 433
    .line 434
    add-int/2addr v4, v3

    .line 435
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 436
    .line 437
    new-instance v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 438
    .line 439
    invoke-direct {v9, v3, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILcom/join/mgps/dto/AppBean;)V

    .line 440
    .line 441
    .line 442
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    .line 443
    .line 444
    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    invoke-virtual {v5, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    new-instance v10, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    add-int/2addr v6, v3

    .line 465
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    add-int/2addr v7, v3

    .line 472
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-virtual {v9, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_3

    .line 491
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 492
    .line 493
    .line 494
    move-result-object p2

    .line 495
    if-eqz p2, :cond_4

    .line 496
    .line 497
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 498
    .line 499
    .line 500
    move-result-object p2

    .line 501
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    if-eqz p2, :cond_4

    .line 506
    .line 507
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 512
    .line 513
    .line 514
    move-result-object p2

    .line 515
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 516
    .line 517
    .line 518
    move-result p2

    .line 519
    if-nez p2, :cond_4

    .line 520
    .line 521
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 522
    .line 523
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 524
    .line 525
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object p2

    .line 547
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    const/4 v4, 0x0

    .line 552
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_4

    .line 557
    .line 558
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 563
    .line 564
    div-int/lit8 v6, v4, 0x4

    .line 565
    .line 566
    rem-int/lit8 v7, v4, 0x4

    .line 567
    .line 568
    add-int/2addr v4, v3

    .line 569
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 570
    .line 571
    new-instance v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 572
    .line 573
    invoke-direct {v9, v3, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILcom/join/mgps/dto/AppBean;)V

    .line 574
    .line 575
    .line 576
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    .line 577
    .line 578
    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    invoke-virtual {v5, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    new-instance v10, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    add-int/2addr v6, v3

    .line 599
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    add-int/2addr v7, v3

    .line 606
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {v9, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    goto :goto_4

    .line 625
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 626
    .line 627
    .line 628
    move-result-object p2

    .line 629
    if-eqz p2, :cond_5

    .line 630
    .line 631
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 636
    .line 637
    .line 638
    move-result-object p2

    .line 639
    if-eqz p2, :cond_5

    .line 640
    .line 641
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 642
    .line 643
    .line 644
    move-result-object p2

    .line 645
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 646
    .line 647
    .line 648
    move-result-object p2

    .line 649
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 650
    .line 651
    .line 652
    move-result p2

    .line 653
    if-nez p2, :cond_5

    .line 654
    .line 655
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 656
    .line 657
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 658
    .line 659
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 678
    .line 679
    .line 680
    move-result-object p2

    .line 681
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object p2

    .line 685
    const/4 v4, 0x0

    .line 686
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    if-eqz v5, :cond_5

    .line 691
    .line 692
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 697
    .line 698
    div-int/lit8 v6, v4, 0x4

    .line 699
    .line 700
    rem-int/lit8 v7, v4, 0x4

    .line 701
    .line 702
    add-int/2addr v4, v3

    .line 703
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 704
    .line 705
    new-instance v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 706
    .line 707
    invoke-direct {v9, v3, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILcom/join/mgps/dto/AppBean;)V

    .line 708
    .line 709
    .line 710
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    .line 711
    .line 712
    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 716
    .line 717
    .line 718
    move-result-object v10

    .line 719
    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v10

    .line 723
    invoke-virtual {v5, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    new-instance v10, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    add-int/2addr v6, v3

    .line 733
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    add-int/2addr v7, v3

    .line 740
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    invoke-virtual {v9, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    goto :goto_5

    .line 759
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 760
    .line 761
    .line 762
    move-result-object p2

    .line 763
    if-eqz p2, :cond_6

    .line 764
    .line 765
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 766
    .line 767
    .line 768
    move-result-object p2

    .line 769
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 770
    .line 771
    .line 772
    move-result-object p2

    .line 773
    if-eqz p2, :cond_6

    .line 774
    .line 775
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 780
    .line 781
    .line 782
    move-result-object p2

    .line 783
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 784
    .line 785
    .line 786
    move-result p2

    .line 787
    if-nez p2, :cond_6

    .line 788
    .line 789
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 790
    .line 791
    new-instance v4, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 792
    .line 793
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    invoke-virtual {v5}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    invoke-direct {v4, v1, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILjava/lang/String;)V

    .line 802
    .line 803
    .line 804
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 808
    .line 809
    .line 810
    move-result-object p2

    .line 811
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    .line 812
    .line 813
    .line 814
    move-result-object p2

    .line 815
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 816
    .line 817
    .line 818
    move-result-object p2

    .line 819
    const/4 v4, 0x0

    .line 820
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    if-eqz v5, :cond_6

    .line 825
    .line 826
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 831
    .line 832
    div-int/lit8 v6, v4, 0x4

    .line 833
    .line 834
    rem-int/lit8 v7, v4, 0x4

    .line 835
    .line 836
    add-int/2addr v4, v3

    .line 837
    iget-object v8, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 838
    .line 839
    new-instance v9, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 840
    .line 841
    invoke-direct {v9, v3, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;-><init>(ILcom/join/mgps/dto/AppBean;)V

    .line 842
    .line 843
    .line 844
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    .line 845
    .line 846
    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 847
    .line 848
    .line 849
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 850
    .line 851
    .line 852
    move-result-object v10

    .line 853
    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v10

    .line 857
    invoke-virtual {v5, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    new-instance v10, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .line 865
    .line 866
    add-int/2addr v6, v3

    .line 867
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    add-int/2addr v7, v3

    .line 874
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v6

    .line 881
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 882
    .line 883
    .line 884
    move-result-object v5

    .line 885
    invoke-virtual {v9, v5}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    goto :goto_6

    .line 893
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 894
    .line 895
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 896
    .line 897
    .line 898
    move-result p1

    .line 899
    if-nez p1, :cond_7

    .line 900
    .line 901
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->lodingImg:Landroid/widget/ImageView;

    .line 902
    .line 903
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    .line 905
    .line 906
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 907
    .line 908
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    .line 910
    .line 911
    goto :goto_7

    .line 912
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->delayRequest()V

    .line 913
    .line 914
    .line 915
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 916
    .line 917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 922
    .line 923
    .line 924
    move-result p2

    .line 925
    if-eqz p2, :cond_9

    .line 926
    .line 927
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object p2

    .line 931
    check-cast p2, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 932
    .line 933
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 934
    .line 935
    .line 936
    move-result p2

    .line 937
    if-ne p2, v3, :cond_8

    .line 938
    .line 939
    iget p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 940
    .line 941
    add-int/2addr p2, v3

    .line 942
    iput p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 943
    .line 944
    goto :goto_8

    .line 945
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivity;->refreshEnterGame()V

    .line 946
    .line 947
    .line 948
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->adapter:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 949
    .line 950
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 951
    .line 952
    .line 953
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 954
    .line 955
    new-instance p2, Lcom/join/mgps/activity/recomend/RecommendActivity$3;

    .line 956
    .line 957
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/recomend/RecommendActivity$3;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V

    .line 958
    .line 959
    .line 960
    const-wide/16 v0, 0x1f4

    .line 961
    .line 962
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 963
    .line 964
    .line 965
    return-void
.end method
