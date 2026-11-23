.class public Lcom/join/mgps/activity/HMCloudMainActivity;
.super Lcom/join/mgps/activity/HMCloudMenuActivity;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/HmcpPlayerListener;
.implements Lcom/haima/hmcp/listeners/OnSendWsMessageListener;
.implements Lcom/haima/hmcp/listeners/StreamingCallback;
.implements Lcom/haima/hmcp/listeners/IVideoDelayCallback;
.implements Lcom/join/mgps/hmcloud/t;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0070
.end annotation


# static fields
.field public static EVENT_NAME:Ljava/lang/String; = "HMCloudMain"

.field public static final H_RESTART_PLAY:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "HMCloudMainActivity"


# instance fields
.field private accountClientV2:Lcom/join/mgps/rpc/c;

.field animationSet:Landroid/view/animation/AnimationSet;

.field archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field archivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field bbsStrategySwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field checkInPop:Landroid/widget/PopupWindow;

.field checkRealNameRequired:Z

.field private cl_init_state:Landroidx/constraintlayout/widget/ConstraintLayout;

.field cl_load_state:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private cl_loading_state:Landroidx/constraintlayout/widget/ConstraintLayout;

.field cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cl_wait_state:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

.field public countDownLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/OpGameTimeCountDown;",
            ">;"
        }
    .end annotation
.end field

.field curServerId:Ljava/lang/String;

.field firstStartPlay:I

.field public fpsLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g_1:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gameClient:Lcom/join/mgps/rpc/k;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gamePackageName:Ljava/lang/String;

.field gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gif_view:Lcom/join/mgps/customview/GifView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gif_view_1:Lcom/join/mgps/customview/GifView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field goldFingerSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field htv_1:Lcom/papa91/arc/widget/htmltext/HtmlTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isFirstFrameArrived:Z

.field isShowLoadState:Z

.field isShowQueueState:Z

.field isSign:Z

.field iv_close:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private ll_x86_switch:Landroid/widget/RelativeLayout;

.field loadingServerList:Z

.field mHandler:Landroid/os/Handler;

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private pb_view:Landroid/widget/ProgressBar;

.field playTime:J
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

.field retryCount:I

.field private rg_touch_mode:Landroid/widget/RadioGroup;

.field rl_ad:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field private sdv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field secretKeyStr:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field serverDialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field showTopTip:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private startPlayTime:J

.field public toastLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tv_btn_1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_btn_2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tv_text_1:Landroid/widget/TextView;

.field private tv_text_2:Landroid/widget/TextView;

.field tv_text_3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_text_4:Lcom/papa91/arc/widget/htmltext/HtmlTextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_text_5:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_text_6:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_text_7:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v_mimi:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field waitDialog:Lcom/kongzue/dialogx/dialogs/WaitDialog;

.field zoom_layout:Lcom/join/kotlin/module/hmcloud/pad/HMZoomLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->showTopTip:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->secretKeyStr:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->goldFingerSwitch:I

    .line 12
    .line 13
    iput v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->bbsStrategySwitch:I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->curServerId:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->fpsLive:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->countDownLive:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    iput v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->retryCount:I

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkRealNameRequired:Z

    .line 41
    .line 42
    new-instance v0, Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v2, Lcom/join/mgps/activity/j4;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/j4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isFirstFrameArrived:Z

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isSign:Z

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->loadingServerList:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowQueueState:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowLoadState:Z

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    iput-wide v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 67
    .line 68
    iput v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->firstStartPlay:I

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->waitDialog:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 72
    .line 73
    return-void
.end method

.method public static synthetic L(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$19(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$afterViews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showCloudSignTip$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$20(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showGameOver$10(Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showCloudSignTip$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showTip$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showQueueState$12(Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$26(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic W(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$17(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic X(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$23(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Y(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$onUpdateProgress$15(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    return-void
.end method

.method public static synthetic Z(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$6(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic a0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$24()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->sendMessage(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private afterFirstFrameArrival()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$c;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setCid(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isFirstFrameArrived:Z

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string v0, "\u70b9\u51fb\u53f3\u4fa7\u60ac\u6d6e\u7403\u66f4\u6539\u8bbe\u7f6e\u54e6~"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->toast(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    sget-object v4, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v3, v4, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->checkRealName()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->signViewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->checkSign()V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->hideHmVirtual()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->setLastResolution()V

    .line 123
    .line 124
    .line 125
    iget-wide v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 126
    .line 127
    const-wide/16 v5, 0x3c

    .line 128
    .line 129
    cmp-long v0, v3, v5

    .line 130
    .line 131
    if-gez v0, :cond_0

    .line 132
    .line 133
    new-instance v0, Lcom/join/mgps/dto/OpGameTimeCountDown;

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/join/mgps/dto/OpGameTimeCountDown;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-wide v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 139
    .line 140
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/OpGameTimeCountDown;->setAhead(J)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->countDownLive:Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMute()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 161
    .line 162
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMute()Landroidx/lifecycle/MutableLiveData;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/widgets/BaseVideoView;->setAudioMute(Z)V

    .line 179
    .line 180
    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->checkGuide()V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x1

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, 0x0

    .line 187
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isFirstFrameArrived:Z

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->hookKeyboardShow()V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/haima/hmcp/HmcpManager;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    sget-object v4, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 201
    .line 202
    if-ne v3, v4, :cond_3

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const/4 v1, 0x0

    .line 206
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isHmCloudPc()Landroidx/lifecycle/MutableLiveData;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTouchMode()Landroidx/lifecycle/MutableLiveData;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    if-nez v2, :cond_4

    .line 235
    .line 236
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTouchMode()Landroidx/lifecycle/MutableLiveData;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 243
    .line 244
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/BaseVideoView;->getTouchMode()Lcom/haima/hmcp/enums/TouchMode;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_4
    if-eqz v1, :cond_5

    .line 260
    .line 261
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeys()V

    .line 264
    .line 265
    .line 266
    :cond_5
    return v0
.end method

.method public static synthetic b0(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$25(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c0(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$22(Lorg/json/JSONObject;)V

    return-void
.end method

.method private collectOpInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$n;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$n;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->collectOpInputData(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic d0(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$5(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e0(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$toastTimeCountDown1$16(Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$8(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-void
.end method

.method public static synthetic g0(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$afterViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showQueueState$13(Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V

    return-void
.end method

.method private hideHmVirtual()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$d;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$d;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private hideTimeTip(Landroid/view/View;Landroid/view/animation/AnimationSet;JZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "animationSet",
            "delay",
            "showCharge"
        }
    .end annotation

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    const/high16 v8, 0x3f800000    # 1.0f

    .line 11
    .line 12
    move-object v0, v9

    .line 13
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, p3, p4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 45
    .line 46
    .line 47
    new-instance p3, Lcom/join/mgps/activity/HMCloudMainActivity$o;

    .line 48
    .line 49
    invoke-direct {p3, p0, p1, p5}, Lcom/join/mgps/activity/HMCloudMainActivity$o;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/View;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static synthetic i0(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$showGameOver$11(Lcom/join/mgps/dto/ExtBean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private initUIData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->sdv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_1:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view_1:Lcom/join/mgps/customview/GifView;

    .line 26
    .line 27
    const v1, 0x7f110003

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/GifView;->c(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public static synthetic j0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$18(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k0(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$HmcpPlayerStatusCallback$21(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l0(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$onChangeUiState$14(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$HmcpPlayerStatusCallback$17(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$HmcpPlayerStatusCallback$18(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$HmcpPlayerStatusCallback$19(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$HmcpPlayerStatusCallback$20(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/utils/StatusCallbackUtil;->DATA:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    const-string p1, "errorCodeWithoutCid"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "errorMessage"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "["

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "]"

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "200211008"

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    const-string v1, "500100024"

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 73
    .line 74
    const v2, 0x7f080870

    .line 75
    .line 76
    .line 77
    const-string v3, "\u9000\u51fa\u63d0\u9192"

    .line 78
    .line 79
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    .line 80
    .line 81
    const-string v5, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165"

    .line 82
    .line 83
    new-instance v6, Lcom/join/mgps/activity/i3;

    .line 84
    .line 85
    invoke-direct {v6}, Lcom/join/mgps/activity/i3;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    :goto_1
    iget p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->retryCount:I

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    if-ge p1, v1, :cond_2

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    iput p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->retryCount:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    const/16 v1, 0x3e9

    .line 104
    .line 105
    const-wide/16 v2, 0xbb8

    .line 106
    .line 107
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    sget-object v4, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 112
    .line 113
    const v5, 0x7f080870

    .line 114
    .line 115
    .line 116
    const-string v6, "\u9000\u51fa\u63d0\u9192"

    .line 117
    .line 118
    const-string v7, "\u9000\u51fa\u6e38\u620f"

    .line 119
    .line 120
    const-string v8, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165"

    .line 121
    .line 122
    new-instance v9, Lcom/join/mgps/activity/h3;

    .line 123
    .line 124
    invoke-direct {v9}, Lcom/join/mgps/activity/h3;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {v4 .. v9}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v1, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Y0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method private synthetic lambda$HmcpPlayerStatusCallback$21(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onFinishGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$HmcpPlayerStatusCallback$22(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/utils/StatusCallbackUtil;->DATA:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string p1, "finishTip"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "quitType"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showGameOver()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 41
    .line 42
    const v2, 0x7f080870

    .line 43
    .line 44
    .line 45
    const-string v3, "\u9000\u51fa\u63d0\u9192"

    .line 46
    .line 47
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    .line 48
    .line 49
    new-instance v6, Lcom/join/mgps/activity/g3;

    .line 50
    .line 51
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/g3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 52
    .line 53
    .line 54
    move-object v5, p1

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    .line 107
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGameLineUp:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 206
    .line 207
    .line 208
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 219
    .line 220
    .line 221
    :cond_2
    return-void
.end method

.method private static synthetic lambda$HmcpPlayerStatusCallback$23(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$HmcpPlayerStatusCallback$24()V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 2
    .line 3
    const v1, 0x7f080871

    .line 4
    .line 5
    .line 6
    const-string v2, "\u68c0\u6d4b\u5230\u8d26\u53f7\u4fe1\u606f\u6539\u53d8"

    .line 7
    .line 8
    const-string v3, "\u9000\u51fa\u6e38\u620f"

    .line 9
    .line 10
    const-string v4, "1\u3001\u53ef\u80fd\u56e0\u60a8\u767b\u5f55\u5176\u4ed6\u8d26\u53f7\u5bfc\u81f4\n2\u3001\u53ef\u80fd\u56e0\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\u60a8\u8d26\u53f7\u5bfc\u81f4"

    .line 11
    .line 12
    new-instance v5, Lcom/join/mgps/activity/q3;

    .line 13
    .line 14
    invoke-direct {v5}, Lcom/join/mgps/activity/q3;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$HmcpPlayerStatusCallback$25(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onFinishGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$HmcpPlayerStatusCallback$26(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/utils/StatusCallbackUtil;->DATA:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_3

    .line 19
    .line 20
    const-string p1, "stateChangeReason"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const-string v1, "errorMsg"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x1872c

    .line 33
    .line 34
    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    const-string v0, "\u6e38\u620f\u7ed3\u675f\uff0c\u65e0\u6548\u65f6\u957f"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const v1, 0x1872d

    .line 41
    .line 42
    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    new-instance p1, Lcom/join/mgps/activity/k4;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/join/mgps/activity/k4;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    const-string v0, "\u6e38\u620f\u5f02\u5e38\u9000\u51fa"

    .line 61
    .line 62
    :cond_2
    move-object v5, v0

    .line 63
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 64
    .line 65
    const v2, 0x7f080870

    .line 66
    .line 67
    .line 68
    const-string v3, "\u9000\u51fa\u63d0\u9192"

    .line 69
    .line 70
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    .line 71
    .line 72
    new-instance v6, Lcom/join/mgps/activity/f3;

    .line 73
    .line 74
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/f3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private synthetic lambda$afterViews$1(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getMember_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getCard_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->exitGame()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/join/mgps/rpc/h;->X:Ljava/lang/String;

    .line 57
    .line 58
    const-string v3, "isVip"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    const-string v3, "?"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    const-string v3, "="

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, "&isVip="

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, "?isVip="

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string p1, "intentdate"

    .line 135
    .line 136
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$k;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$k;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 146
    .line 147
    .line 148
    const-class v2, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 149
    .line 150
    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->exitGame()V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method private synthetic lambda$afterViews$2(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c1(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m1()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic lambda$initObserver$3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->setViewRatio(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$initObserver$4(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->setAudioMute(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$initObserver$5(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Lcom/haima/hmcp/enums/TouchMode;->parse(I)Lcom/haima/hmcp/enums/TouchMode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->getTouchMode()Lcom/haima/hmcp/enums/TouchMode;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eq v0, p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->setTouchMode(Lcom/haima/hmcp/enums/TouchMode;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private synthetic lambda$initObserver$6(Ljava/lang/Float;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->setMouseSensitivity(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$initObserver$7(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->zoom_layout:Lcom/join/kotlin/module/hmcloud/pad/HMZoomLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setAllowZoom(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$initObserver$8(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudSignTip(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlay()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method private synthetic lambda$onChangeUiState$14(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadingState(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showInitState(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadState(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showMenuState(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_2:Landroid/widget/TextView;

    .line 23
    .line 24
    const-string p2, "\u4e91\u7aef\u8d44\u6e90\u521d\u59cb\u5316\u4e2d\uff0c\u8bf7\u7a0d\u540e ..."

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showInitState(Z)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadState(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showMenuState(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_2:Landroid/widget/TextView;

    .line 48
    .line 49
    const-string p2, "\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u8d44\u6e90\u52a0\u8f7d\u4e2d..."

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->serverDialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->serverDialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlay()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_2
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 75
    .line 76
    if-ne p1, v0, :cond_4

    .line 77
    .line 78
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadingState(Z)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showInitState(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadState(Z)V

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_8

    .line 91
    .line 92
    const-string p1, "queueIndex"

    .line 93
    .line 94
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-gtz p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_3:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string p2, "\u5373\u5c06\u8fdb\u5165\u6e38\u620f"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_6:Landroid/widget/TextView;

    .line 108
    .line 109
    const/16 p2, 0x8

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_7:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_3:Landroid/widget/TextView;

    .line 122
    .line 123
    const-string v0, "\u7ebf\u8def\u7206\u6ee1 \u6392\u961f\u4e2d\uff0c\u524d\u65b9\u5269\u4f59\uff1a"

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_6:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_7:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_6:Landroid/widget/TextView;

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, ""

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    sget-object p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY_REQUEST:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 162
    .line 163
    if-ne p1, p2, :cond_5

    .line 164
    .line 165
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadingState(Z)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showInitState(Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadState(Z)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->play()V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    sget-object p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 184
    .line 185
    if-ne p1, p2, :cond_7

    .line 186
    .line 187
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadingState(Z)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showInitState(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadState(Z)V

    .line 197
    .line 198
    .line 199
    iget p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->firstStartPlay:I

    .line 200
    .line 201
    if-nez p1, :cond_6

    .line 202
    .line 203
    iput v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->firstStartPlay:I

    .line 204
    .line 205
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->afterFirstFrameArrival()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->firstStartPlay:I

    .line 210
    .line 211
    move v2, p1

    .line 212
    :cond_6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J0(Z)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_8

    .line 226
    .line 227
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 228
    .line 229
    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 230
    .line 231
    .line 232
    iput-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 233
    .line 234
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 235
    .line 236
    const-wide/16 v5, 0x1f4

    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    move-object v2, p0

    .line 240
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/HMCloudMainActivity;->hideTimeTip(Landroid/view/View;Landroid/view/animation/AnimationSet;JZ)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_7
    sget-object p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_FIRST_FRAME_ARRIVAL:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 245
    .line 246
    if-ne p1, p2, :cond_8

    .line 247
    .line 248
    iget p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->firstStartPlay:I

    .line 249
    .line 250
    if-eq p1, v1, :cond_8

    .line 251
    .line 252
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->afterFirstFrameArrival()Z

    .line 253
    .line 254
    .line 255
    :cond_8
    :goto_0
    return-void
.end method

.method private synthetic lambda$onUpdateProgress$15(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x18

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->pb_view:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, p2, v0}, Lcom/join/mgps/activity/e3;->a(Landroid/widget/ProgressBar;IZ)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->pb_view:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 25
    .line 26
    if-ne p1, p2, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_5:Landroid/widget/TextView;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "\u7ebf\u8def\uff0c\u8bf7\u7a0d\u540e..."

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$showCloudSignTip$27(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->signViewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->performClickSign()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$showCloudSignTip$28(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$showGameOver$10(Lcom/join/mgps/dto/ExtBean;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudCharge(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private synthetic lambda$showGameOver$11(Lcom/join/mgps/dto/ExtBean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onFinishGame()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnExit:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private synthetic lambda$showQueueState$12(Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getCard_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getUse_card_url()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->onCardClick(Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private synthetic lambda$showQueueState$13(Lcom/join/mgps/dto/ExtBean;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getMember_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "onlyshow"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "?"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, "="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "&onlyshow=vip"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "?onlyshow=vip"

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->onCardClick(Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private synthetic lambda$showTip$9(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->openChargeVip(Lcom/join/mgps/dto/ExtBean;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U0()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private synthetic lambda$toastTimeCountDown1$16(Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HMCloudMainActivity$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/HMCloudMainActivity$g;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/widget/PopupWindow;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic m0(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$7(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->lambda$initObserver$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onCardClick(Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/dto/ExtBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intentDateBean",
            "extBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "gameId"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/StringKt;->addUrlParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "intentdate"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p1, "parentExtBean"

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/join/mgps/activity/HMCloudMainActivity$a;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$a;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 56
    .line 57
    .line 58
    const-class v1, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 59
    .line 60
    invoke-virtual {p1, p0, v1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "payload",
            "retry"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/haima/hmcp/enums/MessageType;->PAY_TYPE:Lcom/haima/hmcp/enums/MessageType;

    .line 7
    .line 8
    new-instance v2, Lcom/join/mgps/activity/HMCloudMainActivity$h;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMainActivity$h;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lcom/haima/hmcp/widgets/BaseVideoView;->sendMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private setHideVirtualKey()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setLastResolution()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getLastResolutionId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getLastResolutionId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->onSwitchResolution(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method private showInitState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_init_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_init_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private showLoadState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowLoadState:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowLoadState:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_load_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view:Lcom/join/mgps/customview/GifView;

    .line 20
    .line 21
    const v0, 0x7f110002

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/GifView;->c(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view:Lcom/join/mgps/customview/GifView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/customview/GifView;->e()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowLoadState:Z

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view:Lcom/join/mgps/customview/GifView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/customview/GifView;->d()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_load_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private showLoadingState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_loading_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_loading_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private showMenuState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private showTimeTip(ZJZ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "autoHide",
            "delay",
            "showCharge"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 14
    .line 15
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    const/high16 v8, -0x40800000    # -1.0f

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    move-object v2, v0

    .line 27
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x1f4

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 60
    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 67
    .line 68
    move-object v2, p0

    .line 69
    move-wide v5, p2

    .line 70
    move v7, p4

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/HMCloudMainActivity;->hideTimeTip(Landroid/view/View;Landroid/view/animation/AnimationSet;JZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_time_tip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method


# virtual methods
.method public HmcpPlayerStatusCallback(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HmcpPlayerStatusCallback:"

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
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/haima/hmcp/utils/StatusCallbackUtil;->STATUS:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eq p1, v1, :cond_a

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq p1, v1, :cond_9

    .line 31
    .line 32
    const/16 v1, 0xb

    .line 33
    .line 34
    if-eq p1, v1, :cond_8

    .line 35
    .line 36
    const/16 v1, 0x1a

    .line 37
    .line 38
    if-eq p1, v1, :cond_7

    .line 39
    .line 40
    const/16 v1, 0x2a

    .line 41
    .line 42
    if-eq p1, v1, :cond_6

    .line 43
    .line 44
    const/16 v1, 0x66

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    if-eq p1, v1, :cond_4

    .line 49
    .line 50
    const/16 v1, 0x17

    .line 51
    .line 52
    if-eq p1, v1, :cond_3

    .line 53
    .line 54
    const/16 v1, 0x18

    .line 55
    .line 56
    if-eq p1, v1, :cond_2

    .line 57
    .line 58
    const/16 v1, 0x1d

    .line 59
    .line 60
    if-eq p1, v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x1e

    .line 63
    .line 64
    if-eq p1, v1, :cond_0

    .line 65
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :pswitch_0
    new-instance p1, Lcom/join/mgps/activity/g4;

    .line 72
    .line 73
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/g4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_1
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 82
    .line 83
    cmp-long p1, v0, v3

    .line 84
    .line 85
    if-nez p1, :cond_b

    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iput-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_2
    :try_start_1
    sget-object p1, Lcom/haima/hmcp/utils/StatusCallbackUtil;->DATA:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :catch_0
    move-exception p1

    .line 109
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_0
    sget-object p1, Lcom/haima/hmcp/utils/StatusCallbackUtil;->DATA:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->notifyOpGameTimeCountDown(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_1
    new-instance p1, Lcom/join/mgps/activity/f4;

    .line 126
    .line 127
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/f4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    const-string v0, "\u609f\u996d\u8d26\u53f7\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u6b63\u5728\u7b49\u5f85\u7f51\u7edc\u6062\u590d\u8fde\u63a5..."

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 153
    .line 154
    cmp-long p1, v0, v3

    .line 155
    .line 156
    if-nez p1, :cond_5

    .line 157
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    iput-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 163
    .line 164
    :cond_5
    sget-object p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_FIRST_FRAME_ARRIVAL:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 165
    .line 166
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_6
    new-instance p1, Lcom/join/mgps/activity/h4;

    .line 171
    .line 172
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/h4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lorg/json/JSONObject;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    const-string v0, "\u60a8\u7684\u7f51\u7edc\u73af\u5883\u4e0d\u7a33\u5b9a\uff0c\u5efa\u8bae\u60a8\u964d\u4f4e\u5206\u8fa8\u7387\u4ee5\u4fdd\u8bc1\u6700\u4f73\u6e38\u620f\u4f53\u9a8c"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_8
    sget-object v0, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 188
    .line 189
    const v1, 0x7f080870

    .line 190
    .line 191
    .line 192
    const-string v2, "\u9000\u51fa\u63d0\u9192"

    .line 193
    .line 194
    const-string v3, "\u9000\u51fa\u6e38\u620f"

    .line 195
    .line 196
    const-string v4, "\u957f\u65f6\u95f4\u65e0\u64cd\u4f5c\uff0c\u6e38\u620f\u7ed3\u675f"

    .line 197
    .line 198
    new-instance v5, Lcom/join/mgps/activity/e4;

    .line 199
    .line 200
    invoke-direct {v5}, Lcom/join/mgps/activity/e4;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_9
    sget-object p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 208
    .line 209
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    sget-object v0, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 217
    .line 218
    const-string v1, ""

    .line 219
    .line 220
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Y0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v1, "cloud_cid="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_a
    sget-object p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_START_PLAY_REQUEST:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 246
    .line 247
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :catch_1
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :cond_b
    :goto_0
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method afterLogin()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->K0()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "cld_"

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/t2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->initObserver()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const-string v1, "\u6e38\u620f\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    invoke-static {v1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadLastCommonConfig()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadLastOpConfig()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->enableVirtualKeyBoardView(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->setAutoShowIME(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-class v3, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 147
    .line 148
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 155
    .line 156
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 169
    .line 170
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameClient:Lcom/join/mgps/rpc/k;

    .line 175
    .line 176
    const v0, 0x7f0a0f58

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 184
    .line 185
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->ll_x86_switch:Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    const v0, 0x7f0a149f

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->sdv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 197
    .line 198
    const v0, 0x7f0a1a3b

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_1:Landroid/widget/TextView;

    .line 208
    .line 209
    const v0, 0x7f0a0386

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 217
    .line 218
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_loading_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 219
    .line 220
    const v0, 0x7f0a0383

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 228
    .line 229
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_init_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 230
    .line 231
    const v0, 0x7f0a123b

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Landroid/widget/ProgressBar;

    .line 239
    .line 240
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->pb_view:Landroid/widget/ProgressBar;

    .line 241
    .line 242
    const v0, 0x7f0a1a3c

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Landroid/widget/TextView;

    .line 250
    .line 251
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_2:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0, p0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b1(Lcom/join/mgps/hmcloud/t;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 261
    .line 262
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/widgets/BaseVideoView;->setHmcpPlayerListener(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m0()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    const/4 v2, 0x1

    .line 274
    if-nez v0, :cond_5

    .line 275
    .line 276
    new-instance v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 277
    .line 278
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 279
    .line 280
    invoke-direct {v0, v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iput-boolean v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->b:Z

    .line 284
    .line 285
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->archivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 286
    .line 287
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 288
    .line 289
    iget v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->goldFingerSwitch:I

    .line 290
    .line 291
    iput v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 292
    .line 293
    iget v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->bbsStrategySwitch:I

    .line 294
    .line 295
    iput v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 296
    .line 297
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 298
    .line 299
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->g:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 302
    .line 303
    iput-object v1, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 304
    .line 305
    iget-wide v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 306
    .line 307
    iput-wide v3, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->u:J

    .line 308
    .line 309
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->q0(Lcom/join/mgps/hmcloud/HMCloudGameManager$f;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->showTopTip:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showTip(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->loadServerList(Z)V

    .line 322
    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_5
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s0()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_6

    .line 334
    .line 335
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->showTopTip:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showTip(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_6
    :goto_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d0()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 352
    .line 353
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 370
    .line 371
    .line 372
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 411
    .line 412
    .line 413
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    sget-object v3, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v1, v3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 424
    .line 425
    .line 426
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->initUIData()V

    .line 427
    .line 428
    .line 429
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_7

    .line 438
    .line 439
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showLoadingState(Z)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V

    .line 443
    .line 444
    .line 445
    new-instance v0, Landroid/os/Bundle;

    .line 446
    .line 447
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    const-string v2, "serverName"

    .line 471
    .line 472
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->g0()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    const-string v2, "queueIndex"

    .line 484
    .line 485
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 486
    .line 487
    .line 488
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->QUEUE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 489
    .line 490
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    const/4 v1, 0x2

    .line 502
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateLineUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)V

    .line 503
    .line 504
    .line 505
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->iv_close:Landroid/widget/ImageView;

    .line 506
    .line 507
    new-instance v1, Lcom/join/mgps/activity/s3;

    .line 508
    .line 509
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/s3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->v_mimi:Landroid/view/View;

    .line 516
    .line 517
    new-instance v1, Lcom/join/mgps/activity/t3;

    .line 518
    .line 519
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    .line 524
    .line 525
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->n0()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->getVipAdFeature(Z)V

    .line 534
    .line 535
    .line 536
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I0(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 545
    .line 546
    .line 547
    return-void
.end method

.method public capScreen()V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/CapScreenData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/CapScreenData;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput v1, v0, Lcom/haima/hmcp/beans/CapScreenData;->scalePercent:F

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/haima/hmcp/enums/WsMessageType;->CAP_SCREEN_TYPE:Lcom/haima/hmcp/enums/WsMessageType;

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2, p0}, Lcom/haima/hmcp/widgets/HmcpVideoView;->sendWsMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method checkRealName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$m;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    const-string v3, "CLOUD_GAMING"

    .line 10
    .line 11
    invoke-static {p0, v2, v0, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method checkSign()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

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
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/SceneType;->APP_HOME_PAGE:Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSceneType(Lcom/wufan/user/service/protobuf/enumeration/SceneType;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "uid"

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getUid()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, ""

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v2, "token"

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getToken()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v2, "sceneType"

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getSceneType()Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v2, "appVersion"

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getError()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    const/16 v2, 0xc8

    .line 145
    .line 146
    if-ne v1, v2, :cond_1

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showCloudSignTip(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_1
    :goto_0
    return-void
.end method

.method chooseBestLine(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serverInfo",
            "init"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p2, :cond_e

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->waitDialog:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c2()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->waitDialog:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;->getListInfoList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v1, v0

    .line 40
    move-object v2, v1

    .line 41
    move-object v3, v2

    .line 42
    move-object v4, v3

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_6

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    move-object v2, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-nez v1, :cond_3

    .line 66
    .line 67
    move-object v1, v5

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getState()Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    sget-object v7, Lcom/wufan/user/service/protobuf/enumeration/ServerState;->SERVER_LINE_IDLE:Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 73
    .line 74
    if-ne v6, v7, :cond_5

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    if-nez v4, :cond_5

    .line 83
    .line 84
    move-object v4, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    if-nez v3, :cond_5

    .line 87
    .line 88
    move-object v3, v5

    .line 89
    :cond_5
    :goto_1
    if-eqz v4, :cond_1

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    :cond_6
    if-eqz p2, :cond_b

    .line 94
    .line 95
    if-eqz v4, :cond_7

    .line 96
    .line 97
    move-object v0, v4

    .line 98
    :cond_7
    if-eqz v3, :cond_8

    .line 99
    .line 100
    if-nez v0, :cond_8

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_8
    move-object v3, v0

    .line 104
    :goto_2
    if-eqz v2, :cond_9

    .line 105
    .line 106
    if-nez v3, :cond_9

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_9
    move-object v2, v3

    .line 110
    :goto_3
    if-eqz v1, :cond_a

    .line 111
    .line 112
    if-nez v2, :cond_a

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_a
    move-object v1, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_b
    if-eqz v3, :cond_c

    .line 118
    .line 119
    move-object v0, v3

    .line 120
    :cond_c
    if-eqz v1, :cond_d

    .line 121
    .line 122
    if-nez v0, :cond_d

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_d
    move-object v1, v0

    .line 126
    :goto_4
    if-eqz v1, :cond_f

    .line 127
    .line 128
    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateLineUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o0(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_e
    new-instance p2, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 141
    .line 142
    new-instance v0, Lcom/join/mgps/activity/HMCloudMainActivity$u;

    .line 143
    .line 144
    const v1, 0x7f0d01c2

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/activity/HMCloudMainActivity$u;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;ILcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p2, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 151
    .line 152
    .line 153
    const-string p1, "#60000000"

    .line 154
    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->serverDialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 166
    .line 167
    .line 168
    :cond_f
    :goto_5
    return-void
.end method

.method exitGame()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c1(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnExit:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 133
    .line 134
    .line 135
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->T()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onFinishGame()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public getStartPlayTime()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getStartPlayTime()Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getStartPlayTime()Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-wide v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 43
    .line 44
    return-wide v0
.end method

.method getVipAdFeature(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
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
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUserToken(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameClient:Lcom/join/mgps/rpc/k;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->g0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showQueueState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_0
    :goto_0
    return-void
.end method

.method public goCharge(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/rpc/h;->T:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->onCardClick(Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method hookKeyboardShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->enableVirtualKeyBoardView(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->setAutoShowIME(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public initObserver()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->initObserver()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/u3;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/u3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->countDownLive:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/v3;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/v3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameRatio()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/mgps/activity/w3;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/w3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMute()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/join/mgps/activity/x3;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/x3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTouchMode()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/join/mgps/activity/y3;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMouseSensitivity()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lcom/join/mgps/activity/z3;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/z3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPinchToZoom()Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/join/mgps/activity/b4;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/b4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->signViewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getAdCfgInfo()Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/join/mgps/activity/c4;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/c4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->signViewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getPlaytimeSignResult()Landroidx/lifecycle/SafeLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lcom/join/mgps/activity/d4;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/d4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/SafeLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->collectOpInput()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public intent(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method loadCloudVipState()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v2, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "uid"

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v3, "token"

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->getToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v3, "appVersion"

    .line 73
    .line 74
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->u(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$MessageCloudGamingVipStateResponseResult;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$MessageCloudGamingVipStateResponseResult;->getError()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v2, 0xc8

    .line 101
    .line 102
    if-ne v1, v2, :cond_0

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$MessageCloudGamingVipStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$Info;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateVipState(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$Info;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateVipState(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$Info;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method loadServerList(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, "cloudGameError-1.1 err:["

    .line 4
    .line 5
    const-string v2, "\u670d\u52a1\u5668\u914d\u7f6e\u83b7\u53d6\u5931\u8d25,\u8bf7\u5207\u6362\u7ebf\u8def\u91cd\u8bd5"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    iget-boolean v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->loadingServerList:Z

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v5, 0x1

    .line 16
    iput-boolean v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->loadingServerList:Z

    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v6, v7}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v6, v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v5

    .line 61
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    const-wide/16 v7, 0x0

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v6, v7, v8}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v6, v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setPackageName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v7, "uid"

    .line 80
    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v7, "token"

    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->getToken()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v7, "appVersion"

    .line 113
    .line 114
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-string v3, "gameId"

    .line 118
    .line 119
    iget-object v7, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 120
    .line 121
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const-string v3, "packageName"

    .line 125
    .line 126
    iget-object v7, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v6, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-interface {v3, v5}, Lcom/join/mgps/rpc/c;->B(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-eqz v3, :cond_1

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;->getError()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/16 v6, 0xc8

    .line 155
    .line 156
    if-ne v5, v6, :cond_1

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;->getDataInfo()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p0, v3, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->chooseBestLine(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$ServerInfo;Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_1
    invoke-static {v2}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 183
    .line 184
    .line 185
    iget-object v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 186
    .line 187
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 188
    .line 189
    .line 190
    sget-object v5, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    sget-object v6, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;->getError()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v5, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 249
    .line 250
    .line 251
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    sget-object v5, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {v3, v5, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 262
    .line 263
    .line 264
    :goto_1
    iput-boolean v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->loadingServerList:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :catch_1
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    invoke-static {v2}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    iput-boolean v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->loadingServerList:Z

    .line 275
    .line 276
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 277
    .line 278
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 290
    .line 291
    .line 292
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 295
    .line 296
    .line 297
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    sget-object v4, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 356
    .line 357
    .line 358
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 369
    .line 370
    .line 371
    :cond_2
    :goto_2
    return-void
.end method

.method public locateUploadArchive()V
    .locals 2

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
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

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
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->sendMessage(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method notifyOpGameTimeCountDown(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lcom/join/mgps/dto/OpGameTimeCountDown;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/dto/OpGameTimeCountDown;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->countDownLive:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public notifyVipStateChanged()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;->setUserId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountStr()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;->setAccountData(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->sendMessage(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->afterFirstFrameArrival()Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onVipStateChanged()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public synthetic onAccProxyConnectStateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/a;->a(Lcom/haima/hmcp/listeners/HmcpPlayerListener;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/device/input/enums/KeyType;->KEY_BACK:Lcom/haima/hmcp/device/input/enums/KeyType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->sendKeyEvent(Lcom/haima/hmcp/device/input/enums/KeyType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "extra"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/r3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/r3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCloudDeviceStatus(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "type"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v1, "cap_screen"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p1, "data"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, v1, p1}, Lcom/join/mgps/cloud/bean/HMMessage$CapScreenResult;-><init>(ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 48
    .line 49
    sget-object v1, Lcom/haima/hmcp/enums/MessageType;->PAY_TYPE:Lcom/haima/hmcp/enums/MessageType;

    .line 50
    .line 51
    new-instance v2, Lcom/join/mgps/activity/HMCloudMainActivity$i;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$i;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v1, v2}, Lcom/haima/hmcp/widgets/BaseVideoView;->sendMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public onCloudGameEvent(Lcom/join/mgps/event/j;)V
    .locals 0
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
    invoke-virtual {p1}, Lcom/join/mgps/event/j;->a()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->notifyVipStateChanged()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public onCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudPlayerKeyboardStatus"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;->CLOUD_PLAYER_KEYBOARD_STATUS_SHOW:Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->showKeyboard()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1c

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 v0, 0x400

    .line 19
    .line 20
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/16 v0, 0x500

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method onDelayLoad()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x3e8L
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->loadServerList(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->getStartPlayTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->animationSet:Landroid/view/animation/AnimationSet;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->startPlayTime:J

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/BaseVideoView;->onDestroy()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/event/b;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-direct {v2, v3}, Lcom/join/mgps/event/b;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {v2, v3}, Lcom/join/mgps/event/b;->d(I)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v3, 0xbb8

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/event/b;->e(J)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->R()V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 63
    .line 64
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    .line 78
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v0, v1}, Lcom/papa/sim/statistic/Ext;->setClearTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lcom/join/mgps/event/f;

    .line 142
    .line 143
    sget-object v2, Lcom/join/mgps/enums/ApiName;->ArchivingCfg:Lcom/join/mgps/enums/ApiName;

    .line 144
    .line 145
    invoke-direct {v1, v2}, Lcom/join/mgps/event/f;-><init>(Lcom/join/mgps/enums/ApiName;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 152
    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 164
    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 168
    .line 169
    :cond_1
    invoke-super {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->onDestroy()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public onError(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorType",
            "s"
        }
    .end annotation

    return-void
.end method

.method protected onExit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onExit()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onExitGame()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onDestroy()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->exitGame()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onExitQueue()V
    .locals 0

    return-void
.end method

.method public onFinishEvent(Lcom/join/mgps/event/v;)V
    .locals 1
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/v;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/join/mgps/activity/HMCloudMainActivity;->EVENT_NAME:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onFinishGame()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onFinishGame()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->retryCount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v1, 0x3e9

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/event/v;

    .line 12
    .line 13
    sget-object v1, Lcom/join/mgps/activity/FullShareWebActivity;->EVENT_NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onFreeze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const-string v1, "\u60a8\u7684\u7f51\u7edc\u73af\u5883\u4e0d\u7a33\u5b9a\uff0c\u5efa\u8bae\u60a8\u964d\u4f4e\u5206\u8fa8\u7387\u4ee5\u4fdd\u8bc1\u6700\u4f73\u6e38\u620f\u4f53\u9a8c"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInputDevice(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onInputMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public onInterceptIntent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/cloud/bean/HMMessage;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/join/mgps/cloud/bean/HMMessage$Config;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->a0()Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/cloud/bean/HMMessage$Config;->setConfig(Lcom/join/mgps/cloud/bean/ConfigInfo;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->sendMessage(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$Intent;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/join/mgps/cloud/bean/HMMessage$Intent;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/cloud/bean/HMMessage;->getAction()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    const-string p1, "str"

    .line 82
    .line 83
    const-string v0, ""

    .line 84
    .line 85
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-class v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 101
    .line 102
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->intent(Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method

.method public onMiscResponse(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public onNetworkChanged(Lcom/haima/hmcp/enums/NetWorkState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netWorkState"
        }
    .end annotation

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->L0(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPermissionNotGranted(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public synthetic onPlayNotification(Lcom/haima/hmcp/beans/PlayNotification;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/a;->b(Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/beans/PlayNotification;)V

    return-void
.end method

.method public onPlayStatus(IJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "value",
            "data"
        }
    .end annotation

    return-void
.end method

.method public onPlayerError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    return-void
.end method

.method public onReload()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->retryCount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v1, 0x3e9

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isFirstFrameArrived:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/event/v;

    .line 16
    .line 17
    sget-object v1, Lcom/join/mgps/activity/FullShareWebActivity;->EVENT_NAME:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/join/mgps/event/v;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onDelayLoad()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onRemoteVideoEncodeChange(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecName",
            "fps",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->fpsLive:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRestUI()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->X1()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->c3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->K2(Z)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->v3()Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->waitDialog:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 21
    .line 22
    sget-object v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->showTopTip:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showTip(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->getVipAdFeature(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->onRestart(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->M0()V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onResume()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->loadCloudVipState()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkRealNameRequired:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkRealNameRequired:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->checkRealName()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "cred"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "extraInfo"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "cur_id"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "cur_rate"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "result"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, p1, v1, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->onSwitchResolutionResult(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public onSignClick()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/BaseVideoView;->onStop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public synthetic onSwitchConnectionCallback(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li5/a;->c(Lcom/haima/hmcp/listeners/HmcpPlayerListener;II)V

    return-void
.end method

.method public onSwitchResolution(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->findResolutionById(Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSwitchResolutionResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curId",
            "curRate",
            "result"
        }
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p3, p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->onSwitchResolutionResult(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->setHideVirtualKey()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onUpdateCToken()V
    .locals 0

    .line 1
    invoke-static {p0}, Li5/a;->d(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    return-void
.end method

.method public onUpdateProgress(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "progress"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/l3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/l3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onVideoDelayCallback(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoDelayInfo"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isLatencyOn()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getNetDelay()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getPacketsLostRate()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->setLatency(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public openChargeVip(Lcom/join/mgps/dto/ExtBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/rpc/h;->T:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->onCardClick(Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected refreshResolutionInfo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->refreshResolutionInfo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getResolutionList()Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getResolutionList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentResolution()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTouchMode()Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getTouchMode()Lcom/haima/hmcp/enums/TouchMode;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public relaunchGame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$j;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$j;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->relaunchGame(Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendWsMessageFail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public sendWsMessageSuccess()V
    .locals 0

    return-void
.end method

.method public setViewRatio(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "16:9"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const v2, 0x3fe38e39

    .line 47
    .line 48
    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    .line 68
    :goto_0
    int-to-float v0, v0

    .line 69
    mul-float v0, v0, v2

    .line 70
    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    .line 74
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 75
    .line 76
    const/16 v0, 0x11

    .line 77
    .line 78
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method showCloudCharge(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/mgps/rpc/h;->T:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/join/mgps/Util/IntentDateBean;

    .line 13
    .line 14
    invoke-direct {v3}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowNewGift()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/join/mgps/rpc/h;->V:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x4

    .line 27
    invoke-virtual {v3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "isVip"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "?"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v0, "="

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "&isVip="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, "?isVip="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_2
    :goto_0
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameNoTimesPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 174
    .line 175
    .line 176
    const-string v0, "parentExtBean"

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string p1, "intentdate"

    .line 189
    .line 190
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-instance v0, Lcom/join/mgps/activity/HMCloudMainActivity$p;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$p;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 200
    .line 201
    .line 202
    const-class v1, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 203
    .line 204
    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method showCloudNewUser()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/h;->V:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/join/mgps/Util/IntentDateBean;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "intentdate"

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Lcom/join/mgps/activity/HMCloudMainActivity$r;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$r;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 28
    .line 29
    .line 30
    const-class v3, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 31
    .line 32
    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method showCloudSignTip(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCfgInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsNewMember()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsSigned()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->inflate(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/aw0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudGameConfigBean;->getTotal_sign_in_time()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_5
    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 62
    .line 63
    int-to-long v3, v1

    .line 64
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsNewMember()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v2, v3, v4, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->formatSignTime(JZ)Landroid/text/Spanned;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->a()Landroid/widget/LinearLayout;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$l;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$l;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->a()Landroid/widget/LinearLayout;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->a()Landroid/widget/LinearLayout;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, p1, v1, v1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->showPopup(Landroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/widget/PopupWindow;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->checkInPop:Landroid/widget/PopupWindow;

    .line 107
    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    iget-object p1, v0, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->c:Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance v1, Lcom/join/mgps/activity/j3;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/j3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, v0, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->d:Landroid/widget/ImageView;

    .line 122
    .line 123
    new-instance v0, Lcom/join/mgps/activity/k3;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/k3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method showGameOver()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameNoTimesPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 75
    .line 76
    new-instance v2, Lcom/join/mgps/activity/n3;

    .line 77
    .line 78
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/n3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Lcom/join/mgps/activity/o3;

    .line 82
    .line 83
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/o3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;)V

    .line 84
    .line 85
    .line 86
    const v4, 0x7f080870

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4, v2, v3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterGameOverDialog(ILandroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public showMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMainActivity;->loadCloudVipState()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->showMenu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showQueueState(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowQueueState:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x8

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_wait_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowQueueState:Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getCard_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 v0, 0xc

    .line 47
    .line 48
    const v1, 0x7f071338

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Lcom/join/mgps/customview/TransparentClickImageView;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/TransparentClickImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    float-to-int v3, v3

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    float-to-int v4, v4

    .line 78
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getCard_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {p1, v2}, Lcom/join/android/app/common/utils/l;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v3, "30002"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->AD:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    sget-object v4, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 165
    .line 166
    .line 167
    new-instance v3, Lcom/join/mgps/activity/p3;

    .line 168
    .line 169
    invoke-direct {v3, p0, v2}, Lcom/join/mgps/activity/p3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getMember_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_4

    .line 182
    .line 183
    new-instance p1, Lcom/join/mgps/customview/TransparentClickImageView;

    .line 184
    .line 185
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/TransparentClickImageView;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    float-to-int v1, v1

    .line 197
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getMember_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_2

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const v2, 0x7f07135f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    float-to-int v1, v1

    .line 217
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .line 219
    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 226
    .line 227
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->queueAdBean:Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;->getMember_buy_ad()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 244
    .line 245
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameLoading:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v1, "30001"

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->AD:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 289
    .line 290
    .line 291
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Lcom/join/mgps/activity/a4;

    .line 309
    .line 310
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/a4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->rl_ad:Landroid/widget/RelativeLayout;

    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowQueueState:Z

    .line 323
    .line 324
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view_1:Lcom/join/mgps/customview/GifView;

    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/join/mgps/customview/GifView;->e()V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isShowQueueState:Z

    .line 331
    .line 332
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->cl_wait_state:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gif_view_1:Lcom/join/mgps/customview/GifView;

    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/join/mgps/customview/GifView;->d()V

    .line 345
    .line 346
    .line 347
    :goto_1
    return-void
.end method

.method showRechargeResult()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameNoTimesPaySucc:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 75
    .line 76
    const v4, 0x7f080864

    .line 77
    .line 78
    .line 79
    const-string v5, "\u65f6\u957f\u8865\u5145\u6210\u529f\uff01"

    .line 80
    .line 81
    const-string v6, "\u9000\u51fa\u6e38\u620f"

    .line 82
    .line 83
    const-string v7, "\u518d\u6b21\u8fdb\u5165\u6e38\u620f\u5373\u53ef\u4ece\u5f53\u524d\u8fdb\u5ea6\u7ee7\u7eed\u6e38\u73a9\u5566\uff01"

    .line 84
    .line 85
    new-instance v8, Lcom/join/mgps/activity/HMCloudMainActivity$q;

    .line 86
    .line 87
    invoke-direct {v8, p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity$q;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/dto/ExtBean;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method showSignDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "totalTime",
            "freeTime",
            "vipTime"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    new-instance v7, Lcom/join/mgps/activity/HMCloudMainActivity$s;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/HMCloudMainActivity$s;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v0, v7}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    const-string p1, "#90000000"

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method

.method showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalTime",
            "freeTime",
            "vipTime"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 4
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$t;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/activity/HMCloudMainActivity$t;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    const-string p1, "#90000000"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    return-void
.end method

.method showTip(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipMsg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x1770

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_4:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-direct {p0, p1, v1, v2, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showTimeTip(ZJZ)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-wide v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 33
    .line 34
    const-wide/16 v5, 0xe10

    .line 35
    .line 36
    div-long v5, v3, v5

    .line 37
    .line 38
    long-to-int p1, v5

    .line 39
    mul-int/lit16 v5, p1, 0xe10

    .line 40
    .line 41
    int-to-long v5, v5

    .line 42
    sub-long/2addr v3, v5

    .line 43
    const-wide/16 v5, 0x3c

    .line 44
    .line 45
    div-long/2addr v3, v5

    .line 46
    long-to-int v4, v3

    .line 47
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_text_4:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v6, "\u5f53\u524d\u4e91\u589e\u5f3a\u6a21\u5f0f\u53ef\u7528\u65f6\u957f:"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, "\u5c0f\u65f6"

    .line 63
    .line 64
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "\u5206\u949f"

    .line 71
    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v3, p1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0, v1, v2, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->showTimeTip(ZJZ)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v0, Lcom/join/mgps/activity/m3;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m3;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method sign()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isSign:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v0, "\u4eca\u65e5\u5df2\u7b7e,\u660e\u65e5\u518d\u6765\u5427~"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isSign:Z

    .line 44
    .line 45
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "517_6.1.7.0"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getUid()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, ""

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v4, "uid"

    .line 97
    .line 98
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v3, "token"

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getToken()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v3, "appVersion"

    .line 111
    .line 112
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->l(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->isSign:Z

    .line 137
    .line 138
    return-void
.end method

.method startPlay()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lcom/haima/hmcp/beans/UserInfo;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/haima/hmcp/beans/UserInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, v2, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 56
    .line 57
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/widgets/BaseVideoView;->setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGame()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, "wfcloud."

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 106
    .line 107
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v5, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v6, v2, Lcom/haima/hmcp/beans/UserInfo;->userToken:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v7}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Y()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v9}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->X()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static/range {v4 .. v9}, Lcom/haima/hmcp/utils/CryptoUtils;->generateCToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iput-object v4, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->l:Ljava/lang/String;

    .line 147
    .line 148
    iget-boolean v4, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->b:Z

    .line 149
    .line 150
    if-eqz v4, :cond_3

    .line 151
    .line 152
    sget-object v4, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    sget-object v4, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 156
    .line 157
    :goto_0
    const-string v5, "orientation"

    .line 158
    .line 159
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 160
    .line 161
    .line 162
    iget-wide v4, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 163
    .line 164
    const-wide/16 v6, 0x3e8

    .line 165
    .line 166
    mul-long v4, v4, v6

    .line 167
    .line 168
    const-string v6, "playTime"

    .line 169
    .line 170
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 171
    .line 172
    .line 173
    const-string v4, "0"

    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const-string v5, "priority"

    .line 184
    .line 185
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    const-string v4, "appName"

    .line 189
    .line 190
    iget-object v5, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gamePackageName:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Z()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    const-string v5, "appChannel"

    .line 204
    .line 205
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v4, "cToken"

    .line 209
    .line 210
    iget-object v5, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->l:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getTimeOut()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    const-string v5, "noInputLimitTime"

    .line 228
    .line 229
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    sget-object v4, Lcom/haima/hmcp/enums/StreamType;->WEBRTC:Lcom/haima/hmcp/enums/StreamType;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    const-string v5, "streamType"

    .line 239
    .line 240
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    new-instance v4, Lorg/json/JSONObject;

    .line 244
    .line 245
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    :try_start_0
    const-string v7, "uid"

    .line 250
    .line 251
    iget-object v2, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    const-string v2, "userIdType"

    .line 257
    .line 258
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    const-string v2, "gameId"

    .line 262
    .line 263
    iget-wide v7, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 264
    .line 265
    invoke-virtual {v4, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    iget-wide v7, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 269
    .line 270
    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 271
    .line 272
    .line 273
    const-string v0, "androidId"

    .line 274
    .line 275
    sget-object v2, Lcom/MApplication;->J:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    const-string v0, "serverName"

    .line 281
    .line 282
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    const-string v0, "resourceId"

    .line 298
    .line 299
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h0()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 311
    .line 312
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 324
    .line 325
    .line 326
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    sget-object v6, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v6}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->i0()Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    iget-object v6, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->gameId:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    iget-object v6, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 393
    .line 394
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v6}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->c0()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 411
    .line 412
    .line 413
    const-string v2, "trackField"

    .line 414
    .line 415
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .line 421
    .line 422
    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v0}, Lcom/join/mgps/Util/p;->b([B)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const-string v2, "protoData"

    .line 440
    .line 441
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v0, "virtualKeyboardEnable"

    .line 445
    .line 446
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 450
    .line 451
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->a0()Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/BaseVideoView;->setConfigInfo(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 471
    .line 472
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/widgets/BaseVideoView;->setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 476
    .line 477
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/widgets/BaseVideoView;->setVideoDelayCallback(Lcom/haima/hmcp/listeners/IVideoDelayCallback;)V

    .line 478
    .line 479
    .line 480
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 481
    .line 482
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/widgets/BaseVideoView;->play(Landroid/os/Bundle;)V

    .line 483
    .line 484
    .line 485
    :cond_4
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    const/4 v2, 0x1

    .line 490
    invoke-virtual {v0, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->d1(Z)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    const/4 v2, 0x0

    .line 498
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->Y0(Lcom/papa/sim/statistic/EventP$ResultCode;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
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

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/a3;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method toastTimeCountDown1(Lcom/join/mgps/dto/OpGameTimeCountDown;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCountDown"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d086e

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
    const v1, 0x7f0a169a

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
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/OpGameTimeCountDown;->getAhead()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v4, 0x1

    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/i;->e(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v2, v5, v3

    .line 44
    .line 45
    const v2, 0x7f12035f

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0a033c

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v1, Lcom/join/mgps/activity/HMCloudMainActivity$e;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$e;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/join/mgps/activity/HMCloudMainActivity$f;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$f;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x32

    .line 82
    .line 83
    invoke-static {p0, p1}, Lcom/join/mgps/ad/q;->a(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    new-instance v1, Landroid/widget/PopupWindow;

    .line 88
    .line 89
    const/4 v2, -0x2

    .line 90
    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Landroid/view/animation/AnimationSet;

    .line 100
    .line 101
    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const/high16 v7, 0x3f800000    # 1.0f

    .line 108
    .line 109
    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 110
    .line 111
    .line 112
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    .line 113
    .line 114
    const/high16 v9, 0x41a00000    # 20.0f

    .line 115
    .line 116
    invoke-direct {v8, v6, v6, v9, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v10, 0x12c

    .line 126
    .line 127
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 131
    .line 132
    .line 133
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 134
    .line 135
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 136
    .line 137
    .line 138
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    .line 139
    .line 140
    invoke-direct {v8, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 141
    .line 142
    .line 143
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    .line 144
    .line 145
    invoke-direct {v7, v6, v6, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    .line 153
    .line 154
    const-wide/16 v6, 0xc8

    .line 155
    .line 156
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const v6, 0x1020002

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const/16 v6, 0x31

    .line 178
    .line 179
    invoke-virtual {v1, v4, v6, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Lcom/join/mgps/activity/i4;

    .line 186
    .line 187
    invoke-direct {p1, p0, v5, v1, v0}, Lcom/join/mgps/activity/i4;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    const-wide/16 v1, 0x2710

    .line 191
    .line 192
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method updateLineUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serverInfo",
            "scene"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->curServerId:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public updatePlayTime(Lcom/haima/hmcp/widgets/HmcpVideoView;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hmcpVideoView",
            "playTime"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    mul-long p2, p2, v2

    .line 27
    .line 28
    const-string v2, "playTime"

    .line 29
    .line 30
    invoke-virtual {v0, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, ""

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string p3, "userid"

    .line 55
    .line 56
    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "message"

    .line 60
    .line 61
    const-string p3, "\u6e38\u620f\u65f6\u957f\u5df2\u66f4\u65b0"

    .line 62
    .line 63
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object p2, p2, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->l:Ljava/lang/String;

    .line 75
    .line 76
    const-string p3, "cToken"

    .line 77
    .line 78
    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Lcom/join/mgps/activity/HMCloudMainActivity$b;

    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/HMCloudMainActivity$b;-><init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/haima/hmcp/widgets/BaseVideoView;->updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void
.end method

.method updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getTotalTime()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getFreeTime()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getVipTime()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, v0, v1, p1}, Lcom/join/mgps/activity/HMCloudMainActivity;->showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "\u7b7e\u5230\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 46
    .line 47
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method updateVipState(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$Info;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$Info;->getGameSurplus()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->k1(J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity;->updatePlayTime(Lcom/haima/hmcp/widgets/HmcpVideoView;J)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPlayTime()Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-wide v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity;->playTime:J

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onVipStateChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    return-void
.end method
