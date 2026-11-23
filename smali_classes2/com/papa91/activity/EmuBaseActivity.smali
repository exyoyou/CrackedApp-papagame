.class public Lcom/papa91/activity/EmuBaseActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$IMReceive;,
        Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$MyReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$GameReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$PermissRecver;,
        Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$CommonMessageReceiver;,
        Lcom/papa91/activity/EmuBaseActivity$MenuType;
    }
.end annotation


# static fields
.field private static BBK_GIONEE_MAIN_NAME:Ljava/lang/String; = null

.field public static final BBK_IQOO:I = 0x1

.field public static final CLOSE_AD:I = 0xa

.field public static final COMPLAIN_PLAYER:I = 0xc

.field public static DEVICE_ID:Ljava/lang/String; = null

.field public static DEVICE_VERSION:Ljava/lang/String; = null

.field private static final EXIT_AD_KEY:I = 0x65

.field public static ExitAdImageFilePath:Ljava/lang/String; = null

.field public static final GIONEE_SOFTMANAGER:I = 0x2

.field public static GameID:Ljava/lang/String; = null

.field public static GroupID:Ljava/lang/String; = null

.field public static final LIKT_TYPE_TO_HTML5:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "EmuBaseActivity"

.field protected static final ON_NETWORK_ERROR_MSG:Ljava/lang/String; = "\u60a8\u7684\u7f51\u7edc\u6709\u70b9\u5dee\uff0c\u8bf7\u91cd\u8bd5"

.field protected static final ON_TOKER_LOST_MSG:Ljava/lang/String; = "\u9a8c\u8bc1\u5931\u8d25\u8bf7\u91cd\u65b0\u767b\u5f55"

.field private static final PAPA_EMU_INTENT_EXTRA_ACTION_FROM:Ljava/lang/String; = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

.field public static final PAY_CHEAT:I = 0x6

.field public static final PAY_COIN:I = 0x4

.field public static final PAY_JOIN:I = 0x7

.field public static final PAY_SP:I = 0x3

.field public static final RAISE_VIP:I = 0xb

.field public static RoomID:Ljava/lang/String; = null

.field public static final SELECT_CHEAT:I = 0x5

.field public static final SELECT_COIN:I = 0x2

.field public static final SELECT_JOIN:I = 0x8

.field public static final SELECT_SP:I = 0x1

.field public static final SHOW_AD:I = 0x9

.field private static final TO_PREFECTURE_KEY:I = 0x64

.field private static UPDATA_APP_TOAST:Ljava/lang/String; = null

.field public static final UPDATE_END_GAME_RESULT:I = 0xd

.field public static UserID:Ljava/lang/String; = null

.field public static Version:Ljava/lang/String; = null

.field private static achievementDoneFloatDialog:Lcom/papa91/view/AchievementDoneFloatDialog; = null

.field public static final actionEmuintent:Ljava/lang/String; = "com.wufun.intent.activity.view.action.emuintent"

.field public static actionHandleEmptyMessage:Ljava/lang/String; = null

.field public static actionHandleExitGame:Ljava/lang/String; = null

.field public static actionHandleMessage:Ljava/lang/String; = null

.field public static actionHideMenu:Ljava/lang/String; = null

.field public static actionLoadRomFinish:Ljava/lang/String; = null

.field public static actionLoadStageCompleted:Ljava/lang/String; = null

.field public static actionOnOnlineState:Ljava/lang/String; = null

.field public static actionRecordEnd:Ljava/lang/String; = null

.field public static actionShowInvite:Ljava/lang/String; = null

.field public static actionShowMenu:Ljava/lang/String; = null

.field public static actionShowMenuCheat:Ljava/lang/String; = null

.field public static actionShowMenuGate:Ljava/lang/String; = null

.field public static actionShowMenuOnekey:Ljava/lang/String; = null

.field public static actionShowMenuPerformance:Ljava/lang/String; = null

.field public static actionShowMenuSlot:Ljava/lang/String; = null

.field public static actionShowMenuView:Ljava/lang/String; = null

.field public static actionShowShare:Ljava/lang/String; = null

.field public static final actionVip:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

.field public static actionVipTip:Ljava/lang/String; = null

.field public static final actionVip_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

.field public static final actionlogin:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

.field public static final actionlogin_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

.field public static final aidlStr:Ljava/lang/String; = "com.papa.mgsim.wufun.aidl.service"

.field public static appPackName:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final appPackName_aso4:Ljava/lang/String; = "com.papa91.fc.aso4"

.field public static final appPackName_mgsim:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final appPackName_mha:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.mha"

.field public static assetsPath:Ljava/lang/String; = null

.field static autoSaveSlot:Lcom/papa91/view/AutoSaveSlot; = null

.field private static baseActivity:Lcom/papa91/activity/EmuBaseActivity; = null

.field public static challengeId:Ljava/lang/String; = null

.field protected static cheatInfos:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static className:Ljava/lang/String; = null

.field private static cmb:Landroid/content/ClipboardManager; = null

.field static context:Landroid/content/Context; = null

.field static dnsJson:Ljava/lang/String; = null

.field public static enableAudio:Ljava/lang/String; = null

.field public static endGameId:I = 0x0

.field public static endGameLevelRules:Ljava/lang/String; = null

.field public static endGameTime:I = 0x0

.field public static endId:Ljava/lang/String; = null

.field static exitMode:I = 0x0

.field public static fid:I = 0x0

.field protected static gameIsPause:Z = false

.field static generate_times:I = 0x0

.field static generatedTimes:I = 0x0

.field static getRewardConfig:I = 0x0

.field public static hasAd:Z = false

.field public static hasRewardBanana:Z = false

.field public static httpKeySign:Ljava/lang/String; = null

.field static in:Landroid/content/Intent; = null

.field static in1:Landroid/content/Intent; = null

.field static in2:Landroid/content/Intent; = null

.field static in3:Landroid/content/Intent; = null

.field static in5:Landroid/content/Intent; = null

.field static init_first_box_time:I = 0x0

.field public static isInChallenge:Z = false

.field static isNet:Z = false

.field static jusrid:Ljava/lang/String; = null

.field public static keyVaule:[I = null

.field static left_device_play_reward_count:I = 0x0

.field static left_play_reward_count:I = 0x0

.field static level:I = 0x0

.field public static mDialog:Landroid/app/Dialog; = null

.field static mMessenger:Landroid/os/Messenger; = null

.field static mServiceConnection:Landroid/content/ServiceConnection; = null

.field static max:I = 0x0

.field static max_time_interval:I = 0x0

.field static min_time_interval:I = 0x0

.field public static netState:Ljava/lang/String; = null

.field private static payType:I = 0x0

.field public static final prefix:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.broadcast"

.field static progress:I

.field static progressView:Lcom/papa91/view/DragProgressView;

.field static received_times:I

.field static rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

.field static rewardConfig:Ljava/lang/String;

.field static reward_amount:I

.field static reward_left_count:I

.field static reward_times:I

.field public static romName:Ljava/lang/String;

.field public static romPath:Ljava/lang/String;

.field public static scenario:I

.field public static screenMOde:Ljava/lang/String;

.field protected static screenMode:I

.field public static server_ip:Ljava/lang/String;

.field protected static server_port:Ljava/lang/String;

.field static snapshotPath:Ljava/lang/String;

.field public static soPath:Ljava/lang/String;

.field public static spLock:I

.field protected static startMode:I

.field static startRewardCount:Z

.field public static startTIme:J

.field public static subTitle:Ljava/lang/String;

.field private static systemSettingType:I

.field static time:I

.field public static token:Ljava/lang/String;

.field static total_reward_amount:I

.field public static tourist:Z

.field public static ugcPath:Ljava/lang/String;

.field private static unUpdateAchieve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static unique_id:Ljava/lang/String;

.field static url:Ljava/lang/String;

.field static useIndependentEmu:Z

.field public static verCode:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static vibriorMode:Ljava/lang/String;


# instance fields
.field protected AD_appId:Ljava/lang/String;

.field private APP_Version:I

.field protected accept:Landroid/widget/TextView;

.field private actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

.field private adClosed:Z

.field protected adExitRootView:Landroid/widget/FrameLayout;

.field private adLoadError:Z

.field private adParent:Landroid/widget/RelativeLayout;

.field adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

.field private adRoot:Landroid/widget/RelativeLayout;

.field alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field public allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

.field public allowPeripheralJoin:Z

.field private appCodeIsBigger160:Z

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private btn_startRecord:Landroid/widget/Button;

.field private checkRealNameType:I

.field private crc_link_type_val:Ljava/lang/String;

.field public endGameMills:I

.field public endGameResult:I

.field protected gameName:Landroid/widget/TextView;

.field gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

.field private gameType:Ljava/lang/String;

.field getRewardConfigCount:I

.field protected handler:Landroid/os/Handler;

.field protected hasCheckRealName:Z

.field iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

.field public isAfterFailedEndGame:Z

.field isArenaCheck:Z

.field private isExit:Z

.field isInBackground:Z

.field protected isSingleGame:Z

.field private isStartRecord:Z

.field private isStarting:Z

.field protected jump_type:Ljava/lang/String;

.field limitTime:J

.field limitTimeRunnable:Ljava/lang/Runnable;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private loading_real_name:Z

.field protected m_SVIP:I

.field protected m_VIP:I

.field menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

.field messData:Ljava/lang/String;

.field public messageDialog:Lcom/papa91/MessageVipCommonDialog;

.field messageReceiver:Landroid/content/BroadcastReceiver;

.field protected miniRankTime:I

.field protected name:Landroid/widget/TextView;

.field private needCheckRealName:Z

.field netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

.field public onAdShwoIsCloseMine:Z

.field protected onExitBannerId:Ljava/lang/String;

.field protected onLoadBannerId:Ljava/lang/String;

.field protected onMenuOpenBannerId:Ljava/lang/String;

.field protected paayReceiver:Lcom/papa91/paay/PaayReceiver;

.field payListener:Lcom/papa91/paay/PayListener;

.field perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field playTime:J

.field playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

.field protected rankAutoUpload:I

.field rankPlayTime:I

.field realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

.field realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

.field recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

.field rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

.field public sdkType:I

.field selectListener:Lcom/papa91/paay/PayListener;

.field shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

.field timer:Landroid/os/CountDownTimer;

.field private tpl_type:Ljava/lang/String;

.field private videoStrategyPop:Lcom/papa91/VideoStrategyPop;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0, v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->keyVaule:[I

    .line 7
    .line 8
    const-string v1, "1"

    .line 9
    .line 10
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "1.5.0"

    .line 17
    .line 18
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    .line 19
    .line 20
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 24
    .line 25
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 26
    .line 27
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 28
    .line 29
    const-string v2, "5369"

    .line 30
    .line 31
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->server_port:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "0"

    .line 34
    .line 35
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 36
    .line 37
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 38
    .line 39
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->Version:Ljava/lang/String;

    .line 40
    .line 41
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    .line 42
    .line 43
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    sput v3, Lcom/papa91/activity/EmuBaseActivity;->endGameId:I

    .line 47
    .line 48
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->endGameTime:I

    .line 49
    .line 50
    const-string v4, ""

    .line 51
    .line 52
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->endGameLevelRules:Ljava/lang/String;

    .line 53
    .line 54
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->verCode:Ljava/lang/String;

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    sput-wide v5, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 59
    .line 60
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->spLock:I

    .line 61
    .line 62
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    sput-boolean v2, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 66
    .line 67
    const-string v5, "\u8bf7\u5148\u5c06\u556a\u556a\u6a21\u62df\u5668\u5347\u7ea71.6\u7248\u672c"

    .line 68
    .line 69
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    .line 70
    .line 71
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 72
    .line 73
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 74
    .line 75
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 76
    .line 77
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 78
    .line 79
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 80
    .line 81
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;

    .line 82
    .line 83
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    .line 84
    .line 85
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    .line 86
    .line 87
    const-string v5, "/mnt/sdcard/test/assets/"

    .line 88
    .line 89
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 90
    .line 91
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 92
    .line 93
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 94
    .line 95
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 96
    .line 97
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 98
    .line 99
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    .line 100
    .line 101
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 102
    .line 103
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 104
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->unUpdateAchieve:Ljava/util/ArrayList;

    .line 111
    .line 112
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->screenMode:I

    .line 113
    .line 114
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->snapshotPath:Ljava/lang/String;

    .line 115
    .line 116
    sput-boolean v2, Lcom/papa91/activity/EmuBaseActivity;->isNet:Z

    .line 117
    .line 118
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->mDialog:Landroid/app/Dialog;

    .line 119
    .line 120
    sput-object v4, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v1, Landroid/content/Intent;

    .line 123
    .line 124
    const-string v2, "com.join.android.app.mgsim.wufun.loginNim"

    .line 125
    .line 126
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in:Landroid/content/Intent;

    .line 130
    .line 131
    new-instance v1, Landroid/content/Intent;

    .line 132
    .line 133
    const-string v2, "com.join.android.app.mgsim.wufun.loginOutNim"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in5:Landroid/content/Intent;

    .line 139
    .line 140
    new-instance v1, Landroid/content/Intent;

    .line 141
    .line 142
    const-string v2, "com.join.android.app.mgsim.wufun.StartRecording"

    .line 143
    .line 144
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in1:Landroid/content/Intent;

    .line 148
    .line 149
    new-instance v1, Landroid/content/Intent;

    .line 150
    .line 151
    const-string v2, "com.join.android.app.mgsim.wufun.FinishRecording"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in2:Landroid/content/Intent;

    .line 157
    .line 158
    new-instance v1, Landroid/content/Intent;

    .line 159
    .line 160
    const-string v2, "com.join.android.app.mgsim.wufun.SendTextMsg"

    .line 161
    .line 162
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    .line 166
    .line 167
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    .line 168
    .line 169
    sput v3, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 170
    .line 171
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 172
    .line 173
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 174
    .line 175
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 176
    .line 177
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 178
    .line 179
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 180
    .line 181
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->exitMode:I

    .line 182
    .line 183
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuSlot"

    .line 184
    .line 185
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    .line 186
    .line 187
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuCheat"

    .line 188
    .line 189
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    .line 190
    .line 191
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuPerformance"

    .line 192
    .line 193
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    .line 194
    .line 195
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuGate"

    .line 196
    .line 197
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    .line 198
    .line 199
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenuOnekey"

    .line 200
    .line 201
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showMenu"

    .line 204
    .line 205
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    .line 206
    .line 207
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.HideMenu"

    .line 208
    .line 209
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    .line 210
    .line 211
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.VipTip"

    .line 212
    .line 213
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.ShowMenuView"

    .line 216
    .line 217
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuView:Ljava/lang/String;

    .line 218
    .line 219
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.ShowShare"

    .line 220
    .line 221
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    .line 222
    .line 223
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.LoadRomFinish"

    .line 224
    .line 225
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    .line 226
    .line 227
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.LoadStageCompleted"

    .line 228
    .line 229
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    .line 230
    .line 231
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.recordEnd"

    .line 232
    .line 233
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    .line 234
    .line 235
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.showInvitePlay"

    .line 236
    .line 237
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowInvite:Ljava/lang/String;

    .line 238
    .line 239
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onOnlineState"

    .line 240
    .line 241
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionOnOnlineState:Ljava/lang/String;

    .line 242
    .line 243
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage"

    .line 244
    .line 245
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleMessage:Ljava/lang/String;

    .line 246
    .line 247
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage"

    .line 248
    .line 249
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleEmptyMessage:Ljava/lang/String;

    .line 250
    .line 251
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.onHandleExitGame"

    .line 252
    .line 253
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    .line 254
    .line 255
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 8
    .line 9
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->messData:Ljava/lang/String;

    .line 16
    .line 17
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->APP_Version:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    iput v3, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    .line 28
    .line 29
    iput v2, p0, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    .line 34
    .line 35
    const/16 v2, 0xb

    .line 36
    .line 37
    iput v2, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isAfterFailedEndGame:Z

    .line 40
    .line 41
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$4;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$4;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isExit:Z

    .line 49
    .line 50
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$13;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$13;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    .line 56
    .line 57
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$14;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$14;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStartRecord:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 70
    .line 71
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$37;

    .line 72
    .line 73
    const-wide/16 v5, 0x3a98

    .line 74
    .line 75
    const-wide/16 v7, 0x3e8

    .line 76
    .line 77
    move-object v3, v2

    .line 78
    move-object v4, p0

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/papa91/activity/EmuBaseActivity$37;-><init>(Lcom/papa91/activity/EmuBaseActivity;JJ)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    iput-wide v2, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTime:J

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isArenaCheck:Z

    .line 91
    .line 92
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$39;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$39;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 100
    .line 101
    return-void
.end method

.method public static FinishRecord()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in2:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static HideBottomMenu()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$12;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$12;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static LocalBattle(JJJJ)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameendlocalbattle"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "gameId"

    .line 26
    .line 27
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "uid"

    .line 46
    .line 47
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "p2Uid"

    .line 66
    .line 67
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string p0, "time"

    .line 71
    .line 72
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public static LoginNim()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static OutChatRoom()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in5:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static native SendMessStatue(ILjava/lang/String;)I
.end method

.method public static SendTextMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "text"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->in3:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static ShowSetNetWorkDialog()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$3;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static StartRecording()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->in1:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static StartcomplainMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "StartcomplainMsg : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .line 62
    .line 63
    const/high16 v1, 0x10000000

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string v1, "com.wufun.intent.activity.view.action.emuintent"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const-string v2, "android.intent.category.DEFAULT"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/papa91/common/MyJson;

    .line 79
    .line 80
    invoke-direct {v2}, Lcom/papa91/common/MyJson;-><init>()V

    .line 81
    .line 82
    .line 83
    :try_start_0
    const-string v3, "4"

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    if-eqz p2, :cond_1

    .line 92
    .line 93
    const-string v3, "http"

    .line 94
    .line 95
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    const-string v3, "?"

    .line 102
    .line 103
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p2, "&game_id="

    .line 118
    .line 119
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, "?game_id="

    .line 141
    .line 142
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    :cond_1
    :goto_0
    const-string v3, "link_type"

    .line 155
    .line 156
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    const-string p0, "jump_type"

    .line 160
    .line 161
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    const-string p0, "link_type_val"

    .line 165
    .line 166
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string p0, "crc_link_type_val"

    .line 170
    .line 171
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    const-string p0, "tpl_type"

    .line 175
    .line 176
    invoke-virtual {v2, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :goto_1
    const-string p0, "intentDataJson"

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catch_1
    const-string p0, "com.papa.intent.activity.view.action.emuintent"

    .line 203
    .line 204
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$endGameStart$11(Lcom/papa91/arc/bean/Request;)V

    return-void
.end method

.method public static acceptInvitePlay(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "accept"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic access$002(Lcom/papa91/activity/EmuBaseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1000(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->getSystemPaste()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/papa91/activity/EmuBaseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/papa91/activity/EmuBaseActivity;)Lcom/papa91/VideoStrategyPop;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->getPermiss(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1302(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1402(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1602(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->showVideoPopWin(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2100(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Lcom/papa91/activity/EmuBaseActivity;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->playCountDown(JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/papa91/activity/EmuBaseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->adLoadError:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/papa91/activity/EmuBaseActivity;->showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$502(Lcom/papa91/activity/EmuBaseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->isExit:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600()Lcom/papa91/activity/EmuBaseActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->unUpdateAchieve:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->update(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    .line 2
    .line 3
    return v0
.end method

.method public static native addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static synthetic b(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$getVideoAward$17(Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method

.method public static synthetic c(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$updateEndGameResultV2$15(Lcom/papa91/arc/bean/Request;II)V

    return-void
.end method

.method static canShowRewardMenu()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 10
    .line 11
    if-nez v0, :cond_0

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
    return v0
.end method

.method public static native cheatEnable(II)V
.end method

.method public static native checkCheatCode(Ljava/lang/String;Z)Z
.end method

.method public static clickAddCheatEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.click.addcheat"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "position"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static clickFreeCustomizeEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.click.freecustomize"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "position"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static complain(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static copyFolderReserveTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    array-length v1, p0

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "/"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    aget-object v2, p0, v0

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    aget-object v2, p0, v0

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    new-instance v4, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    aget-object v1, p0, v0

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public static copyStates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    const-string v4, "."

    const-string v5, "/"

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1400

    new-array v7, v0, [B

    if-eqz v6, :cond_b

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    :goto_0
    array-length v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v9, v0, :cond_b

    const/4 v10, -0x1

    .line 9
    :try_start_1
    new-instance v0, Ljava/io/File;

    aget-object v11, v6, v9

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".xml"

    .line 11
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".json"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 12
    :cond_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v13, v2

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {v11, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-eq v12, v10, :cond_3

    .line 15
    invoke-virtual {v0, v7, v8, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 18
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v9

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_6
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v12, ".png"

    if-eqz v11, :cond_7

    .line 23
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :cond_7
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v9

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    move-object v11, v13

    .line 27
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 30
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 32
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    nop

    const/4 v10, -0x1

    :goto_5
    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    .line 33
    :try_start_5
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_6
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v13, -0x1

    if-eq v1, v13, :cond_8

    const/4 v13, 0x0

    .line 37
    invoke-virtual {v10, v7, v13, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    .line 38
    :cond_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 39
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 40
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 41
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/io/File;->setLastModified(J)Z

    .line 42
    :cond_9
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 43
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 45
    :goto_7
    invoke-virtual {v1, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_a

    const/4 v11, 0x0

    .line 46
    invoke-virtual {v8, v7, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 47
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 48
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    return-void
.end method

.method private creatFrameLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x3

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const/16 v2, 0xc8

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    sget v1, Lcom/papa91/mix/R$id;->ad_root:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "VIP\u514d\u5e7f\u544a"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    const/4 v2, -0x2

    .line 77
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/16 v3, 0xb

    .line 87
    .line 88
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    .line 90
    .line 91
    const/16 v2, 0x14

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    .line 96
    .line 97
    const/16 v4, 0xa

    .line 98
    .line 99
    invoke-virtual {v1, v2, v4, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    sget v1, Lcom/papa91/mix/R$drawable;->baidu_ad_sponsor_back:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    const v1, -0x3a3a3b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    const/high16 v1, 0x41300000    # 11.0f

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adRoot:Landroid/widget/RelativeLayout;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$18;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$18;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 149
    .line 150
    const/16 v1, 0x8

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    .line 15
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff0c\u76ee\u6807\u76ee\u5f55\u5df2\u5b58\u5728\uff01"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "\u521b\u5efa\u76ee\u5f55\u6210\u529f\uff01"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 75
    .line 76
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff01"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v2
.end method

.method public static synthetic d(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$handleCheckNameResult$5(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static native deleteEditCheat(I)V
.end method

.method public static deleteOldSnapshot(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    array-length v0, p0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v0, :cond_4

    .line 31
    .line 32
    aget-object v3, p0, v2

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "."

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    const-wide/16 v8, 0x3e8

    .line 67
    .line 68
    mul-long v4, v4, v8

    .line 69
    .line 70
    sub-long/2addr v6, v4

    .line 71
    const-wide/32 v4, 0x5265c00

    .line 72
    .line 73
    .line 74
    cmp-long v8, v6, v4

    .line 75
    .line 76
    if-lez v8, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, p0

    .line 12
    .line 13
    const/high16 p0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, p0

    .line 16
    float-to-int p0, p1

    .line 17
    return p0
.end method

.method public static doneAchieve(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/papa91/arc/bean/AchievementDoneBean;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1}, Lcom/papa91/arc/bean/AchievementDoneBean;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-boolean p1, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->update(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic e(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$updateEndGameResult$12(Lcom/papa91/arc/bean/Response;II)V

    return-void
.end method

.method protected static emuLogCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emulogcat"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "packageName"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p0, "version"

    .line 24
    .line 25
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string p0, "errorInfo"

    .line 29
    .line 30
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static emuOnResume()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.resume"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static native enableEidtCheat(I)V
.end method

.method public static endGameRes(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "endGameRes: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/os/Message;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    iput v1, v0, Landroid/os/Message;->what:I

    .line 30
    .line 31
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 34
    .line 35
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static exitActivity(I)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/papa91/arc/ad/AdUtils;->showExitStickAd(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x2

    .line 9
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static native exitDlgBack(I)V
.end method

.method protected static native exitEmu()I
.end method

.method private findAppVersionTo16()Z
    .locals 8

    .line 1
    const-string v0, "com.papa91.fc.aso4"

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.mha"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v3, 0x4000

    .line 10
    .line 11
    :try_start_0
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 v4, 0x0

    .line 21
    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    :goto_0
    iget-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 38
    .line 39
    const/16 v7, 0x1f4

    .line 40
    .line 41
    if-lt v4, v7, :cond_0

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    :cond_0
    :try_start_2
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_1
    nop

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 50
    goto :goto_2

    .line 51
    :catch_2
    nop

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 54
    .line 55
    const/16 v1, 0x1b

    .line 56
    .line 57
    if-lt v4, v1, :cond_3

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    .line 61
    .line 62
    :try_start_3
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 71
    .line 72
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 73
    .line 74
    move v4, v0

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move v5, v6

    .line 77
    :goto_3
    move v6, v5

    .line 78
    :catch_3
    :cond_5
    iput v4, p0, Lcom/papa91/activity/EmuBaseActivity;->APP_Version:I

    .line 79
    .line 80
    return v6
.end method

.method public static firstLoadAutoSlot()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "firstLoadAutoSlot"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public static firstLoadAutoSlotSet()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "firstLoadAutoSlot"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public static freeLoadSlot()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "firstTimeFreeLoadSlot"

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    return v1
.end method

.method public static freeLoadSlotSet()V
    .locals 4

    .line 1
    const-string v0, "firstTimeFreeLoadSlot"

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ","

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$getVideoAward$16(Lcom/papa91/arc/bean/Response;I)V

    return-void
.end method

.method public static native gameCompleted()I
.end method

.method protected static gameOut(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "sec"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart160"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "startMode"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static gameStartLocalBattle(JJJJ)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestartlocalbattle"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "gameId"

    .line 26
    .line 27
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "uid"

    .line 46
    .line 47
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "p2Uid"

    .line 66
    .line 67
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string p0, "time"

    .line 71
    .line 72
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public static getAchievement()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "all_achievements"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/papa91/arc/http/utils/PrefUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getAllDNSUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static native getCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static native getCheatList1(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "_preferences"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static native getEditCheatList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static getExitAdPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    return-object v0
.end method

.method public static native getGameTime()I
.end method

.method public static getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static getIsAdult()V
    .locals 2

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
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static getNavBarOverride()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "get"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput-object v5, v4, v6

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    new-array v2, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v3, "qemu.hw.mainkeys"

    .line 28
    .line 29
    aput-object v3, v2, v6

    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :catchall_0
    return-object v0
.end method

.method public static getOnlineState()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.getOnlineState"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getPaste()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    .line 3
    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0
.end method

.method private getPermiss(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string p1, "\u8bf7\u6388\u6743 \u5f55\u97f3\u6743\u9650"

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static getPhoneInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "is_android"

    return-object v0
.end method

.method public static getRecordInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    array-length v4, v1

    .line 42
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    if-ge v2, v4, :cond_4

    .line 45
    .line 46
    add-int/lit8 v4, v2, 0x1

    .line 47
    .line 48
    move v5, v4

    .line 49
    :goto_1
    array-length v6, v1

    .line 50
    if-ge v5, v6, :cond_3

    .line 51
    .line 52
    aget-object v6, v1, v2

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    aget-object v8, v1, v5

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    cmp-long v10, v6, v8

    .line 65
    .line 66
    if-lez v10, :cond_2

    .line 67
    .line 68
    aget-object v6, v1, v5

    .line 69
    .line 70
    aget-object v7, v1, v2

    .line 71
    .line 72
    aput-object v7, v1, v5

    .line 73
    .line 74
    aput-object v6, v1, v2

    .line 75
    .line 76
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v2, v4

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v2, 0x0

    .line 82
    :goto_2
    array-length v4, v1

    .line 83
    if-ge v2, v4, :cond_8

    .line 84
    .line 85
    aget-object v4, v1, v2

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    aget-object v4, v1, v2

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "."

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_5

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_5
    aget-object v4, v1, v2

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    aget-object v4, v1, v2

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    aget-object v6, v1, v2

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/4 v5, -0x1

    .line 152
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_3

    .line 157
    :catch_0
    nop

    .line 158
    const/4 v4, -0x1

    .line 159
    :goto_3
    if-eq v4, v5, :cond_7

    .line 160
    .line 161
    new-instance v5, Ljava/sql/Date;

    .line 162
    .line 163
    aget-object v6, v1, v2

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 166
    .line 167
    .line 168
    move-result-wide v6

    .line 169
    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 170
    .line 171
    .line 172
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 173
    .line 174
    const-string v7, "yyyy-MM-dd HH:mm"

    .line 175
    .line 176
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const-string v6, ";"

    .line 184
    .line 185
    const-string v7, ".png,"

    .line 186
    .line 187
    const-string v8, ","

    .line 188
    .line 189
    if-nez v4, :cond_6

    .line 190
    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    aget-object v9, v1, v2

    .line 197
    .line 198
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    aget-object v8, v1, v2

    .line 209
    .line 210
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    goto :goto_4

    .line 246
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    aget-object v0, v1, v2

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    aget-object v0, v1, v2

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :cond_8
    :goto_5
    return-object v0
.end method

.method private getSystemPaste()V
    .locals 7

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "clipboard"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cmb:Landroid/content/ClipboardManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, ""

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v4, v2

    .line 32
    :goto_0
    if-ge v3, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v4}, Lcom/papa91/activity/EmuBaseActivity;->setPasteForCheat(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_1
    return-void
.end method

.method public static native getVCLoaded()I
.end method

.method static goExitPage(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "gameId"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v1, "level"

    .line 36
    .line 37
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->level:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string v1, "progress"

    .line 43
    .line 44
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->progress:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string v1, "levelUrl"

    .line 50
    .line 51
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->url:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string v1, "time"

    .line 57
    .line 58
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->time:I

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string v1, "max"

    .line 64
    .line 65
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->max:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v1, "isStatEndGameFailedPoint"

    .line 71
    .line 72
    sget-boolean v2, Lcom/papa91/activity/EmuBaseActivity;->isInChallenge:Z

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string v1, "endId"

    .line 78
    .line 79
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v1, "snapshotPath"

    .line 85
    .line 86
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->snapshotPath:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->jusrid:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v2, 0x0

    .line 98
    const-string v3, "battleUids"

    .line 99
    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    if-ne p0, v1, :cond_1

    .line 104
    .line 105
    :try_start_1
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->jusrid:Ljava/lang/String;

    .line 106
    .line 107
    const-string v1, ","

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_2

    .line 114
    .line 115
    array-length v1, p0

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    array-length v1, p0

    .line 119
    new-array v1, v1, [I

    .line 120
    .line 121
    :goto_0
    array-length v4, p0

    .line 122
    if-ge v2, v4, :cond_0

    .line 123
    .line 124
    aget-object v4, p0, v2

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    aput v4, v1, v2

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    new-array p0, v2, [I

    .line 140
    .line 141
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const-string v1, "com.join.mgps.activity.SimulatorExitPlayActivity1_"

    .line 154
    .line 155
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "4"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, p2

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic h(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$onCreate$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 3

    .line 1
    if-eqz p3, :cond_6

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

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
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-ne v2, p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1, p4}, Lcom/papa91/activity/EmuBaseActivity;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 48
    .line 49
    new-instance p3, Lcom/papa91/activity/EmuBaseActivity$42;

    .line 50
    .line 51
    invoke-direct {p3, p0, p1, p4}, Lcom/papa91/activity/EmuBaseActivity$42;-><init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    const/4 v0, 0x4

    .line 72
    if-ne v0, p4, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 75
    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-ne v2, p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance p2, Lcom/papa91/activity/h;

    .line 99
    .line 100
    invoke-direct {p2, p0, p3}, Lcom/papa91/activity/h;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 101
    .line 102
    .line 103
    const-wide/16 p3, 0x64

    .line 104
    .line 105
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p3, 0x3

    .line 118
    if-ne p3, p1, :cond_5

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-void
.end method

.method private handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->closeRealNameDialog()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

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
    const/4 v1, 0x4

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string v0, "antiAddtionWindowUp"

    .line 55
    .line 56
    const-string v1, "0"

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    new-instance v0, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 72
    .line 73
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$40;

    .line 74
    .line 75
    invoke-direct {v1, p0, p2}, Lcom/papa91/activity/EmuBaseActivity$40;-><init>(Lcom/papa91/activity/EmuBaseActivity;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 82
    .line 83
    new-instance v0, Lcom/papa91/activity/n;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1}, Lcom/papa91/activity/n;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method public static hasNavBar(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bool"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "config_showNavigationBar"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getNavBarOverride()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "1"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "0"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, p0

    .line 46
    :goto_0
    return v2

    .line 47
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    xor-int/2addr p0, v2

    .line 56
    return p0
.end method

.method public static hideBottomUIMenu()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x1006

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static native httpPostMemberInfo()V
.end method

.method public static synthetic i(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$checkRealName$3(Lcom/papa91/arc/bean/Response;I)V

    return-void
.end method

.method protected static native initEmu()I
.end method

.method protected static native initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private initSign()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v2, 0x4000

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "gzRN53VWRF9BYUXomg2014"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    .line 68
    .line 69
    .line 70
    :try_start_1
    const-string v1, "version"

    .line 71
    .line 72
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string v1, "deviceid"

    .line 78
    .line 79
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string v1, "sign"

    .line 85
    .line 86
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/papa91/common/MyJson;

    .line 92
    .line 93
    invoke-direct {v1}, Lcom/papa91/common/MyJson;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lorg/json/JSONArray;

    .line 97
    .line 98
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v3, "args"

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string v2, "messages"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_0
    new-instance v1, Lcom/papa91/utils/HttpUtils;

    .line 117
    .line 118
    invoke-direct {v1}, Lcom/papa91/utils/HttpUtils;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-object v3, Lcom/papa91/utils/HttpUtils;->EXIT_AD_URL:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, "/advertisement/simulator_sign_out_ad"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v3, Lcom/papa91/activity/EmuBaseActivity$19;

    .line 145
    .line 146
    invoke-direct {v3, p0}, Lcom/papa91/activity/EmuBaseActivity$19;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa91/utils/HttpUtils;->sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method private isFirstReame(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string v2, "true"

    .line 12
    .line 13
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return v1
.end method

.method public static isLogined()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "0"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public static isPathWriteable(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "test.txt"

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method static isRewardConfigInited()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public static isSettingSystemManage()I
    .locals 7

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "BBK_GIONE_NUM_GUIDE"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v4, 0x1

    .line 19
    add-int/2addr v3, v4

    .line 20
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    if-le v3, v0, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "BBK"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v3, "android.intent.category.LAUNCHER"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "android.intent.action.MAIN"

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    new-instance v0, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ge v1, v3, :cond_2

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 75
    .line 76
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .line 78
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    const-string v5, "com.iqoo.secure"

    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    sput v4, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 89
    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 97
    .line 98
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 99
    .line 100
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 101
    .line 102
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 103
    .line 104
    return v0

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    return v2

    .line 109
    :cond_3
    const-string v1, "GiONEE"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    const-string v1, "GIONEE"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const-string v1, "OPPO"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    const/4 v0, 0x3

    .line 135
    return v0

    .line 136
    :cond_5
    const-string v1, "vivo"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    return v4

    .line 145
    :cond_6
    return v2

    .line 146
    :cond_7
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/4 v1, 0x0

    .line 165
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ge v1, v3, :cond_9

    .line 170
    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 176
    .line 177
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 178
    .line 179
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    .line 181
    const-string v4, "com.gionee.softmanager"

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_8

    .line 188
    .line 189
    const/4 v2, 0x2

    .line 190
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 191
    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 197
    .line 198
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 199
    .line 200
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 201
    .line 202
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 203
    .line 204
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 205
    .line 206
    return v0

    .line 207
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_9
    return v2
.end method

.method public static synthetic j(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$updateEndGameResultV2$14(Lcom/papa91/arc/bean/Response;II)V

    return-void
.end method

.method public static native jMenuSaveState(I)I
.end method

.method public static synthetic k(Lcom/papa91/activity/EmuBaseActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$showInvitePlayUiJava$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$updateEndGameResult$13(Lcom/papa91/arc/bean/Request;II)V

    return-void
.end method

.method private synthetic lambda$checkRealName$3(Lcom/papa91/arc/bean/Response;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    iput-wide v3, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-long v3, v1

    .line 48
    if-ne p2, v2, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_0
    invoke-direct {p0, v3, v4, v0}, Lcom/papa91/activity/EmuBaseActivity;->playCountDown(JZ)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-ne p2, v2, :cond_4

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->showRealNameResult(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 78
    .line 79
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 87
    .line 88
    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$checkRealName$4(Lcom/papa91/arc/bean/Request;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->checkRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 7
    .line 8
    new-instance v1, Lcom/papa91/activity/m;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/papa91/activity/m;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private synthetic lambda$closeRealNameDialog$7()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method private synthetic lambda$endGameAllow$8(Lcom/papa91/arc/bean/Response;ZI)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getCards()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->isUnlimited()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-virtual {p0, p3, p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->showEndGameStartView(ZIZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getCards()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->isUnlimited()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p2, p1, p3}, Lcom/papa91/activity/EmuBaseActivity;->showEndGameFailed(IZI)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$endGameAllow$9(Lcom/papa91/arc/bean/Request;ZI)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->endGameAllow(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/activity/d;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/papa91/activity/d;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;ZI)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$endGameStart$10(Lcom/papa91/arc/bean/Response;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    if-ne v1, v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAllowBean;->isAllowed()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getChallengeId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->challengeId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getChallengeId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->endGameStartCountDown(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    sput-boolean p1, Lcom/papa91/activity/EmuBaseActivity;->isInChallenge:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->isWatchAd()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->hideAllView()V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    sput p1, Lcom/papa91/activity/EmuBaseActivity;->scenario:I

    .line 70
    .line 71
    new-instance p1, Lcom/papa91/view/EndGamePointGetDialog;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->allowBean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 74
    .line 75
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {p1, p0, v1, v2}, Lcom/papa91/view/EndGamePointGetDialog;-><init>(Landroid/app/Activity;Lcom/papa91/arc/bean/EndGameAllowBean;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 81
    .line 82
    .line 83
    const-string p1, "vsKjPopWindow"

    .line 84
    .line 85
    const-string v1, ""

    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "\u5df2\u7ecf\u6ca1\u6709\u6311\u6218\u6b21\u6570\u5566\uff01"

    .line 92
    .line 93
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 100
    .line 101
    :goto_1
    return-void
.end method

.method private synthetic lambda$endGameStart$11(Lcom/papa91/arc/bean/Request;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->endGameStart(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/activity/b;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/papa91/activity/b;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private synthetic lambda$getVideoAward$16(Lcom/papa91/arc/bean/Response;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->isAllowed()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1, p1}, Lcom/papa91/activity/EmuBaseActivity;->endGameAllow(ZI)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "\u9886\u53d6\u6210\u529f"

    .line 38
    .line 39
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcom/papa91/activity/EmuBaseActivity$43;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/papa91/activity/EmuBaseActivity$43;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v0, 0x3e8

    .line 53
    .line 54
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getVideoAward$17(Lcom/papa91/arc/bean/Request;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->getVideoAward(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/activity/s;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/activity/s;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleButtonAction$6(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getJumpLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "clickKnowGoRealPage"

    .line 9
    .line 10
    const-string v0, "0"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$handleCheckNameResult$5(Lcom/papa91/arc/bean/PopwindowBean;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-string p1, "nonageAstrictHint"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 p2, 0x1

    .line 50
    if-ne p1, p2, :cond_1

    .line 51
    .line 52
    const-string p1, "realNameUpWindows"

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ", dst="

    .line 2
    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x17

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "mounted"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Ljava/io/File;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "async state(oldVersion) src="

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {v1, p2}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/papa91/arc/util/FileUtils;->deleteDirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "async state src="

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p2, p1}, Lcom/papa91/activity/EmuBaseActivity;->copyStates(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catch_1
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_1
    return-void
.end method

.method private synthetic lambda$showInvitePlayUiJava$1(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->acceptInvitePlay(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$showInvitePlayUiJava$2(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->acceptInvitePlay(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$updateEndGameResult$12(Lcom/papa91/arc/bean/Response;II)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAdVideoConfigList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/papa91/arc/bean/EndGameAdBean;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->sdkType:I

    .line 50
    .line 51
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getAdId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkKey()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v2, v3, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadEndAd(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, p2, p3, p1}, Lcom/papa91/activity/EmuBaseActivity;->updateEndGameResultSuccess(IILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private synthetic lambda$updateEndGameResult$13(Lcom/papa91/arc/bean/Request;II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->updateEndGameResult(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/activity/o;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/papa91/activity/o;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;II)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateEndGameResultV2$14(Lcom/papa91/arc/bean/Response;II)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAwardCards()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getMultipleAwardCards()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gtz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAdVideoConfigList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/papa91/arc/bean/EndGameAdBean;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->scenario:I

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->sdkType:I

    .line 66
    .line 67
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getAdId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkKey()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0, v2, v3, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadEndAd(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/papa91/activity/EmuBaseActivity;->updateEndGameResultSuccess(IILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method private synthetic lambda$updateEndGameResultV2$15(Lcom/papa91/arc/bean/Request;II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->updateEndGameResultV2(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/activity/c;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/papa91/activity/c;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;II)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static loadAutoSlot(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    aput-object p1, p0, v0

    .line 13
    .line 14
    const-string p1, "readAutosave"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->firstLoadAutoSlot()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->firstLoadAutoSlotSet()V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/papa91/view/AutoSaveSlot;->showQuickLoadTip()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showAutoRecordTips()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static loadRomCompleted()V
    .locals 2

    .line 1
    const-string v0, "loadRomCompleted"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendGameMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$35;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$35;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static loadStageCompleted(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "status"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "message"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static native loadStageData(I)V
.end method

.method public static native loadState(Ljava/lang/String;)I
.end method

.method public static synthetic m(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$endGameAllow$9(Lcom/papa91/arc/bean/Request;ZI)V

    return-void
.end method

.method public static native modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
.end method

.method public static modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    const-string v3, "/"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    new-array v2, v5, [Ljava/io/File;

    .line 45
    .line 46
    :cond_2
    const/4 v4, 0x0

    .line 47
    :goto_0
    array-length v6, v2

    .line 48
    const/4 v7, 0x1

    .line 49
    sub-int/2addr v6, v7

    .line 50
    if-ge v4, v6, :cond_5

    .line 51
    .line 52
    add-int/lit8 v6, v4, 0x1

    .line 53
    .line 54
    move v7, v6

    .line 55
    :goto_1
    array-length v8, v2

    .line 56
    if-ge v7, v8, :cond_4

    .line 57
    .line 58
    aget-object v8, v2, v4

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    aget-object v10, v2, v7

    .line 65
    .line 66
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    cmp-long v12, v8, v10

    .line 71
    .line 72
    if-lez v12, :cond_3

    .line 73
    .line 74
    aget-object v8, v2, v7

    .line 75
    .line 76
    aget-object v9, v2, v4

    .line 77
    .line 78
    aput-object v9, v2, v7

    .line 79
    .line 80
    aput-object v8, v2, v4

    .line 81
    .line 82
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v4, v6

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    if-eqz p1, :cond_6

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, "vba"

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object/from16 v18, v4

    .line 122
    .line 123
    move-object v4, v0

    .line 124
    move-object/from16 v0, v18

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move-object v4, v0

    .line 128
    :goto_2
    if-eqz p2, :cond_7

    .line 129
    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, "_v2"

    .line 139
    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    move-object v0, v6

    .line 163
    :cond_7
    const/4 v6, 0x0

    .line 164
    move-object v8, v6

    .line 165
    const/4 v9, 0x0

    .line 166
    const/4 v10, 0x1

    .line 167
    :goto_3
    array-length v11, v2

    .line 168
    if-ge v9, v11, :cond_10

    .line 169
    .line 170
    aget-object v11, v2, v9

    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_f

    .line 177
    .line 178
    aget-object v11, v2, v9

    .line 179
    .line 180
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const-string v12, "."

    .line 185
    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-nez v11, :cond_8

    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_8
    aget-object v11, v2, v9

    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    invoke-virtual {v11, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-eqz v13, :cond_f

    .line 213
    .line 214
    aget-object v13, v2, v9

    .line 215
    .line 216
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    aget-object v14, v2, v9

    .line 221
    .line 222
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    add-int/2addr v14, v7

    .line 231
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    const/4 v14, -0x1

    .line 236
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_4

    .line 241
    :catch_0
    nop

    .line 242
    const/4 v13, -0x1

    .line 243
    :goto_4
    if-eq v13, v14, :cond_f

    .line 244
    .line 245
    new-instance v14, Ljava/sql/Date;

    .line 246
    .line 247
    aget-object v15, v2, v9

    .line 248
    .line 249
    move-object/from16 p0, v8

    .line 250
    .line 251
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    .line 252
    .line 253
    .line 254
    move-result-wide v7

    .line 255
    invoke-direct {v14, v7, v8}, Ljava/sql/Date;-><init>(J)V

    .line 256
    .line 257
    .line 258
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 259
    .line 260
    const-string v8, "yyyy-MM-dd HH:mm"

    .line 261
    .line 262
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const-string v8, ";"

    .line 270
    .line 271
    const-string v14, ","

    .line 272
    .line 273
    if-nez v13, :cond_9

    .line 274
    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    aget-object v12, v2, v9

    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    aget-object v12, v2, v9

    .line 293
    .line 294
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v12, ".png,"

    .line 302
    .line 303
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    move-object/from16 v8, p0

    .line 332
    .line 333
    move-object/from16 p2, v0

    .line 334
    .line 335
    move-object/from16 v16, v3

    .line 336
    .line 337
    move-object/from16 p1, v4

    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :cond_9
    const/16 v13, 0x2f

    .line 342
    .line 343
    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-nez v6, :cond_a

    .line 348
    .line 349
    new-instance v6, Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v11, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v15

    .line 355
    invoke-direct {v6, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_a
    const-string v15, "TmpState"

    .line 359
    .line 360
    if-nez p0, :cond_b

    .line 361
    .line 362
    new-instance v5, Ljava/lang/String;

    .line 363
    .line 364
    new-instance v13, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v13

    .line 379
    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_b
    move-object/from16 v5, p0

    .line 384
    .line 385
    :goto_5
    new-instance v13, Ljava/io/File;

    .line 386
    .line 387
    move-object/from16 p2, v0

    .line 388
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_c

    .line 412
    .line 413
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 414
    .line 415
    .line 416
    :cond_c
    const/16 v0, 0x2f

    .line 417
    .line 418
    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    new-instance v13, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const/4 v15, 0x1

    .line 434
    add-int/2addr v0, v15

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 436
    .line 437
    .line 438
    move-result v15

    .line 439
    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    new-instance v13, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v15, ".png"

    .line 465
    .line 466
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    move-object/from16 v16, v3

    .line 474
    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    new-instance v11, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v11

    .line 508
    aget-object v12, v2, v9

    .line 509
    .line 510
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    new-instance v12, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    aget-object v17, v2, v9

    .line 519
    .line 520
    move-object/from16 p1, v4

    .line 521
    .line 522
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    aget-object v12, v2, v9

    .line 537
    .line 538
    move-object/from16 v17, v5

    .line 539
    .line 540
    move-object v15, v6

    .line 541
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    .line 542
    .line 543
    .line 544
    move-result-wide v5

    .line 545
    new-instance v12, Ljava/io/File;

    .line 546
    .line 547
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    aget-object v0, v2, v9

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_d

    .line 557
    .line 558
    aget-object v0, v2, v9

    .line 559
    .line 560
    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    .line 562
    .line 563
    invoke-virtual {v12, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 564
    .line 565
    .line 566
    :cond_d
    new-instance v0, Ljava/io/File;

    .line 567
    .line 568
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 572
    .line 573
    .line 574
    move-result-wide v4

    .line 575
    new-instance v6, Ljava/io/File;

    .line 576
    .line 577
    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    if-eqz v12, :cond_e

    .line 585
    .line 586
    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 587
    .line 588
    .line 589
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 590
    .line 591
    .line 592
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    add-int/lit8 v10, v10, 0x1

    .line 635
    .line 636
    move-object v1, v0

    .line 637
    move-object v6, v15

    .line 638
    move-object/from16 v8, v17

    .line 639
    .line 640
    goto :goto_7

    .line 641
    :cond_f
    :goto_6
    move-object/from16 p2, v0

    .line 642
    .line 643
    move-object/from16 v16, v3

    .line 644
    .line 645
    move-object/from16 p1, v4

    .line 646
    .line 647
    move-object/from16 p0, v8

    .line 648
    .line 649
    move-object/from16 v8, p0

    .line 650
    .line 651
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 652
    .line 653
    move-object/from16 v4, p1

    .line 654
    .line 655
    move-object/from16 v0, p2

    .line 656
    .line 657
    move-object/from16 v3, v16

    .line 658
    .line 659
    const/4 v5, 0x0

    .line 660
    const/4 v7, 0x1

    .line 661
    goto/16 :goto_3

    .line 662
    .line 663
    :cond_10
    move-object/from16 p0, v8

    .line 664
    .line 665
    if-eqz v6, :cond_11

    .line 666
    .line 667
    if-eqz p0, :cond_11

    .line 668
    .line 669
    move-object/from16 v8, p0

    .line 670
    .line 671
    invoke-static {v8, v6}, Lcom/papa91/activity/EmuBaseActivity;->copyFolderReserveTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :cond_11
    :goto_8
    return-object v1
.end method

.method public static synthetic n(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->lambda$checkRealName$4(Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method

.method protected static netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.netbattlematchefficiency"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "jsonData"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method protected static native netSitDown(Z)V
.end method

.method public static synthetic o(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->lambda$closeRealNameDialog$7()V

    return-void
.end method

.method public static onAutoSaveClick()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$33;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$33;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onAutoSaveDoubleClick()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$34;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$34;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onLoadCheatListData()V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getCheatList1(I)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-gtz v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public static native onLoginFinish()V
.end method

.method public static openJavaEmuMenu(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne p0, v0, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne p0, v0, :cond_3

    .line 51
    .line 52
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ne p0, v0, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    .line 75
    .line 76
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ne p0, v0, :cond_5

    .line 87
    .line 88
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->getCode()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ne p0, v0, :cond_6

    .line 105
    .line 106
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->openMenu(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_0
    return-void
.end method

.method public static openMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$handleButtonAction$6(Lcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method public static pauseGame(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$30;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$30;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static payCondition(I)V
    .locals 0

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private playCountDown(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTime:J

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/papa91/activity/EmuBaseActivity;->isArenaCheck:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    const-wide/16 v0, 0x3e8

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method static playTime(J)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.playtime"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "uid"

    .line 16
    .line 17
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "sec"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public static synthetic q(Lcom/papa91/activity/EmuBaseActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$showInvitePlayUiJava$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->lambda$endGameStart$10(Lcom/papa91/arc/bean/Response;)V

    return-void
.end method

.method public static raiseVip(I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "0"

    .line 6
    .line 7
    const-string v0, "http://anv3cjapi.5fun.com/member/battle_kick/index"

    .line 8
    .line 9
    const-string v1, "4"

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-static {v1, p0, v0, v2, v2}, Lcom/papa91/activity/EmuBaseActivity;->StartcomplainMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    .line 26
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static reconnectNetwork()V
    .locals 2

    .line 1
    const-string v0, "battleReconnect"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendGameMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static recordEnd(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "recordEndTest: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    div-int/lit8 p0, p0, 0x3c

    .line 22
    .line 23
    const-string v1, "_params_rank_play_time"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected static native requestOnInquiry(Ljava/lang/String;)V
.end method

.method protected static native requestOnPay(Ljava/lang/String;)V
.end method

.method protected static native requestOnsign(Ljava/lang/String;)V
.end method

.method public static native resetEndGame(Ljava/lang/String;)V
.end method

.method public static rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.analytics"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "uniqueId"

    .line 31
    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "gameId"

    .line 53
    .line 54
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "uid"

    .line 75
    .line 76
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string p0, "amount"

    .line 80
    .line 81
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string p0, "times"

    .line 85
    .line 86
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p0, "type"

    .line 90
    .line 91
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x1

    .line 98
    return p0
.end method

.method static runOnUiThread1(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic s(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Response;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->lambda$endGameAllow$8(Lcom/papa91/arc/bean/Response;ZI)V

    return-void
.end method

.method public static native saveBindsFile()V
.end method

.method public static native saveSnap(I)V
.end method

.method public static selectCondition(I)V
    .locals 0

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static send(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    const-string v0, "gameId"

    .line 11
    .line 12
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->sendInBridge(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static sendAddFriends(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.addFriends"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "from"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private sendEmuShowHideState(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.show.hide"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "isOnStart"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static varargs sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.stat"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "event"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "gameId"

    .line 14
    .line 15
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "readAutosave"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, "onclickAutosave"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    :cond_0
    const-string p0, "pos"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aget-object p1, p1, v1

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public static sendFriendsApplication(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.friendsApplication"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected static sendGameExit()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static sendGameMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gameMessage"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "key"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "msg"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "startMode"

    .line 19
    .line 20
    sget p1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string p0, "gameId"

    .line 26
    .line 27
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p0, "roomId"

    .line 33
    .line 34
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p0, "uid"

    .line 40
    .line 41
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method static sendGamePlay(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamePlay"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "startMode"

    .line 14
    .line 15
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "gameId"

    .line 21
    .line 22
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "roomId"

    .line 28
    .line 29
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p0, "uid"

    .line 35
    .line 36
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static sendHandleEmptyMessage(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "_what"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static sendHandleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "_message"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method static sendInBridge(Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    new-instance v0, Landroid/os/Message;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    iput v1, v0, Landroid/os/Message;->what:I

    .line 17
    .line 18
    new-instance v1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "action"

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "fromCls"

    .line 45
    .line 46
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    :try_start_0
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->mMessenger:Landroid/os/Messenger;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    instance-of p0, p0, Lcom/papa91/activity/EmuBaseActivity;

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/papa91/activity/EmuBaseActivity;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindBridge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    return-void
.end method

.method public static sendReceiveInvitation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static sendStatEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "FCProduceBanner"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, p0, v1, v1, v0}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static sendUmengEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "papa_broadcast_share_umengevent"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "umengEvent"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "eventData"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static native setAdResult(I)V
.end method

.method public static setAdVisible(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/os/Message;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    iput v0, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Landroid/os/Message;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    iput v0, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    iput p0, p1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public static setBBK_GOINEE_sysAPP()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static setBananaVisible(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$31;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$31;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static setBannerType(II)V
    .locals 0

    return-void
.end method

.method public static native setBattleScore(II)V
.end method

.method public static setEmuUIVisible(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$36;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$36;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setFirestReame(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected static native setJoyStickKey([I)V
.end method

.method protected static native setJson(Ljava/lang/String;)I
.end method

.method public static setOnlineState(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.setOnlineState"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "state"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected static native setPadVisible(II)I
.end method

.method protected static setPadVisible(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(II)I

    return-void
.end method

.method protected static native setPasteForCheat(Ljava/lang/String;)V
.end method

.method public static native setPause(I)V
.end method

.method public static native setRewardResult(II)V
.end method

.method public static native setSPBind(III)V
.end method

.method public static native setSPVisible(Z)V
.end method

.method public static setScreenMode(I)V
    .locals 2

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->screenMode:I

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.screen_mode"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "screenMode"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static native setShareResult(II)V
.end method

.method protected static native setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setUserState(I)V
.end method

.method protected static native setVipType(II)V
.end method

.method public static showAchievementFloatDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static native showAutoRecordTips()V
.end method

.method protected static native showDailog(I)I
.end method

.method public static showExitDlg(IIIILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    new-instance p0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p1, "com.emu.ad.result"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "adAction"

    .line 25
    .line 26
    const/16 p2, 0x64

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string p1, "exit"

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->level:I

    .line 46
    .line 47
    sput p1, Lcom/papa91/activity/EmuBaseActivity;->progress:I

    .line 48
    .line 49
    sput p2, Lcom/papa91/activity/EmuBaseActivity;->max:I

    .line 50
    .line 51
    sput p3, Lcom/papa91/activity/EmuBaseActivity;->time:I

    .line 52
    .line 53
    sput-object p4, Lcom/papa91/activity/EmuBaseActivity;->url:Ljava/lang/String;

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    sput p0, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 57
    .line 58
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->exitMode:I

    .line 59
    .line 60
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->saveSnap(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public static native showInvitePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public static showJavaMembTips(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "tipid"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "charid"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static showJavaShortCut(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/content/Intent;

    .line 4
    .line 5
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 12
    .line 13
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 2

    .line 1
    const-string v0, "realNameDisplayWindow"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog;

    .line 9
    .line 10
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$41;

    .line 11
    .line 12
    invoke-direct {v1, p0, p2}, Lcom/papa91/activity/EmuBaseActivity$41;-><init>(Lcom/papa91/activity/EmuBaseActivity;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/RealNameDialog;-><init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 19
    .line 20
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, p2, v1}, Lcom/papa91/arc/dialog/RealNameDialog;->show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static showNetExitDlg(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->level:I

    .line 2
    .line 3
    sput p1, Lcom/papa91/activity/EmuBaseActivity;->progress:I

    .line 4
    .line 5
    sput p2, Lcom/papa91/activity/EmuBaseActivity;->max:I

    .line 6
    .line 7
    sput p3, Lcom/papa91/activity/EmuBaseActivity;->time:I

    .line 8
    .line 9
    sput-object p4, Lcom/papa91/activity/EmuBaseActivity;->url:Ljava/lang/String;

    .line 10
    .line 11
    sput-object p5, Lcom/papa91/activity/EmuBaseActivity;->jusrid:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    sput p0, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    sput p1, Lcom/papa91/activity/EmuBaseActivity;->exitMode:I

    .line 18
    .line 19
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->saveSnap(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private showRealNameResult(Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "clickKnowGoRealPage"

    .line 17
    .line 18
    const-string v2, "0"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->netSitDown(Z)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long p1, v0, v2

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->netSitDown(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public static showRewardDialog(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Landroid/app/Activity;

    .line 6
    .line 7
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$21;

    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Lcom/papa91/activity/EmuBaseActivity$21;-><init>(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static showRewardDialog1(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 18
    .line 19
    :cond_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$24;

    .line 24
    .line 25
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget v3, Lcom/papa91/mix/R$style;->Dialog:I

    .line 30
    .line 31
    invoke-direct {v0, v2, v3}, Lcom/papa91/activity/EmuBaseActivity$24;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 35
    .line 36
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$25;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/papa91/activity/EmuBaseActivity$25;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/papa91/view/RewardBananaDialog;->setListener(Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 45
    .line 46
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$26;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/papa91/activity/EmuBaseActivity$26;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaDialog;->show()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x2

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    :try_start_0
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "banana_reward_config"

    .line 77
    .line 78
    invoke-virtual {v0, p0, v1}, Lcom/papa91/common/MyJson;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v0, p0}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "max_reward_amount"

    .line 94
    .line 95
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    const-string p0, "min_reward_amount"

    .line 99
    .line 100
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    const-string p0, "max_reward_times"

    .line 104
    .line 105
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    const-string p0, "min_reward_times"

    .line 109
    .line 110
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    const-string p0, "left_play_reward_count"

    .line 114
    .line 115
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 120
    .line 121
    const-string p0, "left_device_play_reward_count"

    .line 122
    .line 123
    invoke-virtual {v0, p0, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    sput p0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 128
    .line 129
    sget p0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 130
    .line 131
    if-gez p0, :cond_3

    .line 132
    .line 133
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 134
    .line 135
    :cond_3
    sget p0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    .line 137
    :try_start_1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    :try_start_2
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .line 141
    move v10, v0

    .line 142
    move v0, p0

    .line 143
    move p0, v2

    .line 144
    move v2, v10

    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    move v10, v0

    .line 148
    move v0, p0

    .line 149
    move-object p0, v1

    .line 150
    move v1, v10

    .line 151
    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const/4 v1, 0x0

    .line 154
    move-object v10, v0

    .line 155
    move v0, p0

    .line 156
    move-object p0, v10

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    const/4 p0, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    :goto_0
    move v6, p0

    .line 161
    move v3, v0

    .line 162
    move v5, v2

    .line 163
    goto :goto_3

    .line 164
    :catch_2
    move-exception p0

    .line 165
    const/4 v0, 0x0

    .line 166
    const/4 v1, 0x0

    .line 167
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    move v3, v0

    .line 171
    move v5, v1

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    const/4 v3, 0x0

    .line 174
    const/4 v5, 0x0

    .line 175
    :goto_2
    const/4 v6, 0x0

    .line 176
    :goto_3
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 177
    .line 178
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 179
    .line 180
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p0, v0, v1, v2}, Lcom/papa91/view/RewardBananaDialog;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 188
    .line 189
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 190
    .line 191
    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 192
    .line 193
    sget v9, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 194
    .line 195
    invoke-virtual/range {v2 .. v9}, Lcom/papa91/view/RewardBananaDialog;->setData(ILjava/lang/String;IIILjava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method static showRewardMenu()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$29;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/activity/EmuBaseActivity$29;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected static showRewardTipDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/view/RewardBananaTipDialog;

    .line 2
    .line 3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lcom/papa91/mix/R$style;->Dialog:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/papa91/view/RewardBananaTipDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$22;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/papa91/activity/EmuBaseActivity$22;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaTipDialog;->show()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method static showToast(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$32;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$32;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private showVideoPopWin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/papa91/VideoStrategyPop;

    .line 13
    .line 14
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$6;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$6;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/papa91/VideoStrategyPop;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 p2, 0x11

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 35
    .line 36
    new-instance p2, Lcom/papa91/activity/EmuBaseActivity$7;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/papa91/activity/EmuBaseActivity$7;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    move-object v11, p0

    .line 1
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v12, Lcom/papa91/activity/EmuBaseActivity$8;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/papa91/activity/EmuBaseActivity$8;-><init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v12, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 3
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$9;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$9;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setCancelBtn(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$10;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$10;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setImgListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, v11, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$11;

    move-object p1, v1

    move-object p2, p0

    move/from16 p3, p8

    move/from16 p4, p9

    move/from16 p5, p10

    move/from16 p6, p11

    invoke-direct/range {p1 .. p6}, Lcom/papa91/activity/EmuBaseActivity$11;-><init>(Lcom/papa91/activity/EmuBaseActivity;IIII)V

    invoke-virtual {v0, v1}, Lcom/papa91/MessageVipCommonDialog;->setOkBtn(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static sign()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "com.join.mgps.activity.login.LoginSplashActivity_"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static snapFinished(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lcom/papa91/activity/EmuBaseActivity;->snapshotPath:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    .line 4
    .line 5
    sget v1, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ".main"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "imagePath"

    .line 35
    .line 36
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    sget v0, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->exitMode:I

    .line 47
    .line 48
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->goExitPage(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->deleteOldSnapshot(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p0, 0x0

    .line 55
    sput p0, Lcom/papa91/activity/EmuMenuBaseActivity;->saveSnapFrom:I

    .line 56
    .line 57
    return-void
.end method

.method public static spVisibleState()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "_isSpVisible"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    return v2
.end method

.method public static startAPPActivity()V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v2, "android.intent.action.MAIN"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/content/ComponentName;

    .line 11
    .line 12
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "com.join.mgps.activity.ForumActivity_"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    const-string v3, "fid"

    .line 28
    .line 29
    sget v4, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v3, "name"

    .line 35
    .line 36
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v3, "icon_src"

    .line 40
    .line 41
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v0, "users"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v0, "posts"

    .line 51
    .line 52
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v0, "add_time"

    .line 56
    .line 57
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    const-string v0, "key_forum_bean"

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string v0, "com.wufun.intent.activity.view.action.emuintent"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static startForumsActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static startForumsActivityForAd(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x65

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static startRewardCount()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showRewardMenu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static startShare(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$2;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0}, Lcom/papa91/activity/EmuBaseActivity$2;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static startShowAd(II)V
    .locals 1

    .line 1
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static startplayTime(I)V
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->playTime(J)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startplayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static startplayTime(J)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->playTime(J)Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startplayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static toPrefecture(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected static unLockSP(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static update(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public static updateAchieve(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->update(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static updateVsScore(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "battleScoreBoard"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/papa91/activity/EmuBaseActivity;->sendGameMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static uploadEfficiencyData()V
    .locals 0

    return-void
.end method


# virtual methods
.method public HttpPost_Memer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->mDialog:Landroid/app/Dialog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected asyncConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$38;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$38;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected asyncFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, ".srm"

    .line 2
    .line 3
    const-string v1, ".mcr"

    .line 4
    .line 5
    const-string v2, ".sav"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method bindBridge()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$20;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuBaseActivity$20;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    new-instance v1, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/content/ComponentName;

    .line 26
    .line 27
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "com.join.mgps.va.service.MessengerService"

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
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
    :goto_0
    return-void
.end method

.method public bindService()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->gameStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindBridge()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public buySp()V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Lcom/papa91/activity/EmuBaseActivity$15;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lcom/papa91/activity/EmuBaseActivity$15;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, v1, v2, v3}, Lcom/papa91/paay/PayCenter;->buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected checkRealName(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 35
    .line 36
    new-instance v1, Lcom/papa91/arc/bean/ReqRealNameArgs;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqRealNameArgs;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUid(Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUserToken(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    iget-object v3, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    const/16 v2, 0xa

    .line 74
    .line 75
    if-ne p1, v2, :cond_4

    .line 76
    .line 77
    const-string v2, "FIGHT_LOBBY"

    .line 78
    .line 79
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const-string v2, "SO_SIMULATOR"

    .line 83
    .line 84
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 85
    .line 86
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->gameType:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameType(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 96
    .line 97
    .line 98
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameId(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setAction(Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "ANDROID"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v2, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/papa91/activity/f;

    .line 130
    .line 131
    invoke-direct {v2, p0, v1, p1}, Lcom/papa91/activity/f;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->loading_real_name:Z

    .line 143
    .line 144
    :goto_1
    return-void
.end method

.method protected closeRealNameDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/activity/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/activity/l;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public complainMsg(II)V
    .locals 3

    .line 1
    const-string v0, "4"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "http://anv3frapi.5fun.com/lobby/report?report_uid="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, "&reported_uid="

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    const/high16 p2, 0x10000000

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string p2, "com.wufun.intent.activity.view.action.emuintent"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string v0, "android.intent.category.DEFAULT"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    .line 55
    .line 56
    .line 57
    :try_start_0
    const-string v1, "link_type"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v1, "jump_type"

    .line 65
    .line 66
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v1, "link_type_val"

    .line 72
    .line 73
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    const-string v1, "intentDataJson"

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "/PSP"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v3, 0x4000

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    nop

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_1
    const/4 v3, 0x0

    .line 29
    :try_start_1
    new-instance v4, Lcom/papa91/common/MyJson;

    .line 30
    .line 31
    invoke-direct {v4, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 32
    .line 33
    .line 34
    :try_start_2
    const-string p1, "romPath"

    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    invoke-virtual {v4, p1, v3}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    .line 44
    const/16 v3, 0x29

    .line 45
    .line 46
    const-string v5, "ugcPath"

    .line 47
    .line 48
    if-ge v1, v3, :cond_1

    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/lang/String;

    .line 54
    .line 55
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    const/16 v1, 0x2f

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 71
    .line 72
    add-int/lit8 v3, p1, 0x1

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v3, Ljava/lang/String;

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v7, "/"

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    new-instance v3, Ljava/io/File;

    .line 112
    .line 113
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-nez v6, :cond_2

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 125
    .line 126
    .line 127
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v7, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance p1, Ljava/io/File;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_3

    .line 181
    .line 182
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catch_1
    move-exception p1

    .line 187
    :try_start_4
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    new-instance p2, Ljava/lang/String;

    .line 193
    .line 194
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object p2, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catch_2
    move-exception p1

    .line 206
    move-object v3, v4

    .line 207
    goto :goto_2

    .line 208
    :catch_3
    move-exception p1

    .line 209
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    move-object v4, v3

    .line 213
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    return-object p1
.end method

.method destroyRewardInfo()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 7
    .line 8
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->startRewardCount:Z

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    iput v1, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 12
    .line 13
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 14
    .line 15
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaTipDialog:Lcom/papa91/view/RewardBananaTipDialog;

    .line 34
    .line 35
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 36
    .line 37
    return-void
.end method

.method public endGameAllow(ZI)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1}, Lcom/papa91/activity/EmuBaseActivity;->showEndGameStartView(ZIZ)V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->isAfterFailedEndGame:Z

    .line 22
    .line 23
    new-instance v0, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setGameId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setUid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setScenario(I)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setEndgameId(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, v0}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/papa91/activity/i;

    .line 63
    .line 64
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/papa91/activity/i;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;ZI)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 72
    .line 73
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public endGameStart()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 3
    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 22
    .line 23
    new-instance v1, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setGameId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setUid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestEndGameAllowArgs;->setEndgameId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/papa91/activity/k;

    .line 59
    .line 60
    invoke-direct {v2, p0, v1}, Lcom/papa91/activity/k;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 68
    .line 69
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 70
    .line 71
    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isStarting:Z

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public endGameStartCountDown(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method gameStart()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 6
    .line 7
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v1, "_"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->gameStart15(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "mgpapa/aidlservice/Game_start15_"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_0
    const/4 v2, 0x2

    .line 67
    if-eq v0, v2, :cond_2

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-ne v0, v2, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v2, v3, v0}, Lcom/papa91/activity/EmuBaseActivity;->gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, "mgpapa/aidlservice/Game_start160_"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 134
    .line 135
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p0, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_3

    .line 142
    .line 143
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, "mgpapa/aidlservice/Game_startBattle15_"

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    :cond_3
    :goto_1
    return-void
.end method

.method gameStart15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestart15"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.gamestartbattle15"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "uid"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public native getCurChar()I
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v1, "MD5"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "UTF-8"

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    array-length v3, p1

    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    aget-byte v3, p1, v2

    .line 32
    .line 33
    and-int/lit16 v3, v3, 0xff

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x1

    .line 44
    if-ne v3, v4, :cond_0

    .line 45
    .line 46
    const-string v3, "0"

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    aget-byte v3, p1, v2

    .line 52
    .line 53
    and-int/lit16 v3, v3, 0xff

    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    aget-byte v3, p1, v2

    .line 64
    .line 65
    and-int/lit16 v3, v3, 0xff

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object p1

    .line 82
    :catch_0
    return-object v0
.end method

.method protected getRewardConfig()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig:I

    .line 15
    .line 16
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfigCount:I

    .line 20
    .line 21
    return-void
.end method

.method public getVideoAward(IZ)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/papa91/arc/bean/EndGameAwardArgs;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/papa91/arc/bean/EndGameAwardArgs;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setGameId(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setUid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setEndgameId(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->challengeId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setChallengeId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setScenario(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lcom/papa91/arc/bean/EndGameAwardArgs;->setMultiply(Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2, v0}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/papa91/activity/j;

    .line 61
    .line 62
    invoke-direct {v0, p0, p2, p1}, Lcom/papa91/activity/j;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 70
    .line 71
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V
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
    :goto_0
    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public native hasLifeCheck(J)Z
.end method

.method public hideAllView()V
    .locals 0

    return-void
.end method

.method public hideMenuDialog()V
    .locals 0

    return-void
.end method

.method public initBanner(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method initReceiver()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$5;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$IMReceive;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    .line 38
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v1, "com.join.mgps.activity.sendUI"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->iMReceive:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    .line 57
    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    .line 76
    .line 77
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 81
    .line 82
    new-instance v1, Landroid/content/IntentFilter;

    .line 83
    .line 84
    const-string v2, "com.join.android.app.mgsim.broadcast.action_login_success"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    .line 98
    .line 99
    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    .line 100
    .line 101
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v2, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    .line 118
    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    .line 120
    .line 121
    const-string v1, "com.emu.share.result"

    .line 122
    .line 123
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    .line 127
    .line 128
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    .line 137
    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    .line 139
    .line 140
    const-string v1, "com.show.realname.check"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    .line 146
    .line 147
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 156
    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    .line 158
    .line 159
    const-string v1, "com.emu.ad.result"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    .line 166
    const/16 v2, 0x21

    .line 167
    .line 168
    if-lt v1, v2, :cond_0

    .line 169
    .line 170
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 171
    .line 172
    const/4 v2, 0x2

    .line 173
    invoke-static {p0, v1, v0, v2}, Lcom/papa91/activity/a;->a(Lcom/papa91/activity/EmuBaseActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 178
    .line 179
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    :goto_0
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$GameReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    .line 188
    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    .line 190
    .line 191
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .line 193
    .line 194
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowInvite:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionOnOnlineState:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleMessage:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleEmptyMessage:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHandleExitGame:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    .line 220
    .line 221
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    .line 225
    .line 226
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 227
    .line 228
    .line 229
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    .line 230
    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    .line 232
    .line 233
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .line 235
    .line 236
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuSlot:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuCheat:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuPerformance:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuGate:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuOnekey:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenu:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionHideMenu:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionVipTip:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowMenuView:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionShowShare:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadRomFinish:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionLoadStageCompleted:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->actionRecordEnd:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v1, "com.join.android.app.mgsim.rank_record_upload_result"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v1, "com.join.android.app.mgsim.endgame_record_upload_result"

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.screen_mode"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    .line 322
    .line 323
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    .line 327
    .line 328
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$PermissRecver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 329
    .line 330
    .line 331
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    .line 332
    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    .line 334
    .line 335
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v1, "com.wufun.get.permission.EMU"

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    .line 344
    .line 345
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 349
    .line 350
    if-nez v0, :cond_1

    .line 351
    .line 352
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 353
    .line 354
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 355
    .line 356
    .line 357
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 358
    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    .line 360
    .line 361
    const-string v1, "com.emu.realName.result"

    .line 362
    .line 363
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 367
    .line 368
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    :cond_1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$CommonMessageReceiver;

    .line 372
    .line 373
    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuBaseActivity$CommonMessageReceiver;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 374
    .line 375
    .line 376
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 377
    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    .line 379
    .line 380
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v1, "com.emu.battle.score"

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    .line 390
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    .line 392
    .line 393
    return-void
.end method

.method public loadRomFinish()V
    .locals 0

    return-void
.end method

.method protected loginFinish()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->unUpdateAchieve:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected needResumeGame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAfterActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0xf

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const/16 p1, 0xb

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/activity/EmuBaseActivity;->baseActivity:Lcom/papa91/activity/EmuBaseActivity;

    .line 4
    .line 5
    sput-object p0, Lcom/papa91/activity/EmuBaseActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->initSign()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x80

    .line 15
    .line 16
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->adExitRootView:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    .line 38
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->adExitRootView:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;->findAppVersionTo16()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->bindService()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/io/File;

    .line 55
    .line 56
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "/"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    sget-object v4, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v4, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v5, Lcom/papa91/activity/p;

    .line 98
    .line 99
    invoke-direct {v5, p0, v2, v1, p1}, Lcom/papa91/activity/p;-><init>(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->initReceiver()V

    .line 106
    .line 107
    .line 108
    sget-boolean p1, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->setDefaultRewardConfig()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    .line 116
    .line 117
    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->updateAutoSlotData()V

    .line 119
    .line 120
    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v1, "jsonData"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    :try_start_1
    new-instance v1, Lcom/papa91/common/MyJson;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p1, "dnsJson"

    .line 139
    .line 140
    invoke-virtual {v1, p1, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v1, Lcom/google/gson/Gson;

    .line 155
    .line 156
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 157
    .line 158
    .line 159
    const-class v2, Lcom/papa91/common/DNSDataResult;

    .line 160
    .line 161
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/papa91/common/DNSDataResult;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_1

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_1

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAppContent()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    sput-object v1, Lcom/papa91/utils/HttpUtils;->EXIT_AD_URL:Ljava/lang/String;

    .line 188
    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_2

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_2

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getFightV3()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    .line 210
    .line 211
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getGameUrl()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_3

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getGameUrl()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sput-object v0, Lcom/papa91/utils/HttpUtils;->GAME_URL:Ljava/lang/String;

    .line 226
    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAccountCertification()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_4

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/papa91/common/DNSDataResult;->getAccountCertification()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    sput-object p1, Lcom/papa91/utils/HttpUtils;->RealName_URL:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :catch_0
    move-exception p1

    .line 245
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :catch_1
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    :cond_4
    :goto_0
    invoke-static {v3}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->gameReceiver:Lcom/papa91/activity/EmuBaseActivity$GameReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTimeReceiver:Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->netWorkReceiver:Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->recver:Lcom/papa91/activity/EmuBaseActivity$PermissRecver;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->menuViewReceiver:Lcom/papa91/activity/EmuBaseActivity$MenuViewReceiver;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->shareResultReceiver:Lcom/papa91/activity/EmuBaseActivity$ShareResultReceiver;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->realnameResultReceiver:Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adResultReceiver:Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 71
    .line 72
    .line 73
    :cond_3
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaDialog:Lcom/papa91/view/RewardBananaDialog;

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->actionReceiver:Lcom/papa91/activity/EmuBaseActivity$ActionReceiver;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    const/4 v0, 0x0

    .line 83
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 84
    .line 85
    const/4 v2, -0x1

    .line 86
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 87
    .line 88
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 89
    .line 90
    const-string v0, ""

    .line 91
    .line 92
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->destroyRewardInfo()V

    .line 95
    .line 96
    .line 97
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->unbindBridge()V

    .line 104
    .line 105
    .line 106
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method protected onHandleEmuExit()V
    .locals 0

    return-void
.end method

.method protected onHandleGameExit(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onHandleRealName(IZ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->closeRealNameDialog()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 10
    .line 11
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0xf

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 34
    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/papa91/activity/EmuBaseActivity;->hasCheckRealName:Z

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method protected onHandlerResultNameResult(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->onHandleRealName(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->videoStrategyPop:Lcom/papa91/VideoStrategyPop;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onLoadStageCompleted(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-string v1, "jsonData"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lcom/papa91/common/MyJson;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "intentFrom"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, p1, v2}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-string v2, "romPath"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "/"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    const/4 v2, 0x1

    .line 60
    if-ne p1, v2, :cond_1

    .line 61
    .line 62
    const-string p1, "netState"

    .line 63
    .line 64
    invoke-virtual {v1, p1, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->pause()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected onRankRecordEnd(I)V
    .locals 0

    return-void
.end method

.method protected onRankUploadResult(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->HttpPost_Memer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isInBackground:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/papa91/view/DragProgressView;->resume()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->emuOnResume()V

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity;->checkRealNameType:I

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/papa91/activity/EmuBaseActivity;->onHandleRealName(IZ)V

    .line 38
    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->needCheckRealName:Z

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->isFirstReame(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2, v2}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Lcom/papa91/activity/EmuBaseActivity;->modifyRecordInfo(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setFirestReame(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuShowHideState(Z)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isExit:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, v2}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuShowHideState(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->isExit:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuShowHideState(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onVipChanged()V
    .locals 0

    return-void
.end method

.method public raseVipToMgsim(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "com.join.mgps.activity.ShareWebActivity_"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v0, "android.intent.action.VIEW"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "gameId"

    .line 63
    .line 64
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string p1, "com.join.mgps.papa.share_webview_raiseVip"

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public selectSpAndCheat(I)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->appCodeIsBigger160:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->payType:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "data"

    .line 22
    .line 23
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "isbuy"

    .line 29
    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "errorMsg"

    .line 36
    .line 37
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UPDATA_APP_TOAST:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnInquiry(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 58
    .line 59
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    const-string v5, ""

    .line 64
    .line 65
    new-instance v6, Lcom/papa91/activity/EmuBaseActivity$17;

    .line 66
    .line 67
    invoke-direct {v6, p0}, Lcom/papa91/activity/EmuBaseActivity$17;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 68
    .line 69
    .line 70
    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 76
    .line 77
    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 80
    .line 81
    const-string v11, "client"

    .line 82
    .line 83
    sget-object v12, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v13, Lcom/papa91/activity/EmuBaseActivity$16;

    .line 86
    .line 87
    invoke-direct {v13, p0}, Lcom/papa91/activity/EmuBaseActivity$16;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 88
    .line 89
    .line 90
    move-object v7, p0

    .line 91
    invoke-static/range {v7 .. v13}, Lcom/papa91/paay/PayCenter;->startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_2
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 96
    .line 97
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    .line 102
    .line 103
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buyCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_3
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 108
    .line 109
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 110
    .line 111
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    .line 114
    .line 115
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_4
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 120
    .line 121
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 122
    .line 123
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    .line 126
    .line 127
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buyCoin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_5
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 132
    .line 133
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 134
    .line 135
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->payListener:Lcom/papa91/paay/PayListener;

    .line 138
    .line 139
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_6
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 144
    .line 145
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 146
    .line 147
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    .line 150
    .line 151
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquiryCoinInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_7
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 156
    .line 157
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 158
    .line 159
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->selectListener:Lcom/papa91/paay/PayListener;

    .line 162
    .line 163
    invoke-static {p0, p1, v0, v1, v2}, Lcom/papa91/paay/PayCenter;->inquirySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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
    const-string v1, "gameId"

    .line 9
    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "uid"

    .line 16
    .line 17
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "position"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p2, "eventName"

    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p1, "endId"

    .line 33
    .line 34
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method sendEmuExitBroadcast(I)V
    .locals 3

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
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public native setAutoSave(I)V
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa91/view/AutoSaveSlot;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/papa91/view/AutoSaveSlot;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->getView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/papa91/view/DragProgressView;

    .line 24
    .line 25
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Lcom/papa91/view/DragProgressView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 40
    .line 41
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$27;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$27;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/papa91/view/DragProgressView;->setOnProduceListener(Lcom/papa91/view/DragProgressView$OnProduceListener;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 50
    .line 51
    new-instance v2, Lcom/papa91/activity/EmuBaseActivity$28;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuBaseActivity$28;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/papa91/view/DragProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/papa91/view/FloatingDragger;

    .line 69
    .line 70
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 71
    .line 72
    invoke-direct {v1, p0, v0, v2}, Lcom/papa91/view/FloatingDragger;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/papa91/view/FloatingDragger;->getView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    nop

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void
.end method

.method setDefaultRewardConfig()V
    .locals 16

    .line 1
    const-string v0, "init_first_box_time"

    .line 2
    .line 3
    const-string v1, "min_time_interval"

    .line 4
    .line 5
    const-string v2, "max_time_interval"

    .line 6
    .line 7
    const-string v3, "left_device_play_reward_count"

    .line 8
    .line 9
    const-string v4, "left_play_reward_count"

    .line 10
    .line 11
    const-string v5, "min_reward_times"

    .line 12
    .line 13
    const-string v6, "max_reward_times"

    .line 14
    .line 15
    const-string v7, "min_reward_amount"

    .line 16
    .line 17
    const-string v8, "max_reward_amount"

    .line 18
    .line 19
    const-string v9, "{    \"error\": 0,    \"msg\": \"success\",    \"data\": {        \"max_reward_amount\": 300,        \"min_reward_amount\": 100,        \"min_reward_times\": 2,        \"max_reward_times\": 8,        \"max_play_reward_count\": 30,        \"max_start_reward_count\": 10,        \"max_time_interval\": 90,        \"min_time_interval\": 30,        \"init_first_box_time\": 15,        \"reward_count\": 4,        \"left_reward_count\": 36,        \"start_reward_count\": 4,        \"left_start_reward_count\": 6,        \"play_reward_count\": 0,        \"left_play_reward_count\": 30,        \"left_game_start_reward_count\": 1,        \"left_device_start_reward_count\": 10,        \"left_device_play_reward_count\": 30,        \"total_reward_amount\": 0    }}"

    .line 20
    .line 21
    :try_start_0
    new-instance v10, Lcom/papa91/common/MyJson;

    .line 22
    .line 23
    invoke-direct {v10, v9}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v9, "error"

    .line 27
    .line 28
    const/4 v11, -0x1

    .line 29
    invoke-virtual {v10, v9, v11}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const-string v11, "msg"

    .line 34
    .line 35
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    const-string v11, "data"

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    invoke-virtual {v10, v11, v12}, Lcom/papa91/common/MyJson;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    if-nez v9, :cond_9

    .line 46
    .line 47
    if-eqz v10, :cond_9

    .line 48
    .line 49
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const/4 v11, 0x0

    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v9, 0x0

    .line 62
    :goto_0
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v12, 0x0

    .line 74
    :goto_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    if-eqz v13, :cond_2

    .line 79
    .line 80
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const/4 v13, 0x0

    .line 86
    :goto_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    if-eqz v14, :cond_3

    .line 91
    .line 92
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const/4 v14, 0x0

    .line 98
    :goto_3
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_4

    .line 103
    .line 104
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    :cond_4
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-eqz v15, :cond_5

    .line 113
    .line 114
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->max_time_interval:I

    .line 119
    .line 120
    :cond_5
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->min_time_interval:I

    .line 131
    .line 132
    :cond_6
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->init_first_box_time:I

    .line 143
    .line 144
    :cond_7
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 155
    .line 156
    :cond_8
    sput v11, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 157
    .line 158
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 159
    .line 160
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 165
    .line 166
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 167
    .line 168
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 169
    .line 170
    new-instance v0, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lorg/json/JSONObject;

    .line 176
    .line 177
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->left_device_play_reward_count:I

    .line 196
    .line 197
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    const-string v2, "banana_reward_config"

    .line 201
    .line 202
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :cond_9
    :goto_4
    return-void
.end method

.method public setMenuDirection(I)V
    .locals 0

    return-void
.end method

.method setRewardResult1(IIII)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-le p3, v0, :cond_1

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    sget p4, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 9
    .line 10
    :cond_0
    new-instance p1, Lcom/papa91/view/RewardBananaResultDialog;

    .line 11
    .line 12
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    sget v1, Lcom/papa91/mix/R$style;->Dialog:I

    .line 17
    .line 18
    invoke-direct {p1, p3, v1}, Lcom/papa91/view/RewardBananaResultDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Lcom/papa91/activity/EmuBaseActivity$23;

    .line 22
    .line 23
    invoke-direct {p3, p0}, Lcom/papa91/activity/EmuBaseActivity$23;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Lcom/papa91/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p4}, Lcom/papa91/view/RewardBananaResultDialog;->show(II)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public setRootAdViewParentVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->adParent:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method protected setUserStateUi(I)V
    .locals 0

    return-void
.end method

.method public showEndGameFailed(IZI)V
    .locals 0

    return-void
.end method

.method public showEndGameStartView(ZIZ)V
    .locals 0

    return-void
.end method

.method protected showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method showInvitePlayUiJava(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/util/SystemInfoUtils;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/util/SystemInfoUtils;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/papa91/arc/util/SystemInfoUtils;->getTopActivity()Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Lcom/papa91/mix/R$layout;->pop_friend_invite_emu:I

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->build(Landroid/app/Activity;Landroid/view/View;)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setOutsideTouchDismiss(Z)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget v3, Lcom/papa91/mix/R$style;->animationFromRight:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->setAnimationStyle(I)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->createPopupWindow()Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget v4, Lorg/ppsspp/ppsspp/R$dimen;->wdp560:I

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget v4, Lorg/ppsspp/ppsspp/R$dimen;->wdp136:I

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 93
    .line 94
    .line 95
    sget v2, Lcom/papa91/mix/R$id;->accept:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->accept:Landroid/widget/TextView;

    .line 104
    .line 105
    new-instance v3, Lcom/papa91/activity/q;

    .line 106
    .line 107
    invoke-direct {v3, p0}, Lcom/papa91/activity/q;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    sget v2, Lcom/papa91/mix/R$id;->decline:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    new-instance v3, Lcom/papa91/activity/r;

    .line 120
    .line 121
    invoke-direct {v3, p0}, Lcom/papa91/activity/r;-><init>(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    sget v2, Lcom/papa91/mix/R$id;->avatar:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 134
    .line 135
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    sget v2, Lcom/papa91/mix/R$id;->name:I

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->name:Landroid/widget/TextView;

    .line 146
    .line 147
    sget v2, Lcom/papa91/mix/R$id;->gameName:I

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameName:Landroid/widget/TextView;

    .line 156
    .line 157
    :cond_2
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->name:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->gameName:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 172
    .line 173
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 v3, 0x3

    .line 187
    const/4 v4, 0x4

    .line 188
    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    sget p2, Lorg/ppsspp/ppsspp/R$dimen;->wdp40:I

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->showAtAnchorView(Landroid/view/View;IIII)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->timer:Landroid/os/CountDownTimer;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public showMenuCheating()V
    .locals 0

    return-void
.end method

.method public showMenuGate()V
    .locals 0

    return-void
.end method

.method public showMenuOnekey()V
    .locals 0

    return-void
.end method

.method public showMenuPerformance()V
    .locals 0

    return-void
.end method

.method public showMenuSlot()V
    .locals 0

    return-void
.end method

.method public showMenuView(Z)V
    .locals 0

    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showVipTip(II)V
    .locals 0

    return-void
.end method

.method public startAdActivity(II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 40
    .line 41
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 44
    .line 45
    .line 46
    const/high16 p2, 0x10000000

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string p2, "com.wufun.intent.activity.view.action.emuintent"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string v0, "android.intent.category.DEFAULT"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/papa91/common/MyJson;-><init>()V

    .line 64
    .line 65
    .line 66
    :try_start_0
    const-string v1, "link_type"

    .line 67
    .line 68
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string v1, "jump_type"

    .line 74
    .line 75
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v1, "link_type_val"

    .line 81
    .line 82
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->link_type_val:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "crc_link_type_val"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->crc_link_type_val:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v1, "tpl_type"

    .line 95
    .line 96
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->tpl_type:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_0
    const-string v1, "intentDataJson"

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_1
    const-string p2, "com.papa.intent.activity.view.action.emuintent"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    .line 131
    .line 132
    if-eqz p1, :cond_1

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public startBBK_GOINEE_sysAPP()V
    .locals 3

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->systemSettingType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-string v1, "com.gionee.softmanager"

    .line 13
    .line 14
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-string v1, "com.iqoo.secure"

    .line 34
    .line 35
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->BBK_GIONEE_MAIN_NAME:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method startPrefecture(I)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v2, "android.intent.action.MAIN"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/content/ComponentName;

    .line 11
    .line 12
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "com.join.mgps.activity.ForumActivity_"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    const-string v4, "fid"

    .line 29
    .line 30
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string p1, "name"

    .line 34
    .line 35
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string p1, "icon_src"

    .line 39
    .line 40
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string p1, "users"

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string p1, "posts"

    .line 49
    .line 50
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string p1, "add_time"

    .line 54
    .line 55
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    const-string p1, "key_forum_bean"

    .line 64
    .line 65
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    iput v3, p1, Landroid/os/Message;->what:I

    .line 78
    .line 79
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method unbindBridge()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->useIndependentEmu:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method updateAutoSlotData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "/"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/papa91/view/AutoSaveSlot;->setUgcPath(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 31
    .line 32
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/papa91/view/AutoSaveSlot;->setVipLevel(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public updateEndGameResult(II)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->isInChallenge:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setUid(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setEndgameId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->challengeId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setChallengeId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setElapsedTime(I)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-ne p1, v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x2

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setStatus(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1, v0}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/papa91/activity/e;

    .line 69
    .line 70
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/papa91/activity/e;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 78
    .line 79
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method

.method public updateEndGameResultSuccess(IILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 0

    return-void
.end method

.method public updateEndGameResultV2(IILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->isInChallenge:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setUid(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setEndgameId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->challengeId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setChallengeId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setElapsedTime(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setFileUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const/4 p3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p3, 0x2

    .line 53
    :goto_0
    invoke-virtual {v0, p3}, Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;->setStatus(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p3, v0}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p3}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p3, v0}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/papa91/activity/g;

    .line 72
    .line 73
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/papa91/activity/g;-><init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 81
    .line 82
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method updateScoreUi(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "score2"

    .line 2
    .line 3
    const-string v1, "player2"

    .line 4
    .line 5
    const-string v2, "score1"

    .line 6
    .line 7
    const-string v3, "player1"

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    :goto_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :cond_4
    invoke-static {p1, v3}, Lcom/papa91/activity/EmuBaseActivity;->setBattleScore(II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :catch_1
    :goto_1
    return-void
.end method
