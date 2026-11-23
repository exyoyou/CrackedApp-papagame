.class public Lcom/join/mgps/activity/SimulatorExitPlayActivity1;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00a6
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

.field battleUids:[I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field btn_receive_r1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_receive_r2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_share:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

.field endId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private exitPanel:Lcom/join/mgps/dto/SimulatorExitPanel;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field game_bg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field game_block:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field game_cover:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field max:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

.field play_time:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field r1_desc:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r1_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r2_desc:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r2_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private refreshData:Z

.field reward:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward1:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward1_icon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward2:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward2_icon:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward_ad:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward_bg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reward_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field rpcLoginClient:Lb7/j;

.field save:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field se_reward_title:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field share_container:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field snapshotPath:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
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
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->refreshData:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adType:I

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->refreshData:Z

    .line 2
    .line 3
    return p1
.end method

.method private bindListener(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeAdData",
            "id"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$l;

    .line 2
    .line 3
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$l;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    new-instance p2, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$a;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$a;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getInteractionType()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    new-instance p2, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$b;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$b;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance p2, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$c;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$c;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->lambda$setData$0(Lcom/join/mgps/dto/AppBeanMain;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->lambda$bindRecommendAd$1(Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$bindRecommendAd$1(Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1, p0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->b()Lcom/join/mgps/rpc/impl/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/j;->a()Lb7/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcLoginClient:Lb7/j;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pageVersion()Lorg/androidannotations/api/sharedpreferences/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x2

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isBside:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_block:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_block:Landroid/view/View;

    .line 49
    .line 50
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$f;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$f;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setLevel()V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/papa/sim/statistic/Event;->ExitGame_Recommend:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->info:Landroid/view/View;

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isBside:Z

    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isHasAchievement:Z

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->play_time:Landroid/widget/TextView;

    .line 91
    .line 92
    iget v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->time:I

    .line 93
    .line 94
    int-to-long v1, v1

    .line 95
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->e(J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->snapshotPath:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->receiveScreenShot(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method bindGDTAdStreamListener(Ljava/util/List;)V
    .locals 1
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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method bindRecommendAd(Lcom/join/mgps/dto/CommonAdBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getAd_switch()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f0d0495

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x7f0a0200

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4, v3}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/4 v4, 0x1

    .line 98
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/facebook/drawee/backends/pipeline/e;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getController()Ls3/a;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->Q(Ls3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/facebook/drawee/backends/pipeline/e;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/JpInfoBean;->getJump_type()Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/join/mgps/dto/JpInfoBean;->getTpl_type()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p1, ""

    .line 182
    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 194
    .line 195
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 196
    .line 197
    .line 198
    const/16 v2, 0x332e

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 205
    .line 206
    .line 207
    new-instance p1, Lcom/join/mgps/activity/o9;

    .line 208
    .line 209
    invoke-direct {p1, v0}, Lcom/join/mgps/activity/o9;-><init>(Lcom/join/mgps/Util/IntentDateBean;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    :cond_3
    :goto_0
    return-void
.end method

.method bindTTAdStreamListener(Ljava/util/List;)V
    .locals 2
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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitListBean;->getObj()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$d;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$d;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method btn_share()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->share_container:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0100a0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->share_container:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->share_container:Landroid/view/View;

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$i;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$i;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method calcLevel()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

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
    iget v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->time:I

    .line 23
    .line 24
    div-int/lit8 v3, v3, 0x3c

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getCurrent_lv_times()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getNext_lv_times()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    if-nez v6, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v8, "\u4f20\u8bf4"

    .line 50
    .line 51
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string v8, "\u5b97\u5e08"

    .line 64
    .line 65
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v8, "\u7cbe\u82f1"

    .line 78
    .line 79
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMasteryLevel;->getLevel()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v6, "\u8d44\u6df1"

    .line 92
    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const/4 v0, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 116
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const-class v10, Ljava/util/ArrayList;

    .line 125
    .line 126
    new-array v11, v7, [Ljava/lang/Class;

    .line 127
    .line 128
    const-class v12, Lcom/join/mgps/dto/GameTimeLevel;

    .line 129
    .line 130
    aput-object v12, v11, v1

    .line 131
    .line 132
    invoke-virtual {v9, v10, v11}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v8, v6, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Ljava/util/ArrayList;

    .line 141
    .line 142
    if-eqz v6, :cond_6

    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    new-array v2, v8, [I

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-ge v8, v9, :cond_6

    .line 156
    .line 157
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    check-cast v9, Lcom/join/mgps/dto/GameTimeLevel;

    .line 162
    .line 163
    invoke-virtual {v9}, Lcom/join/mgps/dto/GameTimeLevel;->getVal()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    aput v9, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception v6

    .line 173
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :cond_6
    add-int/2addr v4, v3

    .line 177
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 178
    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    :goto_2
    array-length v6, v2

    .line 182
    if-ge v1, v6, :cond_9

    .line 183
    .line 184
    add-int/lit8 v0, v1, 0x1

    .line 185
    .line 186
    aget v5, v2, v1

    .line 187
    .line 188
    sub-int v3, v5, v3

    .line 189
    .line 190
    if-le v4, v3, :cond_8

    .line 191
    .line 192
    array-length v6, v2

    .line 193
    sub-int/2addr v6, v7

    .line 194
    if-ne v1, v6, :cond_7

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    sub-int/2addr v4, v3

    .line 198
    move v1, v0

    .line 199
    move v13, v5

    .line 200
    move v5, v3

    .line 201
    move v3, v13

    .line 202
    goto :goto_2

    .line 203
    :cond_8
    :goto_3
    move v5, v3

    .line 204
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progress:I

    .line 209
    .line 210
    iput v5, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 211
    .line 212
    iput v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level:I

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setLevel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catch_1
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    .line 221
    .line 222
    :cond_a
    :goto_4
    return-void
.end method

.method changeRewardType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level_bar:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method closeSharePop()V
    .locals 2

    .line 1
    const v0, 0x7f0100a6

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$j;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$j;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->share_container:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method exit()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isStatEndGameFailedPoint:Z

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
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->endId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sendEmuExitBroadcast(I)V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->needShowAd()Z

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
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcGameClient:Lcom/join/mgps/rpc/k;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method

.method getExitPanel()V
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
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcGameClient:Lcom/join/mgps/rpc/k;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->showAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

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
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadReward()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setUid(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setToken(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->battleUids:[I

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    if-nez v0, :cond_0

    .line 108
    .line 109
    new-array v0, v1, [I

    .line 110
    .line 111
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->battleUids:[I

    .line 112
    .line 113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->battleUids:[I

    .line 119
    .line 120
    array-length v4, v3

    .line 121
    :goto_0
    if-ge v1, v4, :cond_1

    .line 122
    .line 123
    aget v5, v3, v1

    .line 124
    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->getArgs()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;->setBattleUidList(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 145
    .line 146
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/k;->U(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getFlag()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v2, 0x1

    .line 157
    if-ne v1, v2, :cond_2

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setData(Lcom/join/mgps/dto/SimulatorExitPlayResponseData;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->toast(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    const v0, 0x7f1203b9

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    :cond_4
    :goto_1
    return-void
.end method

.method loadRecommendAd()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestCommonAdArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestCommonAdArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestCommonAdArgs;->setPage(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$8;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$8;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestCommonAdArgs;->setPositionMarkList(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/rpc/impl/i;->K0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-lez v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/util/List;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/join/mgps/dto/CommonAdBean;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindRecommendAd(Lcom/join/mgps/dto/CommonAdBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    return-void
.end method

.method loadReward()V
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
    new-instance v0, Lcom/join/mgps/dto/SimulatorExitPanelArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/SimulatorExitPanelArgs;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPanelArgs;->setUid(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPanelArgs;->setGameId(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorExitPanelArgs;->setUserToken(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setUid(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setUserToken(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->rpcLoginClient:Lb7/j;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Lb7/j;->d(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->updateReward(Lcom/join/mgps/dto/ResponseModel;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-void
.end method

.method loadRewardAd()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/a;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method onAdDestroy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adType:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 14
    .line 15
    :cond_0
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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->c()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x5

    .line 23
    if-ne v0, v1, :cond_b

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRecommendAd()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v0, v0, Ljava/util/List;

    .line 46
    .line 47
    if-eqz v0, :cond_c

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->a()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x4

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne v0, v3, :cond_6

    .line 68
    .line 69
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adType:I

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/List;

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lez v0, :cond_5

    .line 84
    .line 85
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ge v2, v0, :cond_5

    .line 90
    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 96
    .line 97
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 102
    .line 103
    invoke-direct {v4, v1, v3}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;->setObj(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 117
    .line 118
    .line 119
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindTTAdStreamListener(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->a()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v3, 0x2

    .line 134
    if-ne v0, v3, :cond_9

    .line 135
    .line 136
    iput v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adType:I

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/util/List;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-lez v0, :cond_8

    .line 151
    .line 152
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-ge v2, v0, :cond_8

    .line 157
    .line 158
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 163
    .line 164
    new-instance v3, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 165
    .line 166
    invoke-direct {v3, v1, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;-><init>(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/SimulatorExitListBean;->setObj(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    if-nez v2, :cond_7

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 180
    .line 181
    .line 182
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindGDTAdStreamListener(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->a()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const/16 v1, 0xa

    .line 196
    .line 197
    if-ne v0, v1, :cond_c

    .line 198
    .line 199
    iput v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adType:I

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->b()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    .line 207
    if-eqz p1, :cond_c

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-lez v0, :cond_c

    .line 214
    .line 215
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 222
    .line 223
    const-string v0, ""

    .line 224
    .line 225
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindListener(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->isExpressAd()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_a

    .line 233
    .line 234
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$k;

    .line 235
    .line 236
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$k;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/windmill/sdk/natives/WMNativeAdData;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->render()V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_a
    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdContainer;

    .line 247
    .line 248
    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    new-instance v1, Lcom/join/mgps/ad/union/channel/tbid/a;

    .line 252
    .line 253
    invoke-direct {v1}, Lcom/join/mgps/ad/union/channel/tbid/a;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p0, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 260
    .line 261
    if-eqz p1, :cond_c

    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_b
    invoke-virtual {p1}, Lcom/join/mgps/event/b0;->c()I

    .line 273
    .line 274
    .line 275
    :cond_c
    :goto_2
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
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$e;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$e;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 47
    .line 48
    .line 49
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->streamList:Ljava/util/List;

    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->onAdDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->calcLevel()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->refreshData:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->load()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->refreshData:Z

    .line 20
    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isBside:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->getAchievementData()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method receiveScreenShot(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "imagePath"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.ShowShare.main"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "path="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "receiveScreenShot"

    .line 19
    .line 20
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "file://"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->game_bg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method resume()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/event/a;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sendEmuExitBroadcast(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->g()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->data:Lcom/join/mgps/dto/SimulatorExitPlayResponseData;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->calcLevel()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adTitle:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adTitle:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-lez v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->getAdInfo()Lcom/join/mgps/dto/RecomDatabean;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 133
    .line 134
    new-instance v0, Lcom/join/mgps/activity/p9;

    .line 135
    .line 136
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/p9;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adTitle:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 151
    .line 152
    const/16 v0, 0x8

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->adTitle:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :cond_4
    :goto_1
    return-void
.end method

.method setLevel()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->level:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "\u4f20\u8bf4"

    .line 7
    .line 8
    const v1, 0x7f0805f1

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const v1, 0x7f0805f0

    .line 16
    .line 17
    .line 18
    const-string v0, "\u5b97\u5e08"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    const v1, 0x7f0805ef

    .line 25
    .line 26
    .line 27
    const-string v0, "\u7cbe\u82f1"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const v1, 0x7f0805ee

    .line 34
    .line 35
    .line 36
    const-string v0, "\u8d44\u6df1"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const v1, 0x7f0805ed

    .line 40
    .line 41
    .line 42
    const-string v0, "\u89c1\u4e60"

    .line 43
    .line 44
    :goto_0
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isBside:Z

    .line 45
    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isHasAchievement:Z

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const-string v0, "\u6210\u5c31"

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelName:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelIcon:Landroid/widget/ImageView;

    .line 61
    .line 62
    const v1, 0x7f080a50

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->info:Landroid/view/View;

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 77
    .line 78
    const/16 v3, 0x64

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progress:I

    .line 93
    .line 94
    iput v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 95
    .line 96
    :cond_6
    iget v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 97
    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    iget v5, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progress:I

    .line 103
    .line 104
    mul-int/lit8 v5, v5, 0x64

    .line 105
    .line 106
    div-int/2addr v5, v2

    .line 107
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressTv:Landroid/widget/TextView;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progress:I

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "/"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->max:I

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelName:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->levelIcon:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->info:Landroid/view/View;

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_2
    return-void
.end method

.method sharePlatform(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u8fd9\u5173\u6211\u82b1\u4e86"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->time:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/i;->e(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\uff0c\u5feb\u5e2e\u6211\u770b\u770b\u600e\u4e48\u8fc7\u5173\uff01"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " #"

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, "/user/share/game_info_v1/"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->gameId:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, "?t="

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->snapshotPath:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v3, Lcom/join/mgps/dto/ShareBean;

    .line 119
    .line 120
    invoke-direct {v3}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "\u6ca1\u4eba\u80fd\u8fc7\u8fd9\u5173\uff0c\u6211\u8bf4\u7684"

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/ShareBean;->setImagePath(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p0, p1, v3}, Lcom/join/mgps/Util/w;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method share_qq()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sharePlatform(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->closeSharePop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method share_qzone()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sharePlatform(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->closeSharePop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method share_wx()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sharePlatform(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->closeSharePop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method share_wx_comments()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->sharePlatform(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->closeSharePop()V

    .line 6
    .line 7
    .line 8
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
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->isHasAchievement:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->setLevel()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressTv:Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "/"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-gt v0, v1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->tvTips:Landroid/widget/TextView;

    .line 89
    .line 90
    const-string v0, "\u5df2\u89e3\u9501\u6240\u6709\u6210\u5c31"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->tvTips:Landroid/widget/TextView;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "\u8fd8\u6709"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getTarget()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAchievementBean;->getDone()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    sub-int/2addr v2, p1

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, "\u4e2a\u6210\u5c31\u7b49\u4f60\u89e3\u9501"

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->showTouristAchievement(Lcom/join/mgps/dto/SimulatorAchievementBean;)V

    .line 134
    .line 135
    .line 136
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressTv:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->progressBar:Landroid/widget/ProgressBar;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->tvTips:Landroid/widget/TextView;

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

.method updateReward(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SimulatorExitPanel;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->changeRewardType(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRewardAd()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/SimulatorExitPanel;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->exitPanel:Lcom/join/mgps/dto/SimulatorExitPanel;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->changeRewardType(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRewardAd()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPanel;->getShowDailyReward()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPanel;->getDailyReward()Lcom/join/mgps/dto/DailyReward;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_7

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->changeRewardType(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_title:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPanel;->getDailyReward()Lcom/join/mgps/dto/DailyReward;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/DailyReward;->getTitle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorExitPanel;->getDailyReward()Lcom/join/mgps/dto/DailyReward;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/DailyReward;->getItems()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward1:Landroid/view/View;

    .line 72
    .line 73
    const/16 v3, 0x8

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward2:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ge v2, v3, :cond_6

    .line 91
    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/join/mgps/dto/Item;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getItemId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const v5, 0x7f0803c0

    .line 103
    .line 104
    .line 105
    const-string v6, "\u9886\u53d6"

    .line 106
    .line 107
    const v7, 0x7f0803bb

    .line 108
    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getItemId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v8, "daily_sign"

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward1:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r1_name:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getLabel()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r1_desc:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getDesc()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 148
    .line 149
    new-instance v8, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$g;

    .line 150
    .line 151
    invoke-direct {v8, p0, v3}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$g;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/join/mgps/dto/Item;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getStatus()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-ne v3, v0, :cond_2

    .line 162
    .line 163
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 169
    .line 170
    const-string v4, "\u5df2\u9886\u53d6"

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r1:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getItemId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_5

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getItemId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const-string v8, "net_gift"

    .line 198
    .line 199
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward2:Landroid/view/View;

    .line 206
    .line 207
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r2_name:Landroid/widget/TextView;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getLabel()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->r2_desc:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getDesc()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 229
    .line 230
    new-instance v8, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;

    .line 231
    .line 232
    invoke-direct {v8, p0, v3}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;-><init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/join/mgps/dto/Item;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/join/mgps/dto/Item;->getStatus()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-ne v3, v0, :cond_4

    .line 243
    .line 244
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v4, "\u53bb\u4f7f\u7528"

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 258
    .line 259
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    .line 261
    .line 262
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->btn_receive_r2:Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_6
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 272
    .line 273
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 274
    .line 275
    .line 276
    sget-object v0, Lcom/papa/sim/statistic/EventP$ChatId;->exitGamePage:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 286
    .line 287
    .line 288
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->changeRewardType(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->loadRewardAd()V

    .line 306
    .line 307
    .line 308
    :goto_2
    return-void
.end method
