.class public Lcom/join/mgps/activity/SimulatorExitPlayActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/o7$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00a5
.end annotation


# instance fields
.field adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field adTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field adType:I

.field adapter:Lcom/join/mgps/adapter/o7;

.field battleUids:[I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

.field endId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field friendClient:Lcom/join/mgps/rpc/j;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private hasStatPdPoint:Z

.field hideLevel:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field info:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isBside:Z

.field private isHasAchievement:Z

.field isStatEndGameFailedPoint:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field lastInsertPosition:I

.field level:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field levelIcon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field levelName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field levelUrl:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field max:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progress:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field save:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field streamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorExitListBean;",
            ">;"
        }
    .end annotation
.end field

.field time:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
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
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adType:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 12
    .line 13
    return-void
.end method

.method private initViews()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->info:Landroid/view/View;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const v2, 0x7f071424

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const v2, 0x7f071396

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    float-to-int v1, v1

    .line 65
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressTv:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string v1, "#82888E"

    .line 83
    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const v2, 0x7f060503

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelIcon:Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 114
    .line 115
    const v3, 0x7f0714ab

    .line 116
    .line 117
    .line 118
    const v4, 0x7f0715f8

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    const v2, 0x7f0714ab

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    const v2, 0x7f0715f8

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    float-to-int v1, v1

    .line 139
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const v3, 0x7f0715f8

    .line 155
    .line 156
    .line 157
    :goto_4
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    float-to-int v1, v1

    .line 162
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    .line 164
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelIcon:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lambda$setData$0(Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setData$0(Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private needShowAd()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method


# virtual methods
.method add(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 29
    .line 30
    .line 31
    const-string v0, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->o()Lb7/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v1}, Lb7/h;->i(Lcom/join/mgps/dto/FriendReqBean;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity$b;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity$b;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method addSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u5df2\u53d1\u9001\u52a0\u597d\u53cb\u7533\u8bf7"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v2, v2, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eq v2, p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->setSendFriendRequestStatus(Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method afterLogin()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u5bf9\u5c40\u8be6\u60c5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->friendClient:Lcom/join/mgps/rpc/j;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pageVersion()Lorg/androidannotations/api/sharedpreferences/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x2

    .line 37
    const/4 v2, 0x0

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->hideLevel:Z

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevelVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevelVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->save:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->save:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevel()V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/join/mgps/adapter/o7;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/o7;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/o7;->Q(Lcom/join/mgps/adapter/o7$a;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity$a;

    .line 93
    .line 94
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity$a;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Lcom/papa/sim/statistic/Event;->ExitGame_Recommend:Lcom/papa/sim/statistic/Event;

    .line 117
    .line 118
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 119
    .line 120
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->initViews()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method bindGDTAdStreamListener(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorExitListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 19
    .line 20
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x4

    .line 23
    .line 24
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 39
    .line 40
    iget v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 41
    .line 42
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    invoke-virtual {v3, v4, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 48
    .line 49
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 50
    .line 51
    add-int/lit8 v3, v3, -0x1

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 54
    .line 55
    .line 56
    if-lez v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method bindTTAdStreamListener(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorExitListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 19
    .line 20
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x4

    .line 23
    .line 24
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 39
    .line 40
    iget v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 41
    .line 42
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    invoke-virtual {v3, v4, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;

    .line 48
    .line 49
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->lastInsertPosition:I

    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 62
    .line 63
    .line 64
    if-lez v0, :cond_0

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 67
    .line 68
    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method calcLevel()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->time:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getCurrent_lv_times()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getNext_lv_times()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x1

    .line 41
    if-nez v6, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v8, "\u4f20\u8bf4"

    .line 48
    .line 49
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v8, "\u5b97\u5e08"

    .line 62
    .line 63
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v8, "\u7cbe\u82f1"

    .line 76
    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    const/4 v0, 0x3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v6, "\u8d44\u6df1"

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .line 114
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const-class v10, Ljava/util/ArrayList;

    .line 123
    .line 124
    new-array v11, v7, [Ljava/lang/Class;

    .line 125
    .line 126
    const-class v12, Lcom/join/mgps/dto/GameTimeLevel;

    .line 127
    .line 128
    aput-object v12, v11, v1

    .line 129
    .line 130
    invoke-virtual {v9, v10, v11}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v8, v6, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Ljava/util/ArrayList;

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    new-array v2, v8, [I

    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-ge v8, v9, :cond_6

    .line 154
    .line 155
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    check-cast v9, Lcom/join/mgps/dto/GameTimeLevel;

    .line 160
    .line 161
    invoke-virtual {v9}, Lcom/join/mgps/dto/GameTimeLevel;->getVal()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    aput v9, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    add-int/lit8 v8, v8, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception v6

    .line 171
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :cond_6
    add-int/2addr v4, v3

    .line 175
    const/4 v3, 0x0

    .line 176
    :goto_2
    array-length v6, v2

    .line 177
    if-ge v1, v6, :cond_9

    .line 178
    .line 179
    add-int/lit8 v0, v1, 0x1

    .line 180
    .line 181
    aget v5, v2, v1

    .line 182
    .line 183
    sub-int v3, v5, v3

    .line 184
    .line 185
    if-le v4, v3, :cond_8

    .line 186
    .line 187
    array-length v6, v2

    .line 188
    sub-int/2addr v6, v7

    .line 189
    if-ne v1, v6, :cond_7

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    sub-int/2addr v4, v3

    .line 193
    move v1, v0

    .line 194
    move v13, v5

    .line 195
    move v5, v3

    .line 196
    move v3, v13

    .line 197
    goto :goto_2

    .line 198
    :cond_8
    :goto_3
    move v5, v3

    .line 199
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progress:I

    .line 204
    .line 205
    iput v5, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->max:I

    .line 206
    .line 207
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->level:I

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catch_1
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_a
    :goto_4
    return-void
.end method

.method exit()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isStatEndGameFailedPoint:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->endId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameVSFail:Lcom/papa/sim/statistic/Event;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v0, v1}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->sendEmuExitBroadcast(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->V()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->needShowAd()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/join/mgps/event/a;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-direct {v1, v2}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method getAchievementData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setUid(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setPlugVersion(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setGameId(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestSimulatorAchievementListArgs;->setToken(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->A0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/join/mgps/dto/SimulatorAchievementBean;

    .line 110
    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method

.method info()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public like(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->like1(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public like1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "uid"

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v2, "token"

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v0, "likeUid"

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->friendClient:Lcom/join/mgps/rpc/j;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->h(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->likeSuccess(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method likeSuccess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8d5e\u6210\u529f"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v2, v2, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eq v2, p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->setLikeStatus(Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method load()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setUid(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setToken(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->battleUids:[I

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    if-nez v0, :cond_0

    .line 105
    .line 106
    new-array v0, v1, [I

    .line 107
    .line 108
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->battleUids:[I

    .line 109
    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->battleUids:[I

    .line 116
    .line 117
    array-length v4, v3

    .line 118
    :goto_0
    if-ge v1, v4, :cond_1

    .line 119
    .line 120
    aget v5, v3, v1

    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setBattleUidList(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 142
    .line 143
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/k;->U(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    const/4 v2, 0x1

    .line 154
    if-ne v1, v2, :cond_2

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setData(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    const v0, 0x7f1203b9

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->updateTitle()V

    .line 191
    .line 192
    .line 193
    :goto_1
    return-void
.end method

.method public onAdEvent(Lcom/join/mgps/event/b0;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->c()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x6

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/o7;->N(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->c()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x5

    .line 45
    if-ne v0, v1, :cond_6

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v0, v0, Ljava/util/List;

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->a()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x4

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne v0, v3, :cond_4

    .line 74
    .line 75
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adType:I

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/util/List;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-lez v0, :cond_6

    .line 90
    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ge v2, v0, :cond_6

    .line 96
    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 102
    .line 103
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    new-instance v4, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 108
    .line 109
    invoke-direct {v4, v1, v3}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;->setObj(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 123
    .line 124
    .line 125
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->a()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v3, 0x2

    .line 133
    if-ne v0, v3, :cond_6

    .line 134
    .line 135
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adType:I

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/util/List;

    .line 142
    .line 143
    if-eqz p1, :cond_6

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-lez v0, :cond_6

    .line 150
    .line 151
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-ge v2, v0, :cond_6

    .line 156
    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 162
    .line 163
    new-instance v3, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 164
    .line 165
    invoke-direct {v3, v1, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;->setObj(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    if-nez v2, :cond_5

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 179
    .line 180
    .line 181
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    :goto_2
    return-void
.end method

.method public onAddFriend(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendUid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->add(I)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "1"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/high16 v0, -0x1000000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->needShowAd()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lcom/join/mgps/event/a;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-direct {v0, v1}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    instance-of v2, v2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->hideLevel:Z

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevelVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevelVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->save:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->save:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->calcLevel()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x1

    .line 63
    if-ge v0, v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->load()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->getAchievementData()V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method resume()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->needShowAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/mgps/event/a;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-direct {v1, v2}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->sendEmuExitBroadcast(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->g()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method save()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "eventName"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "gameId"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method sendEmuExitBroadcast(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exit"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.emu.ad.result"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "adAction"

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "exit"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v1, 0x1a

    .line 26
    .line 27
    if-lt p1, v1, :cond_0

    .line 28
    .line 29
    const/high16 p1, 0x1000000

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/va/overmind/i;->t0(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method setData(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lez v2, :cond_3

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->title:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v4, "\u5bf9\u5c40\u8be6\u60c5"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ""

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getBuddyList()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 118
    .line 119
    new-instance v5, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 120
    .line 121
    invoke-direct {v5, v3, v4}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->title:Landroid/widget/TextView;

    .line 129
    .line 130
    const-string v4, "\u4e3a\u60a8\u63a8\u8350\u4ee5\u4e0b\u6e38\u620f"

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-lez v2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getGameList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_5

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 170
    .line 171
    new-instance v5, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 172
    .line 173
    invoke-direct {v5, v1, v4}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-lez v2, :cond_6

    .line 191
    .line 192
    new-instance v2, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 193
    .line 194
    const/4 v4, 0x5

    .line 195
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-direct {v2, v4, v5}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->hasStatPdPoint:Z

    .line 206
    .line 207
    if-nez v2, :cond_6

    .line 208
    .line 209
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    sget-object v4, Lcom/papa/sim/statistic/Event;->pdSimulatorOutDetails:Lcom/papa/sim/statistic/Event;

    .line 214
    .line 215
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 216
    .line 217
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->gameId:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v6}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v2, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 251
    .line 252
    .line 253
    iput-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->hasStatPdPoint:Z

    .line 254
    .line 255
    :cond_6
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->needShowAd()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 267
    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-lez v0, :cond_8

    .line 275
    .line 276
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adType:I

    .line 277
    .line 278
    if-ne v0, v1, :cond_7

    .line 279
    .line 280
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->bindTTAdStreamListener(Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_7
    if-ne v0, v3, :cond_8

    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->streamList:Ljava/util/List;

    .line 289
    .line 290
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->bindGDTAdStreamListener(Ljava/util/List;)V

    .line 291
    .line 292
    .line 293
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->calcLevel()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-eqz v0, :cond_b

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-eqz v0, :cond_b

    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eq v0, v1, :cond_9

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adTitle:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-eqz v0, :cond_a

    .line 347
    .line 348
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adTitle:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    :cond_a
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    if-eqz v0, :cond_c

    .line 391
    .line 392
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-lez v0, :cond_c

    .line 405
    .line 406
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 419
    .line 420
    new-instance v0, Lcom/join/mgps/activity/n9;

    .line 421
    .line 422
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/n9;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adTitle:Landroid/widget/TextView;

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 437
    .line 438
    const/16 v0, 0x8

    .line 439
    .line 440
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adTitle:Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    :cond_c
    :goto_5
    return-void
.end method

.method setLevel()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->hideLevel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->level:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const-string v0, "\u4f20\u8bf4"

    .line 12
    .line 13
    const v1, 0x7f08061f

    .line 14
    .line 15
    .line 16
    const-string v2, "#FF760C"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x4

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const v1, 0x7f08061e

    .line 23
    .line 24
    .line 25
    const-string v0, "\u5b97\u5e08"

    .line 26
    .line 27
    const-string v2, "#F9C439"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x3

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const v1, 0x7f08061c

    .line 34
    .line 35
    .line 36
    const-string v0, "\u7cbe\u82f1"

    .line 37
    .line 38
    const-string v2, "#DB64EE"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v1, 0x2

    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    const v1, 0x7f08061d

    .line 45
    .line 46
    .line 47
    const-string v0, "\u8d44\u6df1"

    .line 48
    .line 49
    const-string v2, "#65C73C"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const v1, 0x7f08061b

    .line 53
    .line 54
    .line 55
    const-string v0, "\u89c1\u4e60"

    .line 56
    .line 57
    const-string v2, "#21E1E5"

    .line 58
    .line 59
    :goto_0
    iget-boolean v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isBside:Z

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    const/16 v5, 0x8

    .line 63
    .line 64
    if-eqz v3, :cond_6

    .line 65
    .line 66
    iget-boolean v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 67
    .line 68
    if-nez v3, :cond_5

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    const-string v0, "\u6210\u5c31"

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelName:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelName:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string v1, "#C1D0DD"

    .line 81
    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelIcon:Landroid/widget/ImageView;

    .line 90
    .line 91
    const v1, 0x7f080a50

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->info:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelName:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 118
    .line 119
    const/16 v3, 0x64

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->max:I

    .line 130
    .line 131
    if-nez v2, :cond_7

    .line 132
    .line 133
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progress:I

    .line 134
    .line 135
    iput v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->max:I

    .line 136
    .line 137
    :cond_7
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->max:I

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    iget-object v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 142
    .line 143
    iget v7, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progress:I

    .line 144
    .line 145
    mul-int/lit8 v7, v7, 0x64

    .line 146
    .line 147
    div-int/2addr v7, v2

    .line 148
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressTv:Landroid/widget/TextView;

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progress:I

    .line 159
    .line 160
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v6, "/"

    .line 164
    .line 165
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->max:I

    .line 169
    .line 170
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelName:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelIcon:Landroid/widget/ImageView;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->info:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 196
    .line 197
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_2
    return-void
.end method

.method setLevelVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->save:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelName:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressTv:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->levelIcon:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->isHasAchievement:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->setLevel()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->initViews()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressTv:Landroid/widget/TextView;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "/"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-gt v0, v1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 92
    .line 93
    const-string v0, "\u5df2\u89e3\u9501\u6240\u6709\u6210\u5c31"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "\u8fd8\u6709"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    sub-int/2addr v2, p1

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, "\u4e2a\u6210\u5c31\u7b49\u4f60\u89e3\u9501"

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->showTouristAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-void
.end method

.method showTouristAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Papa_Stat_SharedPreferences"

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "achievement_done"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/google/gson/JsonElement;

    .line 55
    .line 56
    const-class v4, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressTv:Landroid/widget/TextView;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "/"

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->tvTips:Landroid/widget/TextView;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "\u8fd8\u6709"

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    sub-int/2addr p1, v2

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, "\u4e2a\u6210\u5c31\u7b49\u4f60\u89e3\u9501"

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method toast(Ljava/lang/String;)V
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

.method updateTitle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->title:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u4e3a\u60a8\u63a8\u8350\u4ee5\u4e0b\u6e38\u620f"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->title:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string v1, "\u7f51\u7edc\u5df2\u65ad\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
