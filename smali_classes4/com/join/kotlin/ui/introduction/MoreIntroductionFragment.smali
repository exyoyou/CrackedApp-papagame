.class public Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b7
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private dataChanged:Z

.field private datas:Lcom/join/mgps/dto/GameBbsPostListBean;

.field gameId:Ljava/lang/String;

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

.field private next_page:I

.field private page:I

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
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
    iput v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->page:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->next_page:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->dataChanged:Z

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->lambda$aftervidew$1(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->lambda$aftervidew$0()V

    return-void
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

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

.method private synthetic lambda$aftervidew$0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->page:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->page:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loadData(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$aftervidew$1(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

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
    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickMoreContent:Lcom/papa/sim/statistic/Event;

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
    const/4 p3, 0x1

    .line 35
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p2, v4}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, ""

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p2, v4}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance p2, Lcom/papa/sim/statistic/Data;

    .line 69
    .line 70
    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->gameId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v5}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    instance-of p2, p2, Lcom/join/mgps/callbacks/i;

    .line 87
    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/join/mgps/callbacks/i;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getType()Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getIsCollection()Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-ne p1, p3, :cond_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const/4 p3, 0x0

    .line 124
    :goto_0
    invoke-interface {p2, v0, v1, p3}, Lcom/join/mgps/callbacks/i;->onItemClick(IIZ)V

    .line 125
    .line 126
    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->onClockClick()V

    .line 128
    .line 129
    .line 130
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
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->gameId:Ljava/lang/String;

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
    iput v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->tagId:I

    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    new-instance v0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 67
    .line 68
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
    const v2, 0x7f07137f

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
    const v2, 0x7f071369

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    float-to-int v1, v1

    .line 101
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    new-instance v2, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$1;

    .line 106
    .line 107
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 114
    .line 115
    new-instance v1, Lcom/join/kotlin/ui/introduction/e;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/e;-><init>(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 126
    .line 127
    new-instance v1, Lcom/join/kotlin/ui/introduction/f;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/f;-><init>(Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loadData(I)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    .locals 5
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsRecommendArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;->setFirstReqInCurPage(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->gameId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;->setGameId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->tagId:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;->setPostId(Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->next_page:I

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;->setPage(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->getUid()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestBbsRecommendArgs;->setUid(Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {v3, v4}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v3}, Lcom/join/mgps/rpc/k;->Y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->hideLoading()V

    .line 86
    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 101
    .line 102
    if-le p1, v2, :cond_1

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showMain(Lcom/join/mgps/dto/GameBbsPostListBean;Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadFailed()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadFailed()V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void
.end method

.method public notifyDataChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->tagId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->dataChanged:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->tagId:I

    .line 14
    .line 15
    iput v1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->page:I

    .line 16
    .line 17
    iput v1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->next_page:I

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method onClockClick()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a22
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/callbacks/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/callbacks/i;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lcom/join/mgps/callbacks/i;->onHide(Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->dataChanged:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loadData(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->dataChanged:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loadData(I)V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->context:Landroid/content/Context;

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->showLoadFailed(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

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
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_layout:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_layout:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_layout:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->loding_faile:Landroid/view/View;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/GameBbsPostListBean;Z)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameBbsPostListBean;->getNext_page()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->next_page:I

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->datas:Lcom/join/mgps/dto/GameBbsPostListBean;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameBbsPostListBean;->getGame_bbs_post_list()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment$ItemAdapter;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method
