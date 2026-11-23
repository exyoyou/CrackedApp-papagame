.class public Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b6
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;"
        }
    .end annotation
.end field

.field private defalutColumns:I

.field gameId:Ljava/lang/String;

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

.field private page:I

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tagId:I


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
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->page:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->page:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$008(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->page:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->page:I

    .line 6
    .line 7
    return v0
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private synthetic lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/BbsListBean;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    instance-of p2, p2, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->gameId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickModMainGbaSee:Lcom/papa/sim/statistic/Event;

    .line 36
    .line 37
    invoke-virtual {p3, v0, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickContentCard:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    const-string v3, ""

    .line 54
    .line 55
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p3, "1"

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, ""

    .line 79
    .line 80
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance p2, Lcom/papa/sim/statistic/Data;

    .line 92
    .line 93
    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->gameId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p2}, Lcom/join/mgps/activity/IntroductionActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/IntroductionActivity_$v;->d(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->tagId:I

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$v;->e(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->gameId:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "gameId"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->gameId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v3, "tagId"

    .line 32
    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->tagId:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v3, "column"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 50
    .line 51
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 62
    .line 63
    iget v5, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 64
    .line 65
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 81
    .line 82
    :cond_1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 83
    .line 84
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 85
    .line 86
    .line 87
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const v4, 0x7f07133d

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    float-to-int v3, v3

    .line 101
    iput v3, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 102
    .line 103
    iget v3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 104
    .line 105
    const v5, 0x7f0715d6

    .line 106
    .line 107
    .line 108
    if-eq v3, v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    float-to-int v3, v3

    .line 119
    iput v3, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 120
    .line 121
    :cond_2
    new-instance v3, Lcom/join/mgps/base/decoration/b$a;

    .line 122
    .line 123
    invoke-direct {v3}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 124
    .line 125
    .line 126
    iput v1, v3, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    float-to-int v1, v1

    .line 137
    iput v1, v3, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 138
    .line 139
    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 140
    .line 141
    if-eq v1, v2, :cond_3

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    float-to-int v1, v1

    .line 152
    iput v1, v3, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 153
    .line 154
    :cond_3
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    new-instance v4, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$1;

    .line 157
    .line 158
    invoke-direct {v4, p0, v0, v3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;Lcom/join/mgps/base/decoration/b$a;Lcom/join/mgps/base/decoration/b$a;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 165
    .line 166
    new-instance v1, Lcom/join/kotlin/ui/introduction/d;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/d;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 182
    .line 183
    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$2;

    .line 184
    .line 185
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    .line 190
    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 191
    .line 192
    .line 193
    iput v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->page:I

    .line 194
    .line 195
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loadData(I)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public changeColumn(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->defalutColumns:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v1, v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->datas:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method loadData(I)V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setGameId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setPage(Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->tagId:I

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setTagId(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setUid(Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->d0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->hideLoading()V

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/util/List;

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    if-le p1, v1, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showMain(Ljava/util/List;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p1

    .line 100
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_1
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadFailed()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadFailed()V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loadData(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_faile:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->datas:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_layout:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_layout:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_layout:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->loding_faile:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "loadMore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->datas:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->datas:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->datas:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragmentForSimulator$ItemAdapter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
