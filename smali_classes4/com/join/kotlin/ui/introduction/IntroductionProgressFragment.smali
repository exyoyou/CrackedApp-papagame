.class public Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d03b3
.end annotation


# instance fields
.field private curSelected:I

.field private dataChanged:Z

.field detailBean:Lcom/join/mgps/dto/BbsDetailBean;

.field ll_empty:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
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
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->lambda$afterView$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterView$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 2
    .line 3
    const/4 p2, -0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 9
    .line 10
    iget p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of p1, p1, Lcom/join/mgps/dto/TimingBean;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 23
    .line 24
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/TimingBean;->setChecked(Z)V

    .line 33
    .line 34
    .line 35
    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/TimingBean;->setChecked(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 55
    .line 56
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of p1, p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 67
    .line 68
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 77
    .line 78
    .line 79
    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 82
    .line 83
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    instance-of p1, p1, Lcom/join/mgps/callbacks/i;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/mgps/callbacks/i;

    .line 110
    .line 111
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/i;->onHide(Landroidx/fragment/app/Fragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/mgps/callbacks/i;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p1, p2}, Lcom/join/mgps/callbacks/i;->onProgressItemClick(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-void
.end method

.method public static newInstance(Lcom/join/mgps/dto/CommentAlllistIntentData;)Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentData"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private updateUI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v4, "\u89c6\u9891\u5408\u96c6"

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    iput v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v4, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 55
    .line 56
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    .line 99
    .line 100
    const-string v1, "\u5267\u60c5\u8fdb\u5ea6"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-lez v0, :cond_2

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f07133d

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    float-to-int v1, v1

    .line 46
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$1;

    .line 51
    .line 52
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 59
    .line 60
    new-instance v1, Lcom/join/kotlin/ui/introduction/a;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/a;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->updateUI()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public notifyDataChanged(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 19
    .line 20
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
    iget-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->updateUI()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    .line 15
    .line 16
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

.method public setData(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
