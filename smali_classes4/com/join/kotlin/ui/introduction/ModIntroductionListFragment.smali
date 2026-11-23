.class public Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b5
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

.field gameId:Ljava/lang/String;

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

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
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$008(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 6
    .line 7
    return v0
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickContentCard:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "1"

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ""

    .line 47
    .line 48
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance p2, Lcom/papa/sim/statistic/Data;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/join/mgps/activity/IntroductionActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/IntroductionActivity_$v;->d(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$v;->e(I)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$v;->a(Ljava/lang/String;)Lcom/join/mgps/activity/IntroductionActivity_$v;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

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
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "gameId"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "tagId"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 67
    .line 68
    :cond_1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 71
    .line 72
    .line 73
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const v2, 0x7f071369

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    float-to-int v1, v1

    .line 87
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    float-to-int v1, v1

    .line 98
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    new-instance v2, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$1;

    .line 103
    .line 104
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 111
    .line 112
    new-instance v1, Lcom/join/kotlin/ui/introduction/c;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/c;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 128
    .line 129
    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

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
    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

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
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->getUid()I

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
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->hideLoading()V

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
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showMain(Ljava/util/List;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
