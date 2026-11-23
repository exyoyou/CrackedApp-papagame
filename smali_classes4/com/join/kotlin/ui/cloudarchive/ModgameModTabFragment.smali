.class public Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;,
        Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0739
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private defSelectPos:I

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

.field private mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

.field modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

.field rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1456
    .end annotation
.end field

.field rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1457
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->lambda$initData$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$initData$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/join/mgps/dto/GoldFingerBean;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 22
    .line 23
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 26
    .line 27
    .line 28
    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 29
    .line 30
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/join/mgps/dto/GoldFingerBean;

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 41
    .line 42
    iget p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-lez p2, :cond_0

    .line 52
    .line 53
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 54
    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 62
    .line 63
    iget p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 64
    .line 65
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/GoldFingerBean;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/GoldFingerBean;->getContent()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "datas"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/ModGameDetailBean;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->initData()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setData(Lcom/join/mgps/dto/ModGameDetailBean;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 2
    .line 3
    const v1, 0x7f071369

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 19
    .line 20
    .line 21
    iput v2, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    float-to-int v3, v3

    .line 32
    iput v3, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$1;

    .line 37
    .line 38
    invoke-direct {v4, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 61
    .line 62
    :cond_1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 65
    .line 66
    .line 67
    iput v2, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const v3, 0x7f07137f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    float-to-int v2, v2

    .line 81
    iput v2, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    float-to-int v1, v1

    .line 92
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$2;

    .line 97
    .line 98
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 125
    .line 126
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/y1;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/y1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 135
    .line 136
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modGameDetailBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_layout:Landroid/view/View;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_faile:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/dto/GoldFingerBean;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 58
    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 66
    .line 67
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 68
    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/join/mgps/dto/GoldFingerBean;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/GoldFingerBean;->getContent()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method public showLodingFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_faile:Landroid/view/View;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setNetwork:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setNetwork:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
