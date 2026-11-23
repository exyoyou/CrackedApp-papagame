.class public Lcom/join/mgps/activity/ForumProfileCommentActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06c7
.end annotation


# instance fields
.field private final LOADING:I

.field private final LOADING_DB_FAILED:I

.field private final LOADING_FAILED:I

.field private final LOADING_NETWORK_FAILED:I

.field private final LOADING_SRV_NO_REC_FAILED:I

.field private final LOADING_SRV_POSTS_FAILED:I

.field private final LOADING_SUCCESS:I

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

.field forumProfileCommentDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;"
        }
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPage:I

.field private loadingState:I

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mProfileListener:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field netConnectException:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private pageCount:I

.field rpcForumClient:Lcom/join/mgps/rpc/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->pageCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING:I

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_FAILED:I

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_SUCCESS:I

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_NETWORK_FAILED:I

    .line 22
    .line 23
    const/16 v1, 0x12

    .line 24
    .line 25
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_DB_FAILED:I

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_SRV_NO_REC_FAILED:I

    .line 30
    .line 31
    const/16 v1, 0x18

    .line 32
    .line 33
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->LOADING_SRV_POSTS_FAILED:I

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumProfileCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/ForumProfileCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumProfileCommentActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->pageCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6211\u7684\u8bc4\u8bba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$c;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->h(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private loadDBData()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loading()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadDBData()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadSrvData()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7f12031e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x11

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->initViews()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loading()V

    .line 11
    .line 12
    .line 13
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

.method changeLoadingState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_2
    or-int/2addr p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 40
    .line 41
    const/16 p1, -0xb

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->checkFailed(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    const/16 v2, 0x10

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$e;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_3
    const/16 p1, 0x16

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->checkFailed(I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 83
    .line 84
    const-string v0, "\u8fd8\u6ca1\u6709\u53d1\u5e03\u8bc4\u8bba~"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 90
    .line 91
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$f;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 100
    .line 101
    const/16 v0, 0xa

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 112
    .line 113
    const v0, 0x7f080edb

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/16 p1, 0x1f

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->checkFailed(I)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_6

    .line 127
    .line 128
    const/16 p1, 0x1a

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->checkFailed(I)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    const/16 p1, 0x11

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->checkFailed(I)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 148
    .line 149
    new-instance v1, Lcom/join/mgps/activity/ForumProfileCommentActivity$h;

    .line 150
    .line 151
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 166
    .line 167
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 173
    .line 174
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity$g;

    .line 175
    .line 176
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_1
    return-void
.end method

.method checkFailed(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingState:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method getForumProfileMessageData(I)V
    .locals 11
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
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 10
    .line 11
    .line 12
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_d

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-le p1, v0, :cond_2

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showMoreLoading()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_9

    .line 36
    .line 37
    iget-object v5, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget v9, Lcom/join/mgps/Util/r0;->d:I

    .line 48
    .line 49
    const-string v10, ""

    .line 50
    .line 51
    move v8, p1

    .line 52
    invoke-interface/range {v5 .. v10}, Lcom/join/mgps/rpc/i;->a(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/16 v4, 0x14

    .line 57
    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->pageCount:I

    .line 75
    .line 76
    invoke-virtual {p0, v3, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->updateCommentData(Ljava/util/List;I)V

    .line 77
    .line 78
    .line 79
    const/16 p1, 0x20

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 85
    .line 86
    if-eq p1, v1, :cond_b

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :try_start_1
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 90
    .line 91
    if-ne p1, v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_4
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 97
    .line 98
    if-eq p1, v1, :cond_5

    .line 99
    .line 100
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    :try_start_2
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 107
    .line 108
    if-ne p1, v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_7
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 114
    .line 115
    if-eq p1, v1, :cond_8

    .line 116
    .line 117
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 118
    .line 119
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_9
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 124
    .line 125
    if-eq p1, v1, :cond_a

    .line 126
    .line 127
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 128
    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    const/16 v0, 0x18

    .line 137
    .line 138
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .line 143
    .line 144
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 145
    .line 146
    if-eq p1, v1, :cond_b

    .line 147
    .line 148
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 149
    .line 150
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 155
    .line 156
    if-eq v0, v1, :cond_c

    .line 157
    .line 158
    iput v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->loadingPage:I

    .line 159
    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_d
    const p1, 0x7f12031e

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/16 p1, 0x11

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->changeLoadingState(I)V

    .line 177
    .line 178
    .line 179
    :goto_2
    return-void
.end method

.method loadSrvData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->getForumProfileMessageData(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method notifyAdapter()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->g(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentAdapter1:Lcom/join/mgps/adapter/ForumProfileCommentAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method declared-synchronized notifyDataSetChanged()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->setProfileViewData(Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;Z)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->notifyAdapter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

.method setProfileViewData(Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "hideHeadDivider"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 16
    .line 17
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 18
    .line 19
    new-instance v15, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getLast_update_time()J

    .line 30
    .line 31
    .line 32
    move-result-wide v9

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/16 v18, 0x1

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    if-lez v5, :cond_0

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v11, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 58
    .line 59
    .line 60
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const-string v19, ""

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object/from16 v16, v5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object/from16 v16, v19

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    move-object/from16 v17, v5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move-object/from16 v17, v19

    .line 96
    .line 97
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 98
    .line 99
    .line 100
    move-result v20

    .line 101
    move-object v5, v15

    .line 102
    move/from16 v6, p2

    .line 103
    .line 104
    move v14, v2

    .line 105
    move-object v2, v15

    .line 106
    move-object/from16 v15, v16

    .line 107
    .line 108
    move-object/from16 v16, v17

    .line 109
    .line 110
    move/from16 v17, v20

    .line 111
    .line 112
    invoke-direct/range {v5 .. v17}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIIILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;->getList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const/4 v14, 0x0

    .line 128
    :goto_3
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-ge v14, v3, :cond_4

    .line 135
    .line 136
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 137
    .line 138
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 139
    .line 140
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    add-int/lit8 v7, v7, -0x1

    .line 151
    .line 152
    if-ne v14, v7, :cond_3

    .line 153
    .line 154
    const/4 v7, 0x1

    .line 155
    goto :goto_4

    .line 156
    :cond_3
    const/4 v7, 0x0

    .line 157
    :goto_4
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    .line 162
    .line 163
    invoke-direct {v5, v6, v7, v8}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;-><init>(IZLcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/lit8 v14, v14, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 178
    .line 179
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 180
    .line 181
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-eqz v6, :cond_5

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_5

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    const/4 v7, 0x0

    .line 208
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v19

    .line 218
    :cond_5
    move-object/from16 v6, v19

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-nez v7, :cond_6

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_5
    invoke-direct {v4, v5, v6, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileCommentActivity;->listData:Ljava/util/List;

    .line 246
    .line 247
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :goto_6
    return-void
.end method

.method showMoreLoading()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showToast(Ljava/lang/String;)V
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

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mg_forum_profile_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const-wide/16 v2, 0xbb8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method updateCommentData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "datas",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;I)V"
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
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->pageCount:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->forumProfileCommentDataList:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->stopXlistRefreshAndLoadMore()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
