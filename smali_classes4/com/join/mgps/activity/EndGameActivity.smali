.class public Lcom/join/mgps/activity/EndGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/EndGameActivity$k;,
        Lcom/join/mgps/activity/EndGameActivity$j;,
        Lcom/join/mgps/activity/EndGameActivity$i;,
        Lcom/join/mgps/activity/EndGameActivity$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0048
.end annotation


# instance fields
.field clGameSelect:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

.field createEndGame:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private currentSelectedGame:Lcom/join/mgps/dto/EndGameNameListBean;

.field private endGameAd:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private endGameNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameNameListBean;",
            ">;"
        }
    .end annotation
.end field

.field private endGameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field ext:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameListViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$h;

.field private gameNamePage:I

.field private gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

.field private gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

.field private gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

.field private gameTypePage:I

.field guideDialog:Lcom/join/mgps/dialog/e0;

.field private isExpand:Z

.field ivExpand:Landroid/widget/ImageView;
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

.field private mActivity:Landroid/app/Activity;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private rpcGameClient:Lcom/join/mgps/rpc/k;

.field rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field shadowMask:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vpGameList:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
    iput v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/EndGameActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$008(Lcom/join/mgps/activity/EndGameActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/EndGameActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/dto/EndGameNameListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->currentSelectedGame:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/dto/EndGameNameListBean;)Lcom/join/mgps/dto/EndGameNameListBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->currentSelectedGame:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/EndGameActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$508(Lcom/join/mgps/activity/EndGameActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/EndGameActivity;->lambda$afterviews$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterviews$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/EndGameTypeBean;

    .line 18
    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/EndGameTypeBean;->setSelected(Z)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->vpGameList:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x4000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x500

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-class v3, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 53
    .line 54
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->getEndGameConfig()V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_challenge_level()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v0, Lcom/google/gson/Gson;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->statubar:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->statubar:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->ivExpand:Landroid/widget/ImageView;

    .line 103
    .line 104
    iget-boolean v2, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    const v2, 0x7f080996

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const v2, 0x7f080997

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 125
    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->isEndgame_creation_switch()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :goto_2
    new-instance v0, Lcom/join/mgps/activity/EndGameActivity$i;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 156
    .line 157
    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/EndGameActivity$i;-><init>(Lcom/join/mgps/activity/EndGameActivity;Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 161
    .line 162
    new-instance v2, Lcom/join/mgps/activity/EndGameActivity$a;

    .line 163
    .line 164
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/EndGameActivity$a;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 165
    .line 166
    .line 167
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    .line 169
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 173
    .line 174
    new-instance v2, Lcom/join/mgps/activity/EndGameActivity$b;

    .line 175
    .line 176
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/EndGameActivity$b;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 183
    .line 184
    new-instance v2, Lcom/join/mgps/base/e;

    .line 185
    .line 186
    invoke-direct {v2}, Lcom/join/mgps/base/e;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setLoadMoreView(Lcom/join/mgps/base/c;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 193
    .line 194
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 197
    .line 198
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 205
    .line 206
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 212
    .line 213
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 214
    .line 215
    .line 216
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const v3, 0x7f071310

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    float-to-int v2, v2

    .line 230
    iput v2, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 231
    .line 232
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    .line 234
    new-instance v3, Lcom/join/mgps/activity/EndGameActivity$c;

    .line 235
    .line 236
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/EndGameActivity$c;-><init>(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/base/decoration/b$a;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Lcom/join/mgps/activity/EndGameActivity$j;

    .line 243
    .line 244
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 245
    .line 246
    invoke-direct {v0, p0, v2}, Lcom/join/mgps/activity/EndGameActivity$j;-><init>(Lcom/join/mgps/activity/EndGameActivity;Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 250
    .line 251
    new-instance v2, Lcom/join/mgps/activity/EndGameActivity$d;

    .line 252
    .line 253
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/EndGameActivity$d;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 257
    .line 258
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 262
    .line 263
    new-instance v2, Lcom/join/mgps/base/e;

    .line 264
    .line 265
    invoke-direct {v2}, Lcom/join/mgps/base/e;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setLoadMoreView(Lcom/join/mgps/base/c;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 274
    .line 275
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 276
    .line 277
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .line 285
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 291
    .line 292
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 293
    .line 294
    .line 295
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 296
    .line 297
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    const v3, 0x7f0713b7

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    float-to-int v2, v2

    .line 309
    iput v2, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 310
    .line 311
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 312
    .line 313
    new-instance v3, Lcom/join/mgps/activity/EndGameActivity$e;

    .line 314
    .line 315
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/EndGameActivity$e;-><init>(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/base/decoration/b$a;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 322
    .line 323
    new-instance v2, Lcom/join/mgps/activity/v0;

    .line 324
    .line 325
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/v0;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lcom/join/mgps/activity/EndGameActivity$k;

    .line 332
    .line 333
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 334
    .line 335
    invoke-direct {v0, p0, p0, v2}, Lcom/join/mgps/activity/EndGameActivity$k;-><init>(Lcom/join/mgps/activity/EndGameActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

    .line 339
    .line 340
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->vpGameList:Landroidx/viewpager2/widget/ViewPager2;

    .line 341
    .line 342
    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->vpGameList:Landroidx/viewpager2/widget/ViewPager2;

    .line 346
    .line 347
    const/4 v2, 0x3

    .line 348
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->vpGameList:Landroidx/viewpager2/widget/ViewPager2;

    .line 352
    .line 353
    new-instance v2, Lcom/join/mgps/activity/EndGameActivity$f;

    .line 354
    .line 355
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/EndGameActivity$f;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 359
    .line 360
    .line 361
    new-instance v0, Lcom/join/mgps/activity/EndGameActivity$h;

    .line 362
    .line 363
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 364
    .line 365
    invoke-direct {v0, p0, p0, v2}, Lcom/join/mgps/activity/EndGameActivity$h;-><init>(Lcom/join/mgps/activity/EndGameActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    .line 366
    .line 367
    .line 368
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameListViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$h;

    .line 369
    .line 370
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 371
    .line 372
    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 381
    .line 382
    const/4 v1, -0x1

    .line 383
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->getAd()V

    .line 387
    .line 388
    .line 389
    iget v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 390
    .line 391
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameActivity;->getGameNameData(I)V

    .line 392
    .line 393
    .line 394
    iget v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 395
    .line 396
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameActivity;->getGameTypeData(I)V

    .line 397
    .line 398
    .line 399
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

.method public chooseGame(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_6

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge p1, v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 45
    .line 46
    if-ne v1, p1, :cond_0

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    :goto_2
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/EndGameNameListBean;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-lt v1, v2, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-le v1, p1, :cond_3

    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelect:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 108
    .line 109
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->currentSelectedGame:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 121
    .line 122
    iget-boolean p1, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->ivExpand()V

    .line 127
    .line 128
    .line 129
    :cond_4
    return-void

    .line 130
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method createEndGame()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->showGuideCreateEndGame()Lorg/androidannotations/api/sharedpreferences/d;

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
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->guideDialog:Lcom/join/mgps/dialog/e0;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/dialog/e0;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/e0;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->guideDialog:Lcom/join/mgps/dialog/e0;

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->guideDialog:Lcom/join/mgps/dialog/e0;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getCreate_endgame_hint()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/e0;->b(Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->guideDialog:Lcom/join/mgps/dialog/e0;

    .line 68
    .line 69
    new-instance v1, Lcom/join/mgps/activity/EndGameActivity$g;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/EndGameActivity$g;-><init>(Lcom/join/mgps/activity/EndGameActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/e0;->a(Lcom/papa91/arc/interfaces/DialogListenerWrap;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/activity/CreateEndGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CreateEndGameActivity_$n;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity_$n;->a(Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;)Lcom/join/mgps/activity/CreateEndGameActivity_$n;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method getAd()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

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
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameAdArgs;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameAdArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameAdArgs;->setUid(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->D0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/16 v2, 0xc8

    .line 57
    .line 58
    if-ne v1, v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/util/List;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameAd:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->resetFirstFragmentAd()V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void
.end method

.method public getEndGameAd()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameAd:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method getEndGameConfig()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

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
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameListArgs;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameListArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameListArgs;->setUid(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/i;->o(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v2, 0xc8

    .line 59
    .line 60
    if-ne v1, v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->updateCreateEndGameVisibility()V

    .line 100
    .line 101
    .line 102
    :cond_0
    return-void
.end method

.method getGameNameData(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameNameListArgs;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameNameListArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameNameListArgs;->setWithEndGame(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameNameListArgs;->setUid(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestEndGameNameListArgs;->setPage(I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->S(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0xc8

    .line 64
    .line 65
    if-ne v1, v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/join/mgps/dto/EndGameNameBean;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameNameBean;->getGameList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/join/mgps/dto/EndGameNameBean;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameNameBean;->getGameList()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-gtz v1, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/EndGameNameBean;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameNameBean;->getGameList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/EndGameActivity;->updateUi(Ljava/util/List;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->nomore()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/4 v0, 0x1

    .line 121
    if-ne p1, v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->showLodingFailed()V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->showLodingFailed()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const v0, 0x7f12031e

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameActivity;->showTost(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_1
    return-void
.end method

.method getGameTypeData(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/dto/RequestEndGameTypeArgs;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestEndGameTypeArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameTypeArgs;->setUid(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestEndGameTypeArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestEndGameTypeArgs;->setModelType(I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->l0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0xc8

    .line 64
    .line 65
    if-ne v1, v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/join/mgps/dto/EndGameListBean;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameListBean;->getGameList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/join/mgps/dto/EndGameListBean;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameListBean;->getGameList()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-gtz v1, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/EndGameListBean;

    .line 107
    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/EndGameActivity;->updateTypeUI(Lcom/join/mgps/dto/EndGameListBean;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->nomoreType()V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_1
    return-void
.end method

.method ivExpand()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->ivExpand:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->shadowMask:Landroid/view/View;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->ivExpand:Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const v1, 0x7f080997

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v1, 0x7f080996

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->clGameSelect:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const v2, 0x7f07165c

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, -0x2

    .line 57
    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->clGameSelect:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    xor-int/2addr v0, v1

    .line 68
    iput-boolean v0, p0, Lcom/join/mgps/activity/EndGameActivity;->isExpand:Z

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->vpGameList:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v0, v2}, Lcom/join/mgps/activity/EndGameActivity$k;->b(Lcom/join/mgps/activity/EndGameActivity$k;I)Lcom/join/mgps/fragment/j1;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->currentSelectedGame:Lcom/join/mgps/dto/EndGameNameListBean;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Lcom/join/mgps/fragment/i1;->S(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->ivExpand:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method nomore()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method nomoreType()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameNamePage:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameActivity;->getGameNameData(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameTypePage:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameActivity;->getGameTypeData(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method resetFirstFragmentAd()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->gameListViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameActivity$h;->a(Lcom/join/mgps/activity/EndGameActivity$h;I)Lcom/join/mgps/fragment/o1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/fragment/n1;->Q()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method shadowMask()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->ivExpand()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_faile:Landroid/widget/LinearLayout;

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

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_layout:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->loding_layout:Landroid/widget/LinearLayout;

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

.method showTost(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->mActivity:Landroid/app/Activity;

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

.method updateCreateEndGameVisibility()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->isEndgame_creation_switch()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->createEndGame:Landroid/widget/TextView;

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method updateTypeUI(Lcom/join/mgps/dto/EndGameListBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameListBean;->getTypeList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectTagAdapter:Lcom/join/mgps/activity/EndGameActivity$j;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameTypeList:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/join/mgps/activity/EndGameActivity$k;->a(Lcom/join/mgps/activity/EndGameActivity$k;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$k;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method updateUi(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameNameListBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameActivity;->showMain()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p2, v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/EndGameNameListBean;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameListViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$h;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/join/mgps/activity/EndGameActivity$h;->b(Lcom/join/mgps/activity/EndGameActivity$h;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameListViewpager2Adapter:Lcom/join/mgps/activity/EndGameActivity$h;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-ne p2, v0, :cond_4

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ge p2, v1, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity;->gameId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/join/mgps/dto/EndGameNameListBean;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/EndGameNameListBean;->setSelected(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 100
    .line 101
    invoke-virtual {v0, p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameActivity;->gameSelectAdapter:Lcom/join/mgps/activity/EndGameActivity$i;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/join/mgps/activity/EndGameActivity;->endGameNameList:Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method
