.class public Lcom/join/mgps/activity/recomend/RecommendActivityV1;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/RecommendActivityV1$ClickSpan;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d080a
.end annotation


# instance fields
.field private SCROLLING:Z

.field allData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field

.field private firstVisiblePosition:I

.field g_1:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MultiRecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

.field private isExposuring:Z

.field iv_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_btn_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_btn_2:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field lav_p_view:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lav_view:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_container:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadDataType:I

.field loadSir:Lcom/kingja/loadsir/core/b;

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

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_game:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rv_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selectedNumber:I

.field private showGame:Z

.field topGameAdapter:Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

.field tv_text_3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userProtocolTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v_status:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->loadDataType:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lastVisibleIndex:I

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->firstVisiblePosition:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->showGame:Z

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "112"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "page"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "oneKeyDown"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->SCROLLING:Z

    .line 47
    .line 48
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->isExposuring:Z

    .line 51
    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/recomend/RecommendActivityV1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/recomend/RecommendActivityV1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->showGame:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->showGame:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->expGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private animClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->animView()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private animView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    const v2, 0x461c4000    # 10000.0f

    .line 14
    .line 15
    .line 16
    mul-float v0, v0, v2

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    new-array v1, v1, [F

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    const-string v2, "rotationY"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-wide/16 v1, 0x370

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$3;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private expGame()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->isExposuring:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    aget v4, v2, v0

    .line 21
    .line 22
    :goto_0
    aget v5, v2, v1

    .line 23
    .line 24
    if-gt v4, v5, :cond_2

    .line 25
    .line 26
    iget-object v5, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/join/mgps/dto/MultiRecommendBean;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/MultiRecommendBean;->getViewType()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x3

    .line 39
    if-ne v6, v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    iget-object v6, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    aget v7, v2, v0

    .line 66
    .line 67
    sub-int v7, v4, v7

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    iget-object v6, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iget-object v9, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v6, v7, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {v5}, Lcom/join/mgps/dto/MultiRecommendBean;->getViewType()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const/4 v7, 0x2

    .line 131
    if-ne v6, v7, :cond_1

    .line 132
    .line 133
    iget-object v6, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    aget v7, v2, v0

    .line 136
    .line 137
    sub-int v7, v4, v7

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-eqz v6, :cond_1

    .line 144
    .line 145
    invoke-virtual {v6, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_1

    .line 150
    .line 151
    const v7, 0x7f0a145c

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    if-eqz v6, :cond_1

    .line 161
    .line 162
    invoke-virtual {v6, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_1

    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Ljava/util/List;

    .line 173
    .line 174
    iget-object v7, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 175
    .line 176
    invoke-virtual {v7, v6, v5}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;->expGame(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :catchall_0
    move-exception v1

    .line 184
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->isExposuring:Z

    .line 185
    .line 186
    throw v1

    .line 187
    :catch_0
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->isExposuring:Z

    .line 188
    .line 189
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$364e49b8$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$0()V

    return-void
.end method

.method private synthetic lambda$afterView$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    const-class v1, Lcom/join/kotlin/base/widget/loadCallBack/LoadingCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/b;->g(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$afterView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->animClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterView$2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->animClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterView$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/RecommendBean;->setIs_select(I)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 19
    .line 20
    sub-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/recomend/RecommendBean;->setIs_select(I)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 28
    .line 29
    add-int/2addr p1, v0

    .line 30
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->topGameAdapter:Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->refreshEnterGame()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private synthetic lambda$afterView$364e49b8$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterView$4(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/activity/recomend/RecommendActivityV1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lambda$afterView$3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateDownStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateListPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    :try_start_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateDownStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateListPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateDownStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateListPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateDownStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateListPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lcom/join/mgps/activity/recomend/RecommendActivityV1$7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$7;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private updateDownStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 18
    .line 19
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
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

.method private updateListPartly(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
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
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/mgps/dto/MultiRecommendBean;

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/MultiRecommendBean;->getItemType()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x3

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/join/mgps/dto/AppBean;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/MultiRecommendBean;->getItemType()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x2

    .line 63
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    instance-of v4, v3, Lv2/a;

    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    .line 85
    const v4, 0x7f0a145c

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    invoke-static {v3}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/util/List;

    .line 105
    .line 106
    aget v5, v4, v0

    .line 107
    .line 108
    :goto_1
    const/4 v6, 0x1

    .line 109
    aget v6, v4, v6

    .line 110
    .line 111
    if-gt v5, v6, :cond_3

    .line 112
    .line 113
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lcom/join/mgps/dto/AppBean;

    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_2

    .line 132
    .line 133
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 138
    .line 139
    .line 140
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_4
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_a

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/dto/MultiRecommendBean;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/MultiRecommendBean;->getItemType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x3

    .line 24
    const/16 v4, 0xc

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-ne v2, v3, :cond_5

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_9

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eq v2, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v2, v4, :cond_9

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    iget v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->firstVisiblePosition:I

    .line 56
    .line 57
    sub-int v3, v0, v3

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_9

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    instance-of v3, v2, Lv2/a;

    .line 72
    .line 73
    if-eqz v3, :cond_9

    .line 74
    .line 75
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v3, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    check-cast v2, Lv2/a;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 101
    .line 102
    mul-double v6, v6, v8

    .line 103
    .line 104
    mul-double v6, v6, v8

    .line 105
    .line 106
    double-to-long v6, v6

    .line 107
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 108
    .line 109
    .line 110
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const-wide/16 v10, 0x0

    .line 112
    .line 113
    const-string v12, "/"

    .line 114
    .line 115
    cmp-long v13, v8, v10

    .line 116
    .line 117
    if-nez v13, :cond_3

    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 124
    .line 125
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 126
    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 133
    .line 134
    .line 135
    move-result-wide v10

    .line 136
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 166
    .line 167
    iget-object v8, v8, Lcom/join/android/app/mgsim/wufun/databinding/e50;->k:Landroid/widget/TextView;

    .line 168
    .line 169
    new-instance v9, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 175
    .line 176
    .line 177
    move-result-wide v10

    .line 178
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-ne v6, v4, :cond_4

    .line 207
    .line 208
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 213
    .line 214
    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/e50;->i:Landroid/widget/ProgressBar;

    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 217
    .line 218
    .line 219
    move-result-wide v6

    .line 220
    long-to-int v7, v6

    .line 221
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 230
    .line 231
    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/e50;->h:Landroid/widget/ProgressBar;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 234
    .line 235
    .line 236
    move-result-wide v6

    .line 237
    long-to-int v7, v6

    .line 238
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 239
    .line 240
    .line 241
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-ne v1, v5, :cond_9

    .line 246
    .line 247
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/e50;

    .line 252
    .line 253
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/e50;->g:Landroid/widget/TextView;

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v3, "/S"

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :catch_0
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/MultiRecommendBean;->getItemType()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-ne v2, v5, :cond_9

    .line 292
    .line 293
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 294
    .line 295
    iget v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->firstVisiblePosition:I

    .line 296
    .line 297
    sub-int v3, v0, v3

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    if-eqz v2, :cond_9

    .line 304
    .line 305
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 306
    .line 307
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    instance-of v3, v2, Lv2/a;

    .line 312
    .line 313
    if-eqz v3, :cond_9

    .line 314
    .line 315
    check-cast v2, Lv2/a;

    .line 316
    .line 317
    invoke-virtual {v2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/a50;

    .line 322
    .line 323
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/a50;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 324
    .line 325
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v1}, Lcom/join/mgps/dto/MultiRecommendBean;->getData()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Ljava/util/List;

    .line 334
    .line 335
    const/4 v6, 0x0

    .line 336
    aget v7, v3, v6

    .line 337
    .line 338
    :goto_3
    const/4 v8, 0x1

    .line 339
    aget v8, v3, v8

    .line 340
    .line 341
    if-gt v7, v8, :cond_9

    .line 342
    .line 343
    :try_start_2
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    check-cast v8, Lcom/join/mgps/dto/AppBean;

    .line 348
    .line 349
    invoke-virtual {v8}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    if-eqz v8, :cond_8

    .line 354
    .line 355
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    if-eq v9, v5, :cond_6

    .line 360
    .line 361
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    if-ne v9, v4, :cond_8

    .line 366
    .line 367
    :cond_6
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-virtual {v9, v8}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    if-nez v8, :cond_7

    .line 380
    .line 381
    return-void

    .line 382
    :cond_7
    aget v9, v3, v6

    .line 383
    .line 384
    sub-int v9, v7, v9

    .line 385
    .line 386
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    check-cast v9, Lv2/a;

    .line 395
    .line 396
    invoke-virtual {v9}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    check-cast v9, Lcom/join/android/app/mgsim/wufun/databinding/c50;

    .line 401
    .line 402
    iget-object v9, v9, Lcom/join/android/app/mgsim/wufun/databinding/c50;->b:Lcom/join/mgps/customview/DownloadNormalView;

    .line 403
    .line 404
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 405
    .line 406
    .line 407
    move-result-wide v10

    .line 408
    invoke-virtual {v9, v10, v11}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :catch_1
    move-exception v8

    .line 413
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    .line 415
    .line 416
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 417
    .line 418
    goto :goto_3

    .line 419
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_a
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
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/high16 v1, 0x4000000

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/kingja/loadsir/core/c;->c()Lcom/kingja/loadsir/core/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->ll_container:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    new-instance v2, Lcom/join/mgps/activity/recomend/b;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/recomend/b;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/kingja/loadsir/core/c;->e(Ljava/lang/Object;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/core/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->ll_container:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/activity/recomend/c;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/c;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->getData()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 80
    .line 81
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/Long;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/u;->x(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 159
    .line 160
    const-string v2, "lottie/recommend/rec_down.json"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_p_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 171
    .line 172
    const-string v1, "lottie/recommend/pointer.json"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_p_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 178
    .line 179
    const/4 v1, -0x1

    .line 180
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_p_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->cl_games:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 189
    .line 190
    new-instance v1, Lcom/join/mgps/activity/recomend/d;

    .line 191
    .line 192
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/d;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->lav_p_view:Lcom/airbnb/lottie/LottieAnimationView;

    .line 199
    .line 200
    new-instance v1, Lcom/join/mgps/activity/recomend/e;

    .line 201
    .line 202
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/e;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

    .line 209
    .line 210
    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->topGameAdapter:Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

    .line 214
    .line 215
    new-instance v1, Lcom/join/mgps/activity/recomend/f;

    .line 216
    .line 217
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/f;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->topGameAdapter:Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 233
    .line 234
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 235
    .line 236
    const/4 v3, 0x4

    .line 237
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 241
    .line 242
    .line 243
    invoke-static {p0}, Lcom/join/mgps/Util/n1;->d(Landroid/content/Context;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->v_status:Landroid/view/View;

    .line 248
    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    .line 255
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 256
    .line 257
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->v_status:Landroid/view/View;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->iv_btn_1:Landroid/widget/ImageView;

    .line 263
    .line 264
    new-instance v1, Lcom/join/mgps/activity/recomend/g;

    .line 265
    .line 266
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/g;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 273
    .line 274
    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 282
    .line 283
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    .line 297
    .line 298
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivityV1$1;

    .line 299
    .line 300
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$1;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 301
    .line 302
    .line 303
    const v2, 0x7f0a051d

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter/base/BaseQuickAdapter$b;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    .line 310
    .line 311
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;

    .line 312
    .line 313
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$2;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 317
    .line 318
    .line 319
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 324
    .line 325
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->pageBean:Lcom/join/mgps/dto/ExtBean;

    .line 326
    .line 327
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 336
    .line 337
    .line 338
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->getData()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downv2(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method downv2(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyDownNet"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

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
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

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
    invoke-static {v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->sortIntMethod(Ljava/util/List;)V

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
    iget v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

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
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    if-eqz v3, :cond_5

    .line 247
    .line 248
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 257
    .line 258
    invoke-static {v3}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_6

    .line 273
    .line 274
    iget-object v3, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 275
    .line 276
    invoke-static {v3, v2}, Lcom/join/android/app/common/http/PointSendUtile;->sendPoint(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecommendBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v3, "oneKey"

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v3, "gameDownloadDetail"

    .line 311
    .line 312
    invoke-virtual {v0, v3, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

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
        value = {
            0x7f0a037e
        }
    .end annotation

    .line 1
    const-string v0, "   "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

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
    iget v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->context:Landroid/content/Context;

    .line 279
    .line 280
    new-instance v1, Lcom/join/mgps/activity/recomend/RecommendActivityV1$6;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$6;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->down()V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->loadDataType:I

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
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rpcGameClient:Lcom/join/mgps/rpc/k;

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
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->delayRequest()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->finishActivit()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->delayRequest()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->delayRequest()V

    .line 90
    .line 91
    .line 92
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->showToast(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->delayRequest()V

    .line 103
    .line 104
    .line 105
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\u8bf7\u91cd\u8bd5"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->showToast(Ljava/lang/String;)V

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

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
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
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x30

    .line 29
    .line 30
    if-eq p1, v4, :cond_3

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 p1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->SCROLLING:Z

    .line 51
    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateProgressPartly()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_0
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->refreshEnterGame()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method refreshEnterGame()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocolCheck:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->tv_text_3:Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->iv_btn_2:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v1, 0x7f080328

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->iv_btn_2:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v1, 0x7f080329

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 59
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

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

.method updateUI(Lcom/join/mgps/activity/recomend/RecommendDataBean;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 12
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocol:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :try_start_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getTxt()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v2, Lcom/join/mgps/activity/recomend/RecommendActivityV1$ClickSpan;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$ClickSpan;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl_txt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v3, p2

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->userProtocolTxt:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->userProtocolTxt:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/Util/d0;

    invoke-direct {v1}, Lcom/join/mgps/Util/d0;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->protocol:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    const-string v1, "_"

    const-string v2, "oneKeyDown"

    const-string v3, "112"

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 13
    div-int/lit8 v7, v5, 0x4

    .line 14
    rem-int/lit8 v8, v5, 0x4

    add-int/2addr v5, v4

    .line 15
    new-instance v9, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v9}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v10, "\u7ae5\u5e74\u7ecf\u5178"

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v7, v4

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v4

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/join/mgps/activity/recomend/RecommendBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 16
    iget-object v7, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->topGameAdapter:Lcom/join/mgps/activity/recomend/adapter/TopGameAdapter;

    iget-object v5, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    invoke-virtual {p2, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    const-string v5, "1_"

    const/4 v6, 0x2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v7, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/AppBean;

    add-int/2addr v7, v4

    .line 21
    invoke-virtual {v8}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v9

    invoke-virtual {v8}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    iget-object v9, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v7, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    const/4 v7, 0x3

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v8, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/AppBean;

    add-int/2addr v8, v4

    .line 27
    invoke-virtual {v9}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    iget-object v10, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v11, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-direct {v11, v7, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v10, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 31
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v8, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/AppBean;

    add-int/2addr v8, v4

    .line 33
    invoke-virtual {v9}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    iget-object v10, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v8, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v8, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/AppBean;

    add-int/2addr v8, v4

    .line 39
    invoke-virtual {v9}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v10

    invoke-virtual {v9}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    iget-object v10, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v11, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-direct {v11, v7, v9}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v10, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 42
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v7}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBean;

    add-int/2addr v0, v4

    .line 45
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v7

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    iget-object v7, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->downloadList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 47
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/dto/MultiRecommendBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendDataBean;->getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendGroupBean;->getGame_list()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v6, p1}, Lcom/join/mgps/dto/MultiRecommendBean;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameListAdapter:Lcom/join/mgps/activity/recomend/adapter/GameListAdapter;

    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->gameList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->loadSir:Lcom/kingja/loadsir/core/b;

    invoke-virtual {p1}, Lcom/kingja/loadsir/core/b;->h()V

    goto :goto_7

    .line 51
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->delayRequest()V

    .line 52
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->allData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    move-result p2

    if-ne p2, v4, :cond_c

    .line 54
    iget p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->selectedNumber:I

    goto :goto_8

    .line 55
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->refreshEnterGame()V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/join/mgps/activity/recomend/RecommendActivityV1$4;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$4;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivityV1;->rv_game:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/join/mgps/activity/recomend/RecommendActivityV1$5;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/recomend/RecommendActivityV1$5;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivityV1;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
