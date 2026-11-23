.class public Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b4
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private defSelectPos:I

.field draftUrl:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field private isAddData:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_list_type:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;"
        }
    .end annotation
.end field

.field view_pager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/BbsTagListBean;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 18
    .line 19
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 22
    .line 23
    .line 24
    iput p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/mgps/dto/BbsTagListBean;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 39
    .line 40
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    .line 47
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickContentTag:Lcom/papa/sim/statistic/Event;

    .line 68
    .line 69
    const-string v3, ""

    .line 70
    .line 71
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p2, "1"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 88
    .line 89
    iget v4, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 90
    .line 91
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Lcom/join/mgps/dto/BbsTagListBean;

    .line 96
    .line 97
    invoke-virtual {p3}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p3, ""

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "gameId"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "draftUrl"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->draftUrl:Ljava/lang/String;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 53
    .line 54
    :cond_1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const v2, 0x7f07133d

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    float-to-int v1, v1

    .line 74
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    new-instance v2, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$1;

    .line 79
    .line 80
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 87
    .line 88
    new-instance v1, Lcom/join/kotlin/ui/introduction/b;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/b;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    .line 97
    .line 98
    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loadData()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public getDraftUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "?"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "&gameId="

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "?gameId="

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_1
    :goto_0
    return-object p1
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

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

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/dto/RequestBbsTagListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsTagListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setGameId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setUid(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setUserToken(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->b(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->hideLoading()V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/List;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showMain(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method

.method onDraftClick()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a195f
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickcontributionButton:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    const-string v4, ""

    .line 14
    .line 15
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v5, "1"

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v6, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->draftUrl:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->getDraftUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loadData()V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showMain(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

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

.method showMain(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lez p1, :cond_4

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/BbsTagListBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 46
    .line 47
    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/join/mgps/dto/BbsTagListBean;

    .line 88
    .line 89
    new-instance v3, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v4, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, "tagId"

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-nez v6, :cond_2

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    :goto_3
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v5, "gameId"

    .line 121
    .line 122
    iget-object v6, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    .line 131
    .line 132
    new-instance v5, Lcom/join/mgps/adapter/h0$a;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-direct {v5, v2, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 156
    .line 157
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    .line 164
    .line 165
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    .line 169
    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    .line 176
    .line 177
    const/4 v0, 0x3

    .line 178
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    .line 182
    .line 183
    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_4
    return-void
.end method
