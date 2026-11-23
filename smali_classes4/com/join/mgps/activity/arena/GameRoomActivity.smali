.class public Lcom/join/mgps/activity/arena/GameRoomActivity;
.super Lcom/join/mgps/activity/FriendActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/socket/fight/arena/a$y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;,
        Lcom/join/mgps/activity/arena/GameRoomActivity$x;,
        Lcom/join/mgps/activity/arena/GameRoomActivity$w;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0063
.end annotation


# static fields
.field private static final BTN_COLOR_ENABLE:I = -0x1

.field private static final BTN_COLOR_UNENABLE:I

.field private static final DELAY_COUNT_DOWNTIME:I = 0x3e8

.field private static final INTERVAL_BTN_CLICK:I = 0x3e8

.field private static final MSG_COUNT_DOWNER:I = 0x64

.field private static final MSG_DELAY_FINISH_ACTIVITY:I = 0x66

.field private static final REFRESH_GAMETIME_DELAY:I = 0x3e8

.field private static final TOTAL_COUNT_DOWN_TIME:I = 0x9


# instance fields
.field DEBUG_ARCHIVE:Z

.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private archivePath:Ljava/lang/String;

.field arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

.field battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private battleServerIp:Ljava/lang/String;

.field private btnEnableDrawable:Landroid/graphics/drawable/Drawable;

.field btnEntranceGame:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnEntranceGameI:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnEntranceGameM:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private btnUnEnableDrawable:Landroid/graphics/drawable/Drawable;

.field cmb:Landroid/content/ClipboardManager;

.field context:Landroid/content/Context;

.field copper:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameInfo:Lcom/join/mgps/dto/ArenaGameInfo;

.field gameName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private inspectorDialogLive:Z

.field isAllowPcJoin:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isCountDowner:Z

.field isCreateRoom:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isFastJoinRoom:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isKicked:Z

.field private isLetOnLook:Z

.field private isLetOutdeviceIn:Z

.field private isLetPcIn:Z

.field private isShowSpectatorReason:Z

.field ivPlayModeSwitcher:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivPlayModeSwitcherlayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_arrow_net_archive:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_audience:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_challenge_gold_arrow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_elite:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_switch_outdevice_in:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field joinSpectatorReason:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field linesee:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llCopper:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llPlayMode:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_set_challenge_gold:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

.field private mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

.field private final mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

.field private mCountDownerHandler:Landroid/os/Handler;

.field private mCurrentUserType:Lapp/mgsim/arena/UserType;

.field private final mDelayFinishActivityHandler:Landroid/os/Handler;

.field volatile mGameRoom:Lcom/papa91/battle/protocol/GameRoom;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private mGameStartTime:I

.field private mHandler:Landroid/os/Handler;

.field private mInputPwdDialog:Lcom/join/mgps/customview/input/a;

.field private mKickPosition:I

.field mLastStartGameTime:J

.field private final mLocker:Ljava/lang/Object;

.field mNetClient:Lcom/join/mgps/rpc/l;

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private final mPlayerInfoCallback:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

.field private mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

.field private mPointer:I

.field private mRefreshGameTimeRunnable:Ljava/lang/Runnable;

.field private mSelectedArchiveBean:Lcom/join/mgps/dto/ArchiveBean;

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field private mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

.field private mStartGameCountDowner:Landroid/os/CountDownTimer;

.field private mStrPwd:Ljava/lang/String;

.field private p1:I

.field private p2:I

.field private p3:I

.field private p4:I

.field password:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private porder:I

.field position:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field radioGroup:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rlRoomType:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_audience_1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_audience_2:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_net_archive:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field roomLive:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field rpcAccount1Client:Lcom/join/mgps/rpc/l;

.field rpcAccountClient:Lcom/join/mgps/rpc/l;

.field showPermiss:Z

.field private showSrvPlayMode:Z

.field showTitleMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvRoomType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_archive_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_audience:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_audience_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_copper_plate_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_time_state:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_gold_info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_info_audience:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_invite_fight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_roomNum:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field txtCopper:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field txtHint:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#47817e"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->BTN_COLOR_UNENABLE:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isAllowPcJoin:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOnLook:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOutdeviceIn:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetPcIn:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isKicked:Z

    .line 18
    .line 19
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$p;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$r;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 32
    .line 33
    new-instance v2, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$t;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mRefreshGameTimeRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 48
    .line 49
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$u;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mDelayFinishActivityHandler:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$v;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLocker:Ljava/lang/Object;

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->inspectorDialogLive:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->DEBUG_ARCHIVE:Z

    .line 73
    .line 74
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$b;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoCallback:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSrvPlayMode:Z

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 85
    .line 86
    const-wide/16 v3, 0x0

    .line 87
    .line 88
    iput-wide v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 89
    .line 90
    new-instance v3, Lcom/join/mgps/activity/arena/GameRoomActivity$m;

    .line 91
    .line 92
    const-wide/16 v7, 0x2710

    .line 93
    .line 94
    const-wide/16 v9, 0x3e8

    .line 95
    .line 96
    move-object v5, v3

    .line 97
    move-object v6, p0

    .line 98
    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/activity/arena/GameRoomActivity$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;JJ)V

    .line 99
    .line 100
    .line 101
    iput-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStartGameCountDowner:Landroid/os/CountDownTimer;

    .line 102
    .line 103
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 104
    .line 105
    iput-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameInfo:Lcom/join/mgps/dto/ArenaGameInfo;

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showPermiss:Z

    .line 108
    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mDelayFinishActivityHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->inspectorDialogLive:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/arena/GameRoomActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mSelectedArchiveBean:Lcom/join/mgps/dto/ArchiveBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startLobbyGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/arena/GameRoomActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onRealNameSuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOutdeviceIn:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOnLook:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2302(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOnLook:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startGame(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameStartTime:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$508(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameStartTime:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameStartTime:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mRefreshGameTimeRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->leaveRoom()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPointer:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$910(Lcom/join/mgps/activity/arena/GameRoomActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPointer:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPointer:I

    .line 6
    .line 7
    return v0
.end method

.method private cancelStartGameCountDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStartGameCountDowner:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private clearClipboard()V
    .locals 2

    .line 1
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private copy(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    const-string v0, "clipboard"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/ClipboardManager;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->cmb:Landroid/content/ClipboardManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private createShareContent()Ljava/lang/String;
    .locals 14

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStrPwd:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "#\u5bf9\u6218"

    .line 39
    .line 40
    const-string v3, "$"

    .line 41
    .line 42
    const-string v4, "$\u623f\u95f4"

    .line 43
    .line 44
    const-string v5, "\u3011\u4e2d\u3010\u5927\u5385\u5bf9\u6218\u3011\u597d\u53cb"

    .line 45
    .line 46
    const-string v6, "\u5373\u53ef\u5728\u6e38\u620f\u3010"

    .line 47
    .line 48
    const v7, 0x1f448

    .line 49
    .line 50
    .line 51
    const-string v8, "\u609f\u996d\u6e38\u620f\u5385"

    .line 52
    .line 53
    const v9, 0x1f449

    .line 54
    .line 55
    .line 56
    const-string v10, "\u590d\u5236\u8fd9\u6761\u4fe1\u606f\uff0c\u6253\u5f00"

    .line 57
    .line 58
    const-string v11, "\uffe5"

    .line 59
    .line 60
    const/16 v12, 0x263a

    .line 61
    .line 62
    const v13, 0x1f511

    .line 63
    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v9}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, "#"

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, v9}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, v12}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-direct {p0, v13}, Lcom/join/mgps/activity/arena/GameRoomActivity;->emoji(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, "#&\u5bc6\u7801:"

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStrPwd:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v0, "&"

    .line 338
    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_0
    return-object v0
.end method

.method private doStartApplicationWithPackageName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "android.intent.action.MAIN"

    .line 14
    .line 15
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "android.intent.category.LAUNCHER"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 49
    .line 50
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v1, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/high16 v3, 0x10000000

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    new-instance v2, Landroid/content/ComponentName;

    .line 68
    .line 69
    invoke-direct {v2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private emoji(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexEmoji"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private initOnClickListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_invite_fight:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcherlayout:Landroid/view/View;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$d;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ll_set_challenge_gold:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$e;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$f;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGame:Landroid/view/View;

    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_switch_outdevice_in:Landroid/widget/ImageView;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$h;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rlRoomType:Landroid/view/View;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$i;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private initStartGameParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p1:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 35
    .line 36
    :cond_1
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p1:I

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 70
    .line 71
    :cond_3
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2:I

    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p3:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ne v0, v1, :cond_5

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 106
    .line 107
    :cond_5
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p3:I

    .line 108
    .line 109
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    iput v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p4:I

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v0, v1, :cond_7

    .line 139
    .line 140
    const/4 v0, 0x3

    .line 141
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 142
    .line 143
    :cond_7
    iput v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p4:I

    .line 144
    .line 145
    :goto_3
    return-void
.end method

.method private isActivityFinished()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method private leaveRoom()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.join.mgps.socket.fight.arena.leave_room"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "gameId"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private onRealNameSuccess(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 2
    .line 3
    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLastStartGameTime:J

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startLobbyGame()V

    .line 14
    .line 15
    .line 16
    if-lez p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->sendCheckRealname()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 23
    .line 24
    if-ne v0, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 27
    .line 28
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_READY:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->playerReadyGame()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    const-string p1, "\u7b49\u5f85\u6e38\u620f\u5f00\u59cb!"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method private playerReadyGame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "register_type_GameRoomActivity"

    .line 10
    .line 11
    invoke-static {v2, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->playerReadyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isActivityFinished()Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/g0;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private startCountDowner()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPointer:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private startGame(Lcom/papa91/battle/protocol/BattleServerAddr;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleServerAddr"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelStartGameCountDown()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleServerIp:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleServerIp:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private startLobbyGame()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelStartGameCountDown()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStartGameCountDowner:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 7
    .line 8
    .line 9
    const-string v0, "\u6b63\u5728\u542f\u52a8\u6e38\u620f..."

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "register_type_GameRoomActivity"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private updateButtonState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtCopper:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    const-string v3, "\u7b49\u5f85\u5f00\u59cb"

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f60"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v4, "\u94dc\u677f"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_GOTO_GAME_NOW:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v3, "(\u514d\u94dc\u677f)"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 112
    .line 113
    const-string v3, "\u6e38\u620f\u5df2\u5f00\u59cb\uff0c\u8bf7\u70b9\u51fb\u89c2\u6218\u52a0\u5165\u6e38\u620f\u3002"

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 124
    .line 125
    const v1, 0x7f080e5d

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 132
    .line 133
    const-string v1, "\u8fdb\u5165\u6e38\u620f\u5e76\u5750\u4e0b,\u5373\u53ef\u548c\u5176\u4ed6\u73a9\u5bb6\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtCopper:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->n(Lcom/papa91/battle/protocol/GameRoom;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const v2, 0x7f080e64

    .line 151
    .line 152
    .line 153
    const v3, 0x7f080e69

    .line 154
    .line 155
    .line 156
    const-string v4, "\u5f00\u59cb\u6e38\u620f\u540e,\u5c06\u6263\u9664\u60a8"

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 164
    .line 165
    sget-object v1, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    .line 166
    .line 167
    if-ne v0, v1, :cond_3

    .line 168
    .line 169
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 180
    .line 181
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    .line 187
    .line 188
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget-object v5, Lcom/papa91/battle/protocol/RoomState;->WAIT:Lcom/papa91/battle/protocol/RoomState;

    .line 202
    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 210
    .line 211
    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 212
    .line 213
    if-ne v0, v2, :cond_5

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 216
    .line 217
    .line 218
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 223
    .line 224
    const-string v1, "\u7b49\u5f85\u73a9\u5bb6\u51c6\u5907\u540e\u5f00\u59cb\u6e38\u620f"

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 230
    .line 231
    const v1, 0x7f080e67

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 238
    .line 239
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :cond_5
    sget-object v2, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 245
    .line 246
    if-ne v0, v2, :cond_9

    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-static {v0, v2}, Lcom/join/mgps/socket/fight/arena/c;->h(Lcom/papa91/battle/protocol/GameRoom;I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    sget-object v2, Lcom/papa91/battle/protocol/RoomPosition$State;->WAIT:Lcom/papa91/battle/protocol/RoomPosition$State;

    .line 269
    .line 270
    if-ne v0, v2, :cond_8

    .line 271
    .line 272
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_READY:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 275
    .line 276
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 277
    .line 278
    if-eqz v0, :cond_6

    .line 279
    .line 280
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_e

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const v2, 0x7f080e53

    .line 300
    .line 301
    .line 302
    const-string v3, "\u8bf7\u51c6\u5907\u540e\uff0c\u7b49\u623f\u4e3b\u5f00\u59cb\u6e38\u620f"

    .line 303
    .line 304
    if-nez v0, :cond_7

    .line 305
    .line 306
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 312
    .line 313
    const-string v3, "(\u5012\u8ba1\u65f69s)"

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    .line 327
    .line 328
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startCountDowner()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_2

    .line 332
    .line 333
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 354
    .line 355
    .line 356
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 357
    .line 358
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 359
    .line 360
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_2

    .line 371
    .line 372
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 373
    .line 374
    .line 375
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 376
    .line 377
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 378
    .line 379
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 380
    .line 381
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtHint:Landroid/widget/TextView;

    .line 385
    .line 386
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    sget-object v4, Lcom/papa91/battle/protocol/RoomState;->READY:Lcom/papa91/battle/protocol/RoomState;

    .line 397
    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_e

    .line 403
    .line 404
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 405
    .line 406
    sget-object v4, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 407
    .line 408
    if-ne v0, v4, :cond_d

    .line 409
    .line 410
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 411
    .line 412
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 413
    .line 414
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 415
    .line 416
    if-eqz v0, :cond_b

    .line 417
    .line 418
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_e

    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 427
    .line 428
    .line 429
    goto :goto_2

    .line 430
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_c

    .line 437
    .line 438
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 439
    .line 440
    const-string v3, "\u5bf9\u65b9\u5df2\u51c6\u5907\uff0c\u8bf7\u5f00\u59cb\u6e38\u620f(9s)"

    .line 441
    .line 442
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 446
    .line 447
    const-string v3, "(9s)"

    .line 448
    .line 449
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 458
    .line 459
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    .line 461
    .line 462
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startCountDowner()V

    .line 463
    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 470
    .line 471
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    .line 473
    .line 474
    goto :goto_2

    .line 475
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 476
    .line 477
    .line 478
    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 479
    .line 480
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 481
    .line 482
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 483
    .line 484
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    .line 486
    .line 487
    :cond_e
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    const-string v1, "mBtnState-->"

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mBtnState:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    const-string v1, "GameRoomActivity"

    .line 507
    .line 508
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    return-void
.end method

.method private updateGameTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mRefreshGameTimeRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameStartTime:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_time_state:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/e0;->f(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mRefreshGameTimeRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_time_state:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string v1, "\u7b49\u5f85\u5f00\u59cb"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rpcAccountClient:Lcom/join/mgps/rpc/l;

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rpcAccount1Client:Lcom/join/mgps/rpc/l;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v2, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f6010\u94dc\u677f"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528!"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v2, 0x1c

    .line 41
    .line 42
    if-lt v1, v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mNetClient:Lcom/join/mgps/rpc/l;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getBattleServerIp(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x4

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llCopper:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llCopper:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSrvPlayMode:Z

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llPlayMode:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v3, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 135
    .line 136
    if-ne v1, v3, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 146
    .line 147
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 148
    .line 149
    const-string v3, "#f47500"

    .line 150
    .line 151
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    filled-new-array {v4, v5, v6, v3}, [I

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 172
    .line 173
    .line 174
    const/high16 v1, 0x41000000    # 8.0f

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 180
    .line 181
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 182
    .line 183
    const-string v5, "#FF8C00"

    .line 184
    .line 185
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    filled-new-array {v6, v7, v8, v5}, [I

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    .line 212
    .line 213
    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 214
    .line 215
    .line 216
    const v5, 0x10100a7

    .line 217
    .line 218
    .line 219
    filled-new-array {v5}, [I

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    .line 225
    .line 226
    new-array v3, v2, [I

    .line 227
    .line 228
    invoke-virtual {v4, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 229
    .line 230
    .line 231
    iput-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEnableDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 234
    .line 235
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 236
    .line 237
    const-string v5, "#F47500"

    .line 238
    .line 239
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    filled-new-array {v6, v7, v5}, [I

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 259
    .line 260
    .line 261
    iput-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnUnEnableDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_game_name:Landroid/widget/TextView;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    const v0, 0x7f0a0fe2

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 278
    .line 279
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoCallback:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->setPlayerInfoCallback(Lcom/join/mgps/customview/PlayerInfoContainerView$a;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/join/mgps/socket/fight/arena/a;

    .line 287
    .line 288
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 289
    .line 290
    .line 291
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 292
    .line 293
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->initOnClickListener()V

    .line 294
    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v1, ""

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 309
    .line 310
    .line 311
    move-result-wide v3

    .line 312
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getGameData(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 323
    .line 324
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 328
    .line 329
    if-eqz v0, :cond_7

    .line 330
    .line 331
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_7

    .line 338
    .line 339
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    int-to-long v3, v1

    .line 350
    invoke-virtual {v0, v2, v3, v4}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 351
    .line 352
    .line 353
    :cond_7
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 354
    .line 355
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCallback:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 356
    .line 357
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 358
    .line 359
    .line 360
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 366
    .line 367
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->printLog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    .line 387
    .line 388
    :goto_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    float-to-double v1, v0

    .line 397
    const-wide v3, 0x3ffe666666666666L    # 1.9

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    cmpl-double v5, v1, v3

    .line 403
    .line 404
    if-lez v5, :cond_8

    .line 405
    .line 406
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 407
    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const v2, 0x7f07155c

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 426
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const v2, 0x7f071530

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 439
    .line 440
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 441
    .line 442
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_8
    const/high16 v1, 0x41100000    # 9.0f

    .line 447
    .line 448
    mul-float v0, v0, v1

    .line 449
    .line 450
    const/high16 v1, 0x41800000    # 16.0f

    .line 451
    .line 452
    div-float/2addr v0, v1

    .line 453
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const v3, 0x7f07143c

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    int-to-float v2, v2

    .line 473
    mul-float v2, v2, v0

    .line 474
    .line 475
    float-to-int v2, v2

    .line 476
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 477
    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    int-to-float v2, v2

    .line 487
    mul-float v2, v2, v0

    .line 488
    .line 489
    float-to-int v0, v2

    .line 490
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 491
    .line 492
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    .line 496
    .line 497
    :goto_2
    return-void
.end method

.method cancelCountDowner()V
    .locals 2

    .line 1
    const-string v0, "GameRoomActivity"

    .line 2
    .line 3
    const-string v1, "---cancelCountDowner---"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPointer:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCountDownerHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x64

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v1, 0x2000

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method checkUserInfoFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method finishActivity()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->cmb:Landroid/content/ClipboardManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelStartGameCountDown()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mRefreshGameTimeRunnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method getBattleServerIp(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string v1, "http://113.107.57.112/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "http://203.130.43.40/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

    .line 8
    .line 9
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->getBattleServerIp(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "get battle server id for http nds :"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "GameRoomActivity"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleServerIp:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method getChallengeConfig()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mNetClient:Lcom/join/mgps/rpc/l;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/join/mgps/rpc/l;->R(ILjava/lang/String;J)Lcom/join/mgps/dto/ResultArenaBean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 36
    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSetGoldDialog()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0x2bd

    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->checkUserInfoFailed()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    nop

    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method getGameData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rpcAccount1Client:Lcom/join/mgps/rpc/l;

    .line 22
    .line 23
    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 46
    .line 47
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getStartGameCopper()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const/16 v0, 0x14

    .line 56
    .line 57
    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateCopperTxt()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v1, 0x2bd

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    const-string v0, "\u4f60\u7684\u624b\u673a\u767b\u9646\u5df2\u7ecf\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646!"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rpcAccount1Client:Lcom/join/mgps/rpc/l;

    .line 82
    .line 83
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/l;->J(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/util/List;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ge v0, v1, :cond_3

    .line 99
    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/join/mgps/dto/ArenaGameInfo;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameInfo;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {p0, v2, v1}, Lcom/join/mgps/Util/r2;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, ""

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r2;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/join/mgps/dto/ArenaGameInfo;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameInfo:Lcom/join/mgps/dto/ArenaGameInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p1

    .line 149
    throw p1

    .line 150
    :catch_1
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :goto_2
    return-void
.end method

.method getIpFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 8
    .line 9
    .line 10
    const-string v0, "\u83b7\u53d6\u670d\u52a1\u5668ip\u5931\u8d25"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method handleError(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    nop

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "cmd_lobby_start_game"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "push_start_game_room_broadcast"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelStartGameCountDown()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "cmd_set_room_server_play_mode"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const-string v0, "\u6d41\u7545\u6a21\u5f0f\u8bbe\u7f6e\u5931\u8d25"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->reverseRoomServerPlayModeUi()V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 60
    .line 61
    const/16 v1, 0xc

    .line 62
    .line 63
    const-string v2, "\u786e\u5b9a"

    .line 64
    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v4, 0x2

    .line 67
    const/4 v5, 0x1

    .line 68
    const/16 v6, 0x101

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x4

    .line 72
    const-string v9, "dialog_error_hint"

    .line 73
    .line 74
    if-eq v0, v1, :cond_5

    .line 75
    .line 76
    const/16 v1, 0xe

    .line 77
    .line 78
    if-eq v0, v1, :cond_4

    .line 79
    .line 80
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 89
    .line 90
    new-array v1, v8, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    aput-object v6, v1, v7

    .line 97
    .line 98
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    aput-object p1, v1, v5

    .line 105
    .line 106
    const-string p1, "\u8be5\u623f\u95f4\u5df2\u7ecf\u89e3\u6563"

    .line 107
    .line 108
    aput-object p1, v1, v4

    .line 109
    .line 110
    aput-object v2, v1, v3

    .line 111
    .line 112
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$s;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 131
    .line 132
    new-array v1, v8, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    aput-object v6, v1, v7

    .line 139
    .line 140
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 141
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    aput-object p1, v1, v5

    .line 147
    .line 148
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1"

    .line 149
    .line 150
    aput-object p1, v1, v4

    .line 151
    .line 152
    aput-object v2, v1, v3

    .line 153
    .line 154
    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method handleKickPlayerInfo(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mKickPosition:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    const-string p1, "kic_out_room_info"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method hideLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    return-void
.end method

.method isUserPos(Lcom/papa91/battle/protocol/RoomPosition;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "uid"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ne p1, p2, :cond_0

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
    return p1
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isKicked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onLeaveRoom()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onChallengeGoldSet(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1!"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, p1, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const-string v2, "register_type_GameRoomActivity"

    .line 61
    .line 62
    invoke-static {v2, v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setChallengeGolden(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    const-string v0, "BATTLE_ROOM"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->type:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    iput-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->context:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$k;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    const-string v3, "FIGHT_LOBBY"

    .line 45
    .line 46
    invoke-static {p0, v2, v0, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    const-string v1, "GameRoomActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "--onStop---removeObserver---"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->inspectorDialogLive:Z

    .line 36
    .line 37
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->clearClipboard()V

    .line 41
    .line 42
    .line 43
    const-string v0, "--onDestroy---"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onDialogDismiss(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogType"
        }
    .end annotation

    .line 1
    const-string v0, "kick_info"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "toast_kic_out_room"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "toast_move_in_spectator"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->inspectorDialogLive:Z

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    return-void
.end method

.method public onDisable()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onErrorHint(IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operation",
            "errorType",
            "value"
        }
    .end annotation

    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/w;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/join/mgps/event/w;->a()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/event/w;->g()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public onGetKickOutRoomPositionInfo(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomPosition",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u7531\u4e8e\u5bf9\u65b9\u662f\u609f\u996dVIP\u60a8\u65e0\u6cd5\u5c06\u5176\u8e22\u51fa\u623f\u95f4"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 30
    .line 31
    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mKickPosition:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-string v1, "register_type_GameRoomActivity"

    .line 56
    .line 57
    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getKickOutRoomPositionInfo(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public onInvite(Lcom/join/mgps/dto/FriendBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isUserPos(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isUserPos(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isUserPos(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isUserPos(Lcom/papa91/battle/protocol/RoomPosition;I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$n;

    .line 66
    .line 67
    invoke-direct {v2, p0, p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/join/mgps/dto/FriendBean;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x3

    .line 71
    const-string v0, "FIGHT_LOBBY"

    .line 72
    .line 73
    invoke-static {p0, p1, v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "\u7528\u6237\u5df2\u52a0\u5165\u623f\u95f4"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isKicked:Z

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 22
    .line 23
    .line 24
    return p2

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onLeaveRoom()V

    .line 26
    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onLeaveRoom()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->leaveRoom()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onNetArchiveSelected(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveBean",
            "path"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5b58\u6863\uff01"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCountDowner:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u7f51\u7edc\u5b58\u6863\uff01"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mSelectedArchiveBean:Lcom/join/mgps/dto/ArchiveBean;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->archivePath:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/n;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_archive_name:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    const-string p2, "\u9009\u62e9"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/n;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_archive_name:Landroid/widget/TextView;

    .line 71
    .line 72
    const-string p2, ""

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public onReport(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/join/mgps/rpc/h;->u:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "report_uid="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "&reported_uid="

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "GameRoomActivity"

    .line 15
    .line 16
    const-string v1, "--onResume---registerObserver---"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onSeatSet(Lapp/mgsim/arena/RoomSeatState;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "position"
        }
    .end annotation

    .line 1
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    .line 2
    .line 3
    const-string v1, "register_type_GameRoomActivity"

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u5f00\u542f\u5ea7\u4f4d!"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->openSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    .line 40
    .line 41
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u5173\u95ed\u5ea7\u4f4d!"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->closeSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->REMOVE:Lapp/mgsim/arena/RoomSeatState;

    .line 76
    .line 77
    if-ne p1, v0, :cond_5

    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 86
    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8e22\u4eba!"

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->kickOutRoomPosition(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    .line 112
    .line 113
    if-ne p1, v0, :cond_7

    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 122
    .line 123
    if-ne p1, v0, :cond_6

    .line 124
    .line 125
    const-string p1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u4f60\u65e0\u6cd5\u5750\u4e0b\uff01"

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v1, v0, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->spectatorSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_0
    return-void
.end method

.method public onShare(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shareType",
            "shareContent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->copy(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->shareWeiXin()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->startQQ()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public onShareTypeChoice(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shareType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->createShareContent()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object p1, v1, v2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v2, 0x3

    .line 44
    aput-object p1, v1, v2

    .line 45
    .line 46
    const-string p1, "share_friends_2"

    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSvrPlayMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomServerPlayMode(II)Lapp/mgsim/arena/ArenaRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method printLog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "GameRoomActivity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/socket/fight/arena/c;->q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method reverseRoomServerPlayModeUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcher:Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method sendCheckRealname()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xbb8L
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.show.realname.check"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method setRoomServerPlayModeUi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->radioGroup:Landroid/widget/RadioGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcher:Landroid/widget/RadioButton;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcher:Landroid/widget/RadioButton;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method shareQQ()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->createShareContent()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/join/mgps/activity/arena/GameRoomActivity$l;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method shareWeiXin()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.tencent.mm"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->doStartApplicationWithPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method showKickInfoDialog(Ljava/lang/String;)V
    .locals 1
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
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isKicked:Z

    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/g0;->o(Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)Landroid/app/Dialog;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method showReadyTimeOutDialog()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u957f\u65f6\u95f4\u672a\u5f00\u59cb\u6e38\u620f\uff0c\u60a8\u5df2\u88ab\u8e22\u51fa\u623f\u95f4!"

    .line 15
    .line 16
    aput-object v3, v1, v2

    .line 17
    .line 18
    const-string v2, "toast_kic_out_room"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method showRoomTypeDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/n;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/n;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/dialog/n;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/dialog/n$d;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->arenaRoomTypeDialog:Lcom/join/mgps/dialog/n;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method showSetGoldDialog()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getIsBattle()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const-string v4, "set_challenge_gold"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 15
    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 19
    .line 20
    aput-object v5, v3, v2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v3, v1

    .line 33
    .line 34
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 39
    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 43
    .line 44
    aput-object v5, v3, v2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameName:Ljava/lang/String;

    .line 47
    .line 48
    aput-object v2, v3, v1

    .line 49
    .line 50
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method showStartGameTimeOut()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/16 v2, 0x101

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    const-string v3, "\u4f60\u57282\u5206\u949f\u5185\u65e0\u5f00\u59cb\uff0c\u623f\u95f4\u5df2\u88ab\u89e3\u6563\uff01"

    .line 26
    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const-string v3, "\u786e\u5b9a"

    .line 31
    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    const-string v2, "dialog_error_hint"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->x()Landroid/app/Dialog;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$q;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method showSvrPlayMode()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ivPlayModeSwitcher:Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    aput-object v0, v2, v3

    .line 25
    .line 26
    const-string v0, "svr_play_mode"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->isActivityFinished()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method startQQ()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "com.tencent.mobileqq"

    .line 2
    .line 3
    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->sysShareQQ(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "\u672c\u673a\u672a\u5b89\u88c5QQ\u5e94\u7528"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method statGameByBattleServerIp(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "battleServerAddr",
            "battleServerIp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->initStartGameParams()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p1:I

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p3:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p4:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    new-instance v1, Lcom/join/mgps/dto/NetBattleStartGameDto;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getBattleRoomId()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomID(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->getPort()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->roomLive:I

    .line 107
    .line 108
    const/4 p2, 0x1

    .line 109
    const/4 v2, 0x2

    .line 110
    if-ne p1, v2, :cond_0

    .line 111
    .line 112
    const/4 p1, 0x3

    .line 113
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    if-ne p1, p2, :cond_1

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 130
    .line 131
    .line 132
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOutdeviceIn:Z

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPeripheralJoin(Z)V

    .line 135
    .line 136
    .line 137
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetPcIn:Z

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPCJoin(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameype(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGroupId(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP1Name(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP2Name(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x0

    .line 171
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGamePlayers(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setTcptype(I)V

    .line 210
    .line 211
    .line 212
    iget p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->porder:I

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setNetPlayers(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_2

    .line 227
    .line 228
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOpenBattleScore(Z)V

    .line 235
    .line 236
    .line 237
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->gameInfo:Lcom/join/mgps/dto/ArenaGameInfo;

    .line 238
    .line 239
    if-eqz p1, :cond_3

    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameInfo;->getResult_show_type()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setResult_show_type(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string p2, "start game params :"

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string p2, "GameRoomActivity"

    .line 270
    .line 271
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-virtual {p1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->archivePath:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iget-boolean v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isFastJoinRoom:Z

    .line 312
    .line 313
    invoke-static {v0, v2}, Lcom/join/mgps/socket/fight/arena/c;->i(Lcom/papa91/battle/protocol/BattleArea;Z)I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-static {p0, v1, p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->g4(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 321
    .line 322
    .line 323
    return-void
.end method

.method sysShareQQ(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
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
    const-string v1, "android.intent.action.SEND"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.extra.TEXT"

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->createShareContent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "text/plain"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string v1, "com.tencent.mobileqq"

    .line 26
    .line 27
    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "\u9009\u62e9\u5206\u4eab\u9014\u5f84"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method updateCopperTxt()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->txtCopper:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "\u94dc\u677f"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    const-string v1, "\u7b49\u5f85\u5f00\u59cb"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "\u7b49\u5f85\u5f00\u59cb\uff0c\u5f00\u59cb\u540e\u5c06\u6263\u9664\u4f60"

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->copper:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method updateGameRoomAsync()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->o(I)Lapp/mgsim/arena/ArenaResponse;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "GameRoomActivity"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of v3, v2, Lcom/papa91/battle/protocol/GameRoom;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Lcom/papa91/battle/protocol/GameRoom;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "gameRoom:aaa game id  --...:"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, "----gameRoom  game room id : bbb:"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v1, v3}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ne v2, v3, :cond_1

    .line 78
    .line 79
    const-string v2, "updateGameRoomAsync---..."

    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 85
    .line 86
    invoke-interface {v1, v0}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "updateGameRoomAsync--- response is null..."

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string p1, "\u670d\u52a1\u5668\u8fd4\u56de\u6e38\u620f\u623f\u95f4\u4fe1\u606f\u4e3a\u7a7a\uff0c\u5f02\u5e38\uff0c\u9000\u51fa\u754c\u9762"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_1
    const-string v1, "GameActivity"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/join/mgps/socket/fight/arena/c;->q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 42
    .line 43
    invoke-static {p1, v1}, Lcom/join/mgps/socket/fight/arena/c;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mPlayerInfoContainerView:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1, v1, v2, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView;->c(Lcom/papa91/battle/protocol/GameRoom;ILandroid/app/Activity;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eq p1, v2, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_roomNum:Landroid/widget/TextView;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "\u623f\u95f4\u53f7\uff1a"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_roomNum:Landroid/widget/TextView;

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "\u623f\u95f4\u53f7\uff1a"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mStrPwd:Ljava/lang/String;

    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget-object v2, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 164
    .line 165
    if-ne p1, v2, :cond_3

    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_gold_info:Landroid/widget/TextView;

    .line 168
    .line 169
    const-string v2, "\u83b7\u80dc\u4e00\u65b9\u83b7\u5f97\u8be5\u6311\u6218\u91d1"

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_gold_info:Landroid/widget/TextView;

    .line 176
    .line 177
    const-string v2, "\u5b8c\u6210\u6e38\u620f\u4efb\u52a1\u53ef\u83b7\u53d6\u6311\u6218\u91d1"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const/4 v2, 0x4

    .line 189
    const/4 v3, 0x0

    .line 190
    const/16 v4, 0x8

    .line 191
    .line 192
    if-eqz p1, :cond_4

    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_copper_plate_count:Landroid/widget/TextView;

    .line 195
    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v6, "\u94dc\u677f"

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_elite:Landroid/widget/ImageView;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const v6, 0x7f080a90

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ll_set_challenge_gold:Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_elite:Landroid/widget/ImageView;

    .line 244
    .line 245
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_copper_plate_count:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v5, "0\u94dc\u677f"

    .line 252
    .line 253
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->ll_set_challenge_gold:Landroid/widget/LinearLayout;

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_elite:Landroid/widget/ImageView;

    .line 262
    .line 263
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    const/4 v5, 0x1

    .line 273
    if-eqz p1, :cond_5

    .line 274
    .line 275
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOutdeviceIn:Z

    .line 276
    .line 277
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_switch_outdevice_in:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    const v7, 0x7f080a40

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetOutdeviceIn:Z

    .line 295
    .line 296
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_switch_outdevice_in:Landroid/widget/ImageView;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    const v7, 0x7f080a3f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .line 311
    .line 312
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_6

    .line 319
    .line 320
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetPcIn:Z

    .line 321
    .line 322
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tvRoomType:Landroid/widget/TextView;

    .line 323
    .line 324
    const-string v6, "\u7efc\u5408\u623f"

    .line 325
    .line 326
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_6
    iput-boolean v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isLetPcIn:Z

    .line 331
    .line 332
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tvRoomType:Landroid/widget/TextView;

    .line 333
    .line 334
    const-string v6, "\u624b\u673a\u623f"

    .line 335
    .line 336
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 340
    .line 341
    sget-object v6, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 342
    .line 343
    if-ne p1, v6, :cond_7

    .line 344
    .line 345
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rlRoomType:Landroid/view/View;

    .line 346
    .line 347
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rlRoomType:Landroid/view/View;

    .line 352
    .line 353
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 357
    .line 358
    const v2, 0x7f081323

    .line 359
    .line 360
    .line 361
    if-eq p1, v6, :cond_c

    .line 362
    .line 363
    sget-object v7, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 364
    .line 365
    if-ne p1, v7, :cond_8

    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_audience:Landroid/widget/TextView;

    .line 370
    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    iget-object v8, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 377
    .line 378
    invoke-virtual {v8}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v8, "\u4eba"

    .line 386
    .line 387
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 398
    .line 399
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_audience:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 408
    .line 409
    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isShowSpectatorReason:Z

    .line 413
    .line 414
    if-nez p1, :cond_9

    .line 415
    .line 416
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->isShowSpectatorReason:Z

    .line 417
    .line 418
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->inspectorDialogLive:Z

    .line 419
    .line 420
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mArenaDialogBuilder:Lcom/join/mgps/socket/fight/arena/a;

    .line 421
    .line 422
    const-string v7, "toast_move_in_spectator"

    .line 423
    .line 424
    new-array v8, v5, [Ljava/lang/Object;

    .line 425
    .line 426
    iget-object v9, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 427
    .line 428
    aput-object v9, v8, v3

    .line 429
    .line 430
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    new-instance p1, Landroid/os/Handler;

    .line 434
    .line 435
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 436
    .line 437
    .line 438
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity$a;

    .line 439
    .line 440
    invoke-direct {v7, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    .line 441
    .line 442
    .line 443
    const-wide/16 v8, 0x7d0

    .line 444
    .line 445
    invoke-virtual {p1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    .line 447
    .line 448
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 449
    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-nez p1, :cond_a

    .line 455
    .line 456
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 457
    .line 458
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_info_audience:Landroid/widget/TextView;

    .line 459
    .line 460
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    const-string p1, ""

    .line 464
    .line 465
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->joinSpectatorReason:Ljava/lang/String;

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 469
    .line 470
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    sget-object v7, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    .line 475
    .line 476
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_b

    .line 481
    .line 482
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_info_audience:Landroid/widget/TextView;

    .line 483
    .line 484
    const-string v7, "\u4f60\u88ab\u79fb\u5230\u89c2\u6218\u5e2d"

    .line 485
    .line 486
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    goto :goto_6

    .line 490
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_info_audience:Landroid/widget/TextView;

    .line 491
    .line 492
    const-string v7, "\u623f\u95f4\u5df2\u6ee1\uff0c\u88ab\u81ea\u52a8\u79fb\u5230\u89c2\u6218\u5e2d"

    .line 493
    .line 494
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 498
    .line 499
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_audience:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 508
    .line 509
    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_audience:Landroid/widget/TextView;

    .line 514
    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    iget-object v8, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 521
    .line 522
    invoke-virtual {v8}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v8, "\u4eba"

    .line 530
    .line 531
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_audience_1:Landroid/widget/LinearLayout;

    .line 542
    .line 543
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_audience_2:Landroid/widget/RelativeLayout;

    .line 547
    .line 548
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 549
    .line 550
    .line 551
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->linesee:Landroid/view/View;

    .line 552
    .line 553
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 557
    .line 558
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_audience:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 567
    .line 568
    invoke-static {v7, v2, p1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 569
    .line 570
    .line 571
    :goto_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mCurrentUserType:Lapp/mgsim/arena/UserType;

    .line 572
    .line 573
    if-ne p1, v6, :cond_11

    .line 574
    .line 575
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_invite_fight:Landroid/widget/TextView;

    .line 576
    .line 577
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 578
    .line 579
    .line 580
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 581
    .line 582
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSrvPlayMode:Z

    .line 587
    .line 588
    if-eqz p1, :cond_d

    .line 589
    .line 590
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llPlayMode:Landroid/widget/LinearLayout;

    .line 591
    .line 592
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 593
    .line 594
    .line 595
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 596
    .line 597
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    if-ne p1, v1, :cond_e

    .line 602
    .line 603
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_e
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->setRoomServerPlayModeUi(I)V

    .line 608
    .line 609
    .line 610
    :goto_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_challenge_gold_arrow:Landroid/widget/ImageView;

    .line 611
    .line 612
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    .line 614
    .line 615
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_arrow_net_archive:Landroid/widget/ImageView;

    .line 616
    .line 617
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 621
    .line 622
    if-eqz p1, :cond_15

    .line 623
    .line 624
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    const-string v2, ""

    .line 634
    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 639
    .line 640
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 641
    .line 642
    .line 643
    move-result-wide v2

    .line 644
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->DEBUG_ARCHIVE:Z

    .line 656
    .line 657
    if-eqz v1, :cond_f

    .line 658
    .line 659
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 660
    .line 661
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 662
    .line 663
    .line 664
    goto :goto_b

    .line 665
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-nez v1, :cond_10

    .line 672
    .line 673
    if-eqz p1, :cond_10

    .line 674
    .line 675
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object p1

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 685
    .line 686
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const-string v2, ""

    .line 694
    .line 695
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result p1

    .line 706
    if-eqz p1, :cond_10

    .line 707
    .line 708
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 709
    .line 710
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 711
    .line 712
    .line 713
    goto :goto_b

    .line 714
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 715
    .line 716
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 717
    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 721
    .line 722
    if-eqz p1, :cond_14

    .line 723
    .line 724
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->DEBUG_ARCHIVE:Z

    .line 725
    .line 726
    if-eqz v1, :cond_12

    .line 727
    .line 728
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 729
    .line 730
    .line 731
    goto :goto_a

    .line 732
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 733
    .line 734
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 735
    .line 736
    .line 737
    move-result p1

    .line 738
    if-nez p1, :cond_13

    .line 739
    .line 740
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 741
    .line 742
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 743
    .line 744
    .line 745
    goto :goto_a

    .line 746
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->rl_net_archive:Landroid/widget/RelativeLayout;

    .line 747
    .line 748
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 749
    .line 750
    .line 751
    :cond_14
    :goto_a
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_invite_fight:Landroid/widget/TextView;

    .line 752
    .line 753
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 754
    .line 755
    .line 756
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->llPlayMode:Landroid/widget/LinearLayout;

    .line 757
    .line 758
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 759
    .line 760
    .line 761
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_challenge_gold_arrow:Landroid/widget/ImageView;

    .line 762
    .line 763
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    .line 765
    .line 766
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->iv_arrow_net_archive:Landroid/widget/ImageView;

    .line 767
    .line 768
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    .line 770
    .line 771
    :cond_15
    :goto_b
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateGameTime()V

    .line 772
    .line 773
    .line 774
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateButtonState()V

    .line 775
    .line 776
    .line 777
    monitor-exit v0

    .line 778
    return-void

    .line 779
    :catchall_0
    move-exception p1

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    throw p1
.end method
