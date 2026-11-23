.class public Lcom/join/mgps/activity/ForumProfileMessageActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06cc
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

.field forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

.field forumProfileMessageBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;",
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
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
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

.field mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

.field mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;
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
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->pageCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING:I

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_FAILED:I

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_SUCCESS:I

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_NETWORK_FAILED:I

    .line 22
    .line 23
    const/16 v1, 0x12

    .line 24
    .line 25
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_DB_FAILED:I

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_SRV_NO_REC_FAILED:I

    .line 30
    .line 31
    const/16 v1, 0x18

    .line 32
    .line 33
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->LOADING_SRV_POSTS_FAILED:I

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$b;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$b;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/ForumProfileMessageActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->pageCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->layout_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6211\u7684\u6d88\u606f"

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mProfileListener:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->j(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private loadDBData()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadDBData()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadSrvData()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x11

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->initViews()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loading()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55\uff01"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    :cond_0
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
    .locals 2
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
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

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
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

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
    if-nez p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

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
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 40
    .line 41
    const/16 p1, -0xb

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->checkFailed(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$e;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/16 p1, 0x16

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->checkFailed(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 82
    .line 83
    const-string v0, "\u8fd8\u6ca1\u6709\u6536\u5230\u6d88\u606f\u54e6~"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 89
    .line 90
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$f;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$f;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 99
    .line 100
    const/16 v0, 0xa

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const/16 p1, 0x1f

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->checkFailed(I)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    const/16 p1, 0x1a

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->checkFailed(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/16 p1, 0x11

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->checkFailed(I)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 134
    .line 135
    new-instance v1, Lcom/join/mgps/activity/ForumProfileMessageActivity$h;

    .line 136
    .line 137
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$h;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    :goto_0
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 152
    .line 153
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 159
    .line 160
    new-instance v0, Lcom/join/mgps/activity/ForumProfileMessageActivity$g;

    .line 161
    .line 162
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity$g;-><init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 171
    .line 172
    .line 173
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
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

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

.method getForumPostBean(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v3, p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    return-object v0
.end method

.method getForumProfileMessageData(I)V
    .locals 12
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
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 10
    .line 11
    .line 12
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

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
    const/16 v0, 0x18

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-le p1, v2, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showMoreLoading()V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_9

    .line 38
    .line 39
    iget-object v6, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    sget v10, Lcom/join/mgps/Util/r0;->d:I

    .line 50
    .line 51
    const-string v11, ""

    .line 52
    .line 53
    move v9, p1

    .line 54
    invoke-interface/range {v6 .. v11}, Lcom/join/mgps/rpc/i;->U(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 69
    .line 70
    move-object v4, v5

    .line 71
    :goto_0
    const/16 v6, 0x14

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-ne p1, v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_6

    .line 92
    .line 93
    iput p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->pageCount:I

    .line 94
    .line 95
    invoke-virtual {p0, v5, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->updateMessageData(Ljava/util/List;I)V

    .line 96
    .line 97
    .line 98
    const/16 p1, 0x20

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 104
    .line 105
    if-eq p1, v1, :cond_b

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    :try_start_1
    iput v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 109
    .line 110
    if-ne p1, v2, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_7
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 116
    .line 117
    if-eq p1, v1, :cond_8

    .line 118
    .line 119
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 120
    .line 121
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_9
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 129
    .line 130
    if-eq p1, v1, :cond_a

    .line 131
    .line 132
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 133
    .line 134
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception p1

    .line 141
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 148
    .line 149
    if-eq p1, v1, :cond_b

    .line 150
    .line 151
    :goto_2
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 152
    .line 153
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 158
    .line 159
    if-eq v0, v1, :cond_c

    .line 160
    .line 161
    iput v3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 162
    .line 163
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_d
    const p1, 0x7f12031e

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/16 p1, 0x11

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->changeLoadingState(I)V

    .line 180
    .line 181
    .line 182
    :goto_4
    return-void
.end method

.method loadSrvData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->getForumProfileMessageData(I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->h(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageAdapter1:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->notifyDataSetChanged()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;

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
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->setProfileViewData(Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;Z)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->notifyAdapter()V
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

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingState:I

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loading()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    add-int/2addr p2, p3

    .line 2
    sub-int/2addr p4, p2

    .line 3
    sget p1, Lcom/join/mgps/Util/r0;->f:I

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 p3, 0x1

    .line 7
    if-ge p4, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget p4, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->loadingPage:I

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    if-eq p4, v0, :cond_1

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    :cond_1
    and-int/2addr p1, p2

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->pageCount:I

    .line 22
    .line 23
    add-int/2addr p1, p3

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->getForumProfileMessageData(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method

.method setProfileViewData(Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;Z)V
    .locals 27
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
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 20
    .line 21
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 22
    .line 23
    new-instance v15, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getAdd_time()J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v14, 0x0

    .line 43
    if-lez v5, :cond_0

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v11, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ne v5, v6, :cond_1

    .line 57
    .line 58
    const/4 v13, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v13, 0x0

    .line 61
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->isFrom_officialAccount()Z

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    .line 66
    .line 67
    .line 68
    move-result v17

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v18

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    .line 74
    .line 75
    .line 76
    move-result v19

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getVip_level()I

    .line 78
    .line 79
    .line 80
    move-result v20

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getSvip_level()I

    .line 82
    .line 83
    .line 84
    move-result v21

    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 86
    .line 87
    .line 88
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const-string v23, ""

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    move-object/from16 v22, v5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object/from16 v22, v23

    .line 105
    .line 106
    :goto_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    move-object/from16 v24, v5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move-object/from16 v24, v23

    .line 124
    .line 125
    :goto_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 126
    .line 127
    .line 128
    move-result v25

    .line 129
    move-object v5, v15

    .line 130
    move/from16 v6, p2

    .line 131
    .line 132
    move/from16 v14, v16

    .line 133
    .line 134
    move-object/from16 v26, v2

    .line 135
    .line 136
    move-object v2, v15

    .line 137
    move/from16 v15, v17

    .line 138
    .line 139
    move-object/from16 v16, v18

    .line 140
    .line 141
    move/from16 v17, v19

    .line 142
    .line 143
    move/from16 v18, v20

    .line 144
    .line 145
    move/from16 v19, v21

    .line 146
    .line 147
    move-object/from16 v20, v22

    .line 148
    .line 149
    move-object/from16 v21, v24

    .line 150
    .line 151
    move/from16 v22, v25

    .line 152
    .line 153
    invoke-direct/range {v5 .. v22}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIZZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 165
    .line 166
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 167
    .line 168
    new-instance v12, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-eqz v26, :cond_4

    .line 179
    .line 180
    invoke-virtual/range {v26 .. v26}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    goto :goto_4

    .line 185
    :cond_4
    const-string v4, "\u6211"

    .line 186
    .line 187
    :goto_4
    move-object v7, v4

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    const/4 v11, 0x0

    .line 201
    move-object v4, v12

    .line 202
    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v2, v3, v12}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v3, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 214
    .line 215
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 216
    .line 217
    new-instance v12, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    if-eqz v4, :cond_5

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 249
    .line 250
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v23

    .line 254
    :cond_5
    move-object/from16 v6, v23

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-nez v4, :cond_6

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_5

    .line 271
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :goto_5
    move-object v7, v0

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getComment_id()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_type()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;->getRid()I

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    move-object v4, v12

    .line 293
    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    invoke-direct {v2, v3, v12}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v1, Lcom/join/mgps/activity/ForumProfileMessageActivity;->listData:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .line 308
    .line 309
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method updateMessageData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageBeans",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;",
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
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->pageCount:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity;->forumProfileMessageBeans:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
