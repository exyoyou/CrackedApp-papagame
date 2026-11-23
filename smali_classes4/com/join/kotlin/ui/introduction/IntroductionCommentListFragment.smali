.class public Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;,
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;,
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d028b
.end annotation


# instance fields
.field private commentId:I

.field commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

.field context:Landroid/content/Context;

.field private dataChanged:Z

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private detailPage:I

.field duration:I

.field et_content:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fromNotice:Z

.field gameId:Ljava/lang/String;

.field isRequestDisPraise:Z

.field isRequestPraise:Z

.field isVideo:Z

.field iv_back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_empty:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile_detail:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout_detail:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mFragmentCallback:Lcom/join/mgps/callbacks/i;

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

.field private mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

.field private page:I

.field pid:I

.field posterId:I

.field regText:Ljava/lang/String;

.field reportUrl:Ljava/lang/String;

.field rl_comment_detail:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_comment_list:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private showDetail:Z

.field textView2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
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
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->dataChanged:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 17
    .line 18
    const-string v0, "(\\d{0,2}:[0-5][0-9]:[0-5][0-9])|([0-5][0-9]:[0-5][0-9])"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->regText:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 25
    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$008(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$208(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$300(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 2
    .line 3
    return p0
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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

.method private validTime(Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clickStr",
            "max"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, ":"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_9

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_1
    array-length v0, p1

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v2, :cond_4

    .line 26
    .line 27
    aget-object v0, p1, v1

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    aget-object v0, p1, v1

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    mul-int/lit8 v0, v0, 0x3c

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_0
    aget-object v2, p1, v3

    .line 50
    .line 51
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    aget-object p1, p1, v3

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 p1, 0x0

    .line 69
    :goto_1
    add-int/2addr v0, p1

    .line 70
    goto :goto_5

    .line 71
    :cond_4
    array-length v0, p1

    .line 72
    const/4 v4, 0x3

    .line 73
    if-ne v0, v4, :cond_8

    .line 74
    .line 75
    aget-object v0, p1, v1

    .line 76
    .line 77
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    aget-object v0, p1, v1

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    mul-int/lit16 v0, v0, 0xe10

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const/4 v0, 0x0

    .line 97
    :goto_2
    aget-object v4, p1, v3

    .line 98
    .line 99
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    aget-object v4, p1, v3

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    mul-int/lit8 v4, v4, 0x3c

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    const/4 v4, 0x0

    .line 119
    :goto_3
    aget-object v5, p1, v2

    .line 120
    .line 121
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_7

    .line 126
    .line 127
    aget-object p1, p1, v2

    .line 128
    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    goto :goto_4

    .line 138
    :cond_7
    const/4 p1, 0x0

    .line 139
    :goto_4
    add-int/2addr v0, v4

    .line 140
    goto :goto_1

    .line 141
    :cond_8
    const/4 v0, 0x0

    .line 142
    :goto_5
    if-lez v0, :cond_9

    .line 143
    .line 144
    if-gt v0, p2, :cond_9

    .line 145
    .line 146
    const/4 v1, 0x1

    .line 147
    :cond_9
    :goto_6
    return v1
.end method


# virtual methods
.method aftervidew()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 40
    .line 41
    .line 42
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const v3, 0x7f0711b4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    float-to-int v2, v2

    .line 56
    iput v2, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    new-instance v3, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$1;

    .line 61
    .line 62
    invoke-direct {v3, p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Lcom/join/mgps/base/decoration/b$a;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 69
    .line 70
    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$l;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 88
    .line 89
    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$h;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 98
    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 109
    .line 110
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 130
    .line 131
    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;

    .line 132
    .line 133
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 141
    .line 142
    .line 143
    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 144
    .line 145
    if-eqz v2, :cond_2

    .line 146
    .line 147
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 148
    .line 149
    const-string v3, ""

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 155
    .line 156
    const-string v3, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    const/16 v3, 0x8

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 179
    .line 180
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    .line 183
    .line 184
    .line 185
    :cond_2
    return-void
.end method

.method commitComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsReplyArgs;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsReplyArgs;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setPid(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setUid(Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setContent(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->posterId:I

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setRuid(Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getUid()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setRuid(Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {p1, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/k;->F0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 87
    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updateCommentInput()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method

.method getReportUrl(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ruid",
            "rid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "?"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "&resourceId="

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "&resourceType=COMMENT&ruid="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "?resourceType=COMMENT&ruid="

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string p1, ""

    .line 80
    .line 81
    :goto_0
    return-object p1
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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

.method hideLoadingDetail()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method public loadCommentDetail(I)V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->L0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/util/List;

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    if-le p1, v2, :cond_0

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    .line 121
    .line 122
    .line 123
    :goto_0
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->u(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/List;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    if-le p1, v1, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showMain(Ljava/util/List;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p1

    .line 95
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method loadDataDetail(I)V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->L0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/util/List;

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    if-le p1, v2, :cond_0

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method loadDataDetailFromNotice(I)V
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->q0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/util/List;

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    if-le p1, v2, :cond_0

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/util/List;

    .line 104
    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_1
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method public matchText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tv",
            "text",
            "regExp",
            "firstName",
            "replayName",
            "isReplay"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    .line 2
    .line 3
    if-lez v0, :cond_4

    .line 4
    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {p3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x21

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p3, v1}, Ljava/util/regex/Matcher;->start(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p3, v1}, Ljava/util/regex/Matcher;->end(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget v5, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    .line 41
    .line 42
    invoke-direct {p0, v4, v5}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->validTime(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 49
    .line 50
    const-string v6, "#3392FF"

    .line 51
    .line 52
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;

    .line 63
    .line 64
    invoke-direct {v5, p0, v4}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p6, :cond_3

    .line 72
    .line 73
    invoke-static {p4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const-string p6, "#82888E"

    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    add-int/2addr p4, p3

    .line 90
    if-ltz p3, :cond_2

    .line 91
    .line 92
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 93
    .line 94
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static {p5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_3

    .line 109
    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string p4, "\u56de\u590d "

    .line 116
    .line 117
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/lit8 p2, p2, 0x3

    .line 132
    .line 133
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    add-int/2addr p3, p2

    .line 138
    if-ltz p2, :cond_3

    .line 139
    .line 140
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .line 141
    .line 142
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p5

    .line 146
    invoke-direct {p4, p5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p4, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public notifyDataChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->dataChanged:Z

    .line 9
    .line 10
    return-void
.end method

.method onBackClick()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a11
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u8bc4\u8bba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 68
    .line 69
    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 76
    .line 77
    return-void
.end method

.method onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    :try_start_1
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "COMMENT"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {p1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/k;->i0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0, v0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const p2, 0x7f12031e

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_1
    move-exception p1

    .line 133
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    return-void
.end method

.method onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ruid",
            "resourceId",
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    :try_start_1
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 41
    .line 42
    new-instance v2, Lcom/join/mgps/dto/RequestBbsPraiseArgs;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "COMMENT"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setRuid(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/k;->K(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0, v1, p3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 119
    .line 120
    sget-object v3, Lcom/papa/sim/statistic/Event;->CommentClickLike:Lcom/papa/sim/statistic/Event;

    .line 121
    .line 122
    const-string v4, ""

    .line 123
    .line 124
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 125
    .line 126
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string p2, "1"

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 146
    .line 147
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->gameId:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catch_0
    move-exception p1

    .line 161
    :try_start_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const p2, 0x7f12031e

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catch_1
    move-exception p1

    .line 185
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_3
    :goto_0
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

.method onClickComment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1940
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v0, "\u8bf7\u8f93\u5165\u8bc4\u8bba/\u56de\u590d\u5185\u5bb9"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commitComment(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetView",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d03b2

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a19f7

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v2, Landroid/widget/PopupWindow;

    .line 23
    .line 24
    const/4 v3, -0x2

    .line 25
    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v3, "#00000000"

    .line 31
    .line 32
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 58
    .line 59
    .line 60
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const v5, 0x7f07130f

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    sub-float/2addr v3, v4

    .line 75
    float-to-int v3, v3

    .line 76
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-virtual {v2, p1, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;

    .line 83
    .line 84
    invoke-direct {p1, p0, v2, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Landroid/widget/PopupWindow;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method onClockClick()V
    .locals 4
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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 26
    .line 27
    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string v3, "\u8bc4\u8bba"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "input_method"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
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
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 3
    .line 4
    .line 5
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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method relodingimagDetail()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1369
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setCommentId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    .line 2
    .line 3
    return-void
.end method

.method public setFragmentCallback(Lcom/join/mgps/callbacks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 2
    .line 3
    return-void
.end method

.method public setFromNotice(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromNotice"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 2
    .line 3
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setNetworkDetail()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1509
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setParams(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "posterId",
            "reportUrl",
            "gameId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->posterId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    .line 2
    .line 3
    return-void
.end method

.method public showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 11
    .line 12
    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, "\u56de\u590d"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/BbsCommentListBean;->setReplay(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 80
    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 83
    .line 84
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method showDetail(Ljava/util/List;Z)V
    .locals 1
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
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 45
    .line 46
    .line 47
    :cond_2
    if-nez p2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void
.end method

.method showEmpty()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadFailedDetail()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailedDetail(Ljava/lang/String;)V
    .locals 2
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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

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
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method showLoadingViewDetail()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

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
    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

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
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 42
    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method showNoticeDetail(Ljava/util/List;Z)V
    .locals 5
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
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/BbsCommentListBean;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "\u56de\u590d"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setReplay(Z)V

    .line 60
    .line 61
    .line 62
    :cond_0
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 106
    .line 107
    .line 108
    :cond_3
    if-nez p2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

.method updateCommentInput()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 9
    .line 10
    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5c06\u5728\u5ba1\u6838\u540e\u5c55\u793a"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Lcom/join/mgps/callbacks/i;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/join/mgps/callbacks/i;->onCommentCommitSuccess()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "praise",
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setLike(Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setLike(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/BbsCommentListBean;->setPraise(Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
