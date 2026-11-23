.class public Lcom/papa91/arc/EmuActivity_psp;
.super Lorg/ppsspp/ppsspp/PpssppActivity;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/view/IEmulator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$MyReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;,
        Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ppsspp"

.field static isNet:Z = true

.field public static lastWindow:I

.field private static loadingFinished:Z

.field public static mDialog:Landroid/app/Dialog;

.field static mMessenger:Landroid/os/Messenger;

.field static mServiceConnection:Landroid/content/ServiceConnection;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private EXIT_CODE:I

.field START_MODE_NETCLIENT:I

.field START_MODE_NETSERVER:I

.field START_MODE_NETWORK:I

.field START_MODE_RESTART:I

.field private actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

.field activityQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

.field adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

.field adToastShowing:Z

.field ad_host_url:Ljava/lang/String;

.field alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field private appContent:Ljava/lang/String;

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected autoSlotTime:I

.field cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field private checkRealNameType:I

.field dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

.field diskPath:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field gameIsPause:Z

.field gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

.field private hasCheckRealName:Z

.field hideTimeRunner:Ljava/lang/Runnable;

.field private intentFilter:Landroid/content/IntentFilter;

.field private isDestroyed:Z

.field isHideAdTimeView:Z

.field private isRecreate:Z

.field limitTime:J

.field limitTimeRunnable:Ljava/lang/Runnable;

.field liveTime:J

.field private loading_real_name:Z

.field loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

.field mHandler:Landroid/os/Handler;

.field myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

.field private needCheckRealName:Z

.field netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

.field perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

.field performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

.field playTime:J

.field pref:Lcom/papa91/wrapper/UserPrefs;

.field realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

.field private receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

.field protected serviceConnection:Landroid/content/ServiceConnection;

.field shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

.field shareImagePath:Ljava/lang/String;

.field showTimeLimitedDialog2:Z

.field slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field sp:Landroid/content/SharedPreferences;

.field timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

.field timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field url:Ljava/lang/String;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

.field vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETWORK:I

    .line 9
    .line 10
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    .line 17
    .line 18
    const/16 v3, 0x14

    .line 19
    .line 20
    iput v3, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 23
    .line 24
    new-instance v3, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 34
    .line 35
    const/16 v1, 0xb

    .line 36
    .line 37
    iput v1, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 40
    .line 41
    const-string v1, "http://anv9.ctapi.5fun.com"

    .line 42
    .line 43
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    const-string v1, "http://anctapi.5fun.com"

    .line 62
    .line 63
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->ad_host_url:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$15;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$15;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->serviceConnection:Landroid/content/ServiceConnection;

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    .line 73
    .line 74
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$18;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$18;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    .line 80
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 84
    .line 85
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    .line 86
    .line 87
    new-instance v2, Lcom/papa91/arc/EmuActivity_psp$24;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/papa91/arc/EmuActivity_psp$24;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 93
    .line 94
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 95
    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    return-void
.end method

.method public static ShowSetNetWorkDialog()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/papa91/arc/EmuActivity_psp;

    .line 6
    .line 7
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$17;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/papa91/arc/EmuActivity_psp$17;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/EmuActivity_psp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/arc/EmuActivity_psp;->isDestroyed:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$102(Lcom/papa91/arc/EmuActivity_psp;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1702(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1800(Lcom/papa91/arc/EmuActivity_psp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1900(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/arc/EmuActivity_psp;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$202(Lcom/papa91/arc/EmuActivity_psp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/papa91/arc/EmuActivity_psp;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->playCountDown(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/arc/EmuActivity_psp;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "\uff08"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v7, "cheat\\s*?\"([^\"]*?)\""

    .line 23
    .line 24
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const-string v8, "[0-1][^,]*?,\\s+?\"([^\"]*?)\""

    .line 29
    .line 30
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v9, "\\[([^\\]]*?)\\]"

    .line 35
    .line 36
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const-string v10, "\\{([^\\}]*?)\\}"

    .line 41
    .line 42
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    const-string v11, "\"name\":\"([^\"]*?)\"\\s*?,\\s*?\"vaule\":\"([^\"]*?)\"\\s*?,\\s*?\"isGS\":(.*)"

    .line 47
    .line 48
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 56
    const-string v13, "0"

    .line 57
    .line 58
    const-string v14, "1"

    .line 59
    .line 60
    const-string v4, "UTF-8"

    .line 61
    .line 62
    const-string v12, "\n"

    .line 63
    .line 64
    const-string v15, "_C"

    .line 65
    .line 66
    move-object/from16 v17, v13

    .line 67
    .line 68
    const-string v13, "_L "

    .line 69
    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 73
    .line 74
    move-object/from16 v18, v11

    .line 75
    .line 76
    new-instance v11, Ljava/io/InputStreamReader;

    .line 77
    .line 78
    move-object/from16 v19, v10

    .line 79
    .line 80
    new-instance v10, Ljava/io/FileInputStream;

    .line 81
    .line 82
    move-object/from16 v20, v9

    .line 83
    .line 84
    new-instance v9, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v11, v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-eqz v9, :cond_5

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, ".?cheat.*?"

    .line 110
    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_1

    .line 116
    .line 117
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-lez v10, :cond_0

    .line 122
    .line 123
    new-instance v11, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    move-object/from16 v21, v2

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, "\""

    .line 139
    .line 140
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    goto :goto_1

    .line 148
    :cond_0
    move-object/from16 v21, v2

    .line 149
    .line 150
    :goto_1
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_4

    .line 159
    .line 160
    const/4 v9, 0x1

    .line 161
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_3

    .line 166
    :cond_1
    move-object/from16 v21, v2

    .line 167
    .line 168
    const-string v2, "default"

    .line 169
    .line 170
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, "default\\s+0"

    .line 180
    .line 181
    invoke-virtual {v9, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_2

    .line 186
    .line 187
    move-object/from16 v2, v17

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_2
    move-object v2, v14

    .line 191
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/16 v2, 0x20

    .line 195
    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_3
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_4

    .line 221
    .line 222
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const/4 v9, 0x1

    .line 226
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_4
    :goto_3
    move-object/from16 v2, v21

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    move-object v4, v5

    .line 246
    goto/16 :goto_b

    .line 247
    .line 248
    :catch_0
    move-exception v0

    .line 249
    move-object v4, v5

    .line 250
    goto/16 :goto_c

    .line 251
    .line 252
    :catch_1
    move-exception v0

    .line 253
    move-object v4, v5

    .line 254
    goto/16 :goto_f

    .line 255
    .line 256
    :cond_6
    move-object/from16 v20, v9

    .line 257
    .line 258
    move-object/from16 v19, v10

    .line 259
    .line 260
    move-object/from16 v18, v11

    .line 261
    .line 262
    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_c

    .line 267
    .line 268
    new-instance v2, Ljava/io/BufferedReader;

    .line 269
    .line 270
    new-instance v0, Ljava/io/InputStreamReader;

    .line 271
    .line 272
    new-instance v5, Ljava/io/FileInputStream;

    .line 273
    .line 274
    new-instance v6, Ljava/io/File;

    .line 275
    .line 276
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 286
    .line 287
    .line 288
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    move-object/from16 v1, v20

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_a

    .line 305
    .line 306
    const/4 v5, 0x1

    .line 307
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object/from16 v6, v19

    .line 312
    .line 313
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-eqz v7, :cond_9

    .line 322
    .line 323
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    move-object/from16 v5, v18

    .line 328
    .line 329
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-eqz v8, :cond_8

    .line 338
    .line 339
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const/4 v8, 0x3

    .line 343
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-eqz v8, :cond_7

    .line 352
    .line 353
    move-object v8, v14

    .line 354
    goto :goto_7

    .line 355
    :cond_7
    move-object/from16 v8, v17

    .line 356
    .line 357
    :goto_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const/16 v8, 0x20

    .line 361
    .line 362
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const/4 v9, 0x1

    .line 366
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const/4 v10, 0x2

    .line 380
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_8
    const/16 v8, 0x20

    .line 392
    .line 393
    const/4 v9, 0x1

    .line 394
    :goto_8
    move-object/from16 v18, v5

    .line 395
    .line 396
    const/4 v5, 0x1

    .line 397
    goto :goto_6

    .line 398
    :cond_9
    move-object/from16 v5, v18

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_a
    move-object/from16 v5, v18

    .line 402
    .line 403
    move-object/from16 v6, v19

    .line 404
    .line 405
    :goto_9
    const/16 v8, 0x20

    .line 406
    .line 407
    const/4 v9, 0x1

    .line 408
    move-object/from16 v20, v1

    .line 409
    .line 410
    move-object/from16 v18, v5

    .line 411
    .line 412
    move-object/from16 v19, v6

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    .line 417
    .line 418
    goto :goto_a

    .line 419
    :catchall_1
    move-exception v0

    .line 420
    move-object v4, v2

    .line 421
    goto :goto_b

    .line 422
    :catch_2
    move-exception v0

    .line 423
    move-object v4, v2

    .line 424
    goto :goto_c

    .line 425
    :catch_3
    move-exception v0

    .line 426
    move-object v4, v2

    .line 427
    goto :goto_f

    .line 428
    :cond_c
    :goto_a
    :try_start_5
    new-instance v0, Ljava/io/File;

    .line 429
    .line 430
    move-object/from16 v1, p2

    .line 431
    .line 432
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-nez v1, :cond_d

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 442
    .line 443
    .line 444
    :cond_d
    new-instance v1, Ljava/io/PrintWriter;

    .line 445
    .line 446
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 447
    .line 448
    new-instance v5, Ljava/io/FileOutputStream;

    .line 449
    .line 450
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 451
    .line 452
    .line 453
    invoke-direct {v2, v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 457
    .line 458
    .line 459
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 477
    .line 478
    .line 479
    goto :goto_13

    .line 480
    :catchall_2
    move-exception v0

    .line 481
    move-object/from16 v16, v1

    .line 482
    .line 483
    const/4 v4, 0x0

    .line 484
    goto :goto_14

    .line 485
    :catch_4
    move-exception v0

    .line 486
    move-object/from16 v16, v1

    .line 487
    .line 488
    const/4 v4, 0x0

    .line 489
    goto :goto_d

    .line 490
    :catch_5
    move-exception v0

    .line 491
    move-object/from16 v16, v1

    .line 492
    .line 493
    const/4 v4, 0x0

    .line 494
    goto :goto_10

    .line 495
    :catchall_3
    move-exception v0

    .line 496
    const/4 v4, 0x0

    .line 497
    :goto_b
    const/16 v16, 0x0

    .line 498
    .line 499
    goto :goto_14

    .line 500
    :catch_6
    move-exception v0

    .line 501
    const/4 v4, 0x0

    .line 502
    :goto_c
    const/16 v16, 0x0

    .line 503
    .line 504
    :goto_d
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 505
    .line 506
    .line 507
    if-eqz v4, :cond_e

    .line 508
    .line 509
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 510
    .line 511
    .line 512
    goto :goto_e

    .line 513
    :catch_7
    nop

    .line 514
    :cond_e
    :goto_e
    if-eqz v16, :cond_10

    .line 515
    .line 516
    goto :goto_12

    .line 517
    :catch_8
    move-exception v0

    .line 518
    const/4 v4, 0x0

    .line 519
    :goto_f
    const/16 v16, 0x0

    .line 520
    .line 521
    :goto_10
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 522
    .line 523
    .line 524
    if-eqz v4, :cond_f

    .line 525
    .line 526
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 527
    .line 528
    .line 529
    goto :goto_11

    .line 530
    :catch_9
    nop

    .line 531
    :cond_f
    :goto_11
    if-eqz v16, :cond_10

    .line 532
    .line 533
    :goto_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 534
    .line 535
    .line 536
    :cond_10
    :goto_13
    return-void

    .line 537
    :catchall_4
    move-exception v0

    .line 538
    :goto_14
    if-eqz v4, :cond_11

    .line 539
    .line 540
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 541
    .line 542
    .line 543
    goto :goto_15

    .line 544
    :catch_a
    nop

    .line 545
    :cond_11
    :goto_15
    if-eqz v16, :cond_12

    .line 546
    .line 547
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 548
    .line 549
    .line 550
    :cond_12
    throw v0
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
    return v2

    .line 14
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "\u521b\u5efa\u76ee\u5f55\u6210\u529f\uff01"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 68
    .line 69
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25\uff01"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v2
.end method

.method static createResFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "bios"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    array-length v3, p2

    .line 53
    if-ge v2, v3, :cond_7

    .line 54
    .line 55
    if-nez p3, :cond_3

    .line 56
    .line 57
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    aget-object v5, p2, v2

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    aget-object v6, p2, v2

    .line 90
    .line 91
    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 100
    .line 101
    .line 102
    int-to-long v6, v7

    .line 103
    cmp-long v8, v4, v6

    .line 104
    .line 105
    if-nez v8, :cond_2

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 119
    .line 120
    .line 121
    :cond_4
    aget-object v3, p2, v2

    .line 122
    .line 123
    const/4 v4, 0x3

    .line 124
    invoke-virtual {p0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-nez v3, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    .line 132
    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    aget-object v6, p2, v2

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v5, 0x400

    .line 154
    .line 155
    new-array v5, v5, [B

    .line 156
    .line 157
    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-lez v6, :cond_6

    .line 162
    .line 163
    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catch_0
    move-exception v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_7
    return-void
.end method

.method public static delayStatistics(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->y(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->G(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->I(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/facebook/imagepipeline/core/h;->U(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static exitActivity(I)V
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    .line 3
    .line 4
    .line 5
    return-void
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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getNextTip(Ljava/util/HashMap;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    const/4 v2, 0x2

    .line 23
    if-ge v1, v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    if-le p2, v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p2, -0x1

    .line 57
    :goto_1
    return p2
.end method

.method static getSDPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private getUgcPath()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "/"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, "/papa91/psp/"

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    new-instance v1, Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 118
    .line 119
    .line 120
    :cond_2
    return-object v0
.end method

.method private getUgcPathInternal()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "/emus/"

    .line 8
    .line 9
    const-string v3, "/"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    new-instance v1, Ljava/io/File;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 126
    .line 127
    .line 128
    :cond_2
    return-object v0
.end method

.method private goVipShop(I)V
    .locals 13

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 14
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=\u5bf9\u6218\u7545\u73a9&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "685248020"

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "4"

    const-string v9, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=\u5feb\u901f\u9009\u5173&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "461784020"

    const-string v12, ""

    invoke-static/range {v7 .. v12}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=\u66f4\u591a\u5b58\u6863&returnStatus=1&gameId="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3505974813"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "4"

    const-string v8, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=\u91d1\u624b\u6307&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1778130821"

    const-string v11, ""

    invoke-static/range {v6 .. v11}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=\u4e00\u952e\u6280\u80fd&returnStatus=1&gameId="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2489914047"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private goWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

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

.method private handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
    .locals 4

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
    invoke-direct {p0, p1, p4}, Lcom/papa91/arc/EmuActivity_psp;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance p2, Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/papa91/arc/dialog/PerfectWarmDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setData(Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 49
    .line 50
    new-instance p3, Lcom/papa91/arc/EmuActivity_psp$27;

    .line 51
    .line 52
    invoke-direct {p3, p0, p1, p4}, Lcom/papa91/arc/EmuActivity_psp$27;-><init>(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->setListener(Lcom/papa91/arc/interfaces/IDialogListener;)Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->show()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    const-string v0, "0"

    .line 73
    .line 74
    const-string v1, "antiAddtionWindowUp"

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-ne v3, p4, :cond_3

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, v1, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ne v2, p1, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 109
    .line 110
    new-instance p2, Lcom/papa91/arc/e;

    .line 111
    .line 112
    invoke-direct {p2, p0, p3}, Lcom/papa91/arc/e;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 113
    .line 114
    .line 115
    const-wide/16 p3, 0x64

    .line 116
    .line 117
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/4 p3, 0x3

    .line 130
    if-ne p3, p1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 141
    .line 142
    .line 143
    iput v2, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void
.end method

.method private handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$25;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$25;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connectivity"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method private synthetic lambda$checkRealName$5(Lcom/papa91/arc/bean/Request;I)V
    .locals 3

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
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xc8

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getPopup()Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    iput-wide v1, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-lez p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-long p1, p1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->playCountDown(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    :cond_2
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 99
    .line 100
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$closeRealNameDialog$7()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->alertTipDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

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
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

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
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

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

.method private static synthetic lambda$getDiskPaths$3(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ".iso"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic lambda$getDiskPaths$4(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
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
    invoke-direct {p0, p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "clickKnowGoRealPage"

    .line 9
    .line 10
    const-string v0, "0"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$restoreAdData$1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->ad_host_url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/v5/game/simulatorGameInterfaceAd"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$11;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$11;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2, p1, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private synthetic lambda$restoreVipData$0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$10;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$10;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, p1, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$showAdView$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getHasShowAdInfo()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/gson/Gson;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/papa91/arc/bean/AdInfoBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private loadDNSURL()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "jsonData"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v2, Lcom/papa91/arc/MyJson;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "dnsJson"

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance v2, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "appContent"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "/simulator/simulator_member_fun_type"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_0
    :goto_0
    return-void
.end method

.method public static login()V
    .locals 7

    .line 1
    const-string v0, "com.join.mgps.activity.login.LoginSplashActivity_"

    .line 2
    .line 3
    const-string v1, "intentFrom"

    .line 4
    .line 5
    const-string v2, "android.intent.action.VIEW"

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    new-instance v5, Landroid/content/ComponentName;

    .line 17
    .line 18
    const-string v6, "com.join.android.app.mgsim"

    .line 19
    .line 20
    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    new-instance v5, Landroid/content/ComponentName;

    .line 49
    .line 50
    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_1
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    new-instance v1, Landroid/content/ComponentName;

    .line 81
    .line 82
    const-string v3, "com.join.android.app.mgsim.wufan.mha"

    .line 83
    .line 84
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .line 102
    .line 103
    :catch_2
    :goto_0
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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private playCountDown(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTime:J

    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->limitTimeRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
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
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "uid"

    .line 16
    .line 17
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public static synthetic q(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$restoreVipData$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$getDiskPaths$4(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$handleButtonAction$6(Lcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method static send(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->sendInBridge(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
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
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p0, "gameId"

    .line 21
    .line 22
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "uid"

    .line 28
    .line 29
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method static sendInBridge(Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "action"

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "fromCls"

    .line 40
    .line 41
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    :try_start_0
    sget-object p0, Lcom/papa91/arc/EmuActivity_psp;->mMessenger:Landroid/os/Messenger;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public static sendLimitStat(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "OnClickPSPCutDown"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.countdown"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "PSPLimitPopup"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitpopup"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "PSPLimitPlay"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitplay"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "PSPLimitMember"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitmember"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string v0, "PSPLimitQuit"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    const-string p0, "com.join.android.app.mgsim.wufun.broadcast.emu.psp.limitquit"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const-string p0, ""

    .line 57
    .line 58
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "gameId"

    .line 64
    .line 65
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string p0, "uid"

    .line 71
    .line 72
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 78
    .line 79
    .line 80
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
    invoke-virtual {p0, v0, v1}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog;

    .line 9
    .line 10
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$26;

    .line 11
    .line 12
    invoke-direct {v1, p0, p2}, Lcom/papa91/arc/EmuActivity_psp$26;-><init>(Lcom/papa91/arc/EmuActivity_psp;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/papa91/arc/dialog/RealNameDialog;-><init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 19
    .line 20
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

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

.method public static startVideo()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.tools.AdBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static startplayTime(I)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startplayTime1abc "

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
    int-to-long v0, p0

    .line 15
    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->playTime(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "startplayTime3 "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->lambda$checkRealName$5(Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method

.method public static synthetic u(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$getDiskPaths$3(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method protected static unLockSP(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic v(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$showAdView$2()V

    return-void
.end method

.method public static synthetic w(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->lambda$restoreAdData$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->lambda$closeRealNameDialog$7()V

    return-void
.end method


# virtual methods
.method public HttpPost_Memer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->httpPostMemberInfo()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object v0, Lcom/papa91/arc/EmuActivity_psp;->mDialog:Landroid/app/Dialog;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public IsHapticFeedbackEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsHapticFeedbackEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsSoundEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected attachMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->attachMenu()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showAdView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method bakState()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lcom/papa91/arc/util/FileUtils;->getSlotFilter()Ljava/io/FilenameFilter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$13;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$13;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "."

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v2, v4}, Lcom/papa91/arc/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ".png"

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPathInternal()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v2, v0}, Lcom/papa91/arc/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method bindBridge()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$16;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$16;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getHostPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "com.join.mgps.va.service.MessengerService"

    .line 27
    .line 28
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    sget-object v2, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public bindService()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bindBridge()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method changeCfgPath()V
    .locals 4

    .line 1
    const-string v0, "/PSP"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v3, 0x17

    .line 44
    .line 45
    if-lt v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 64
    .line 65
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    new-instance v2, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    new-instance v2, Ljava/io/File;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "mounted"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    new-instance v2, Ljava/io/File;

    .line 110
    .line 111
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_1

    .line 119
    .line 120
    new-instance v2, Ljava/io/File;

    .line 121
    .line 122
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method public cheatInfoEnable(II)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->cheatEnable(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public checkCheatCodeInfo(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->checkCheatCode(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method checkRealName(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 28
    .line 29
    new-instance v1, Lcom/papa91/arc/bean/ReqRealNameArgs;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqRealNameArgs;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUid(Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setUserToken(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "SO_SIMULATOR"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameType(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setGameId(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setAction(Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "ANDROID"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/papa91/arc/g;

    .line 90
    .line 91
    invoke-direct {v2, p0, v1, p1}, Lcom/papa91/arc/g;-><init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loading_real_name:Z

    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    if-eq v0, p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 55
    .line 56
    .line 57
    :cond_4
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    if-eq v0, p1, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 74
    .line 75
    .line 76
    :cond_6
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 77
    .line 78
    :cond_7
    return-void
.end method

.method protected closeRealNameDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/f;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public deleteEditCheatInfo(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->deleteEditCheat(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public enableEidtCheat(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Custom_openGoldfinger"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne p2, v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "Custom_closeGoldfinger"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    sget-object v3, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    if-ne p2, v0, :cond_3

    .line 39
    .line 40
    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v3, p0, p2, p1}, Lcom/papa91/arc/CContext$IVideoAdListener;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->exit1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public exit1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/TipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 11
    .line 12
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$4;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$4;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/TipTwoDialog;->setListener(Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 21
    .line 22
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$5;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$5;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 31
    .line 32
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$6;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$6;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public exitActivty(I)V
    .locals 5

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETWORK:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "papa_broadcast_continue_match_fight"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "game_end_state"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sget-wide v2, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    long-to-int v1, v0

    .line 30
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->gameOut(Ljava/lang/String;ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gameDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const-string v2, "_"

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, "/mgpapa/aidlservice/Game_out_"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    sput-wide v3, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 93
    .line 94
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 95
    .line 96
    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I

    .line 97
    .line 98
    if-ne v1, v3, :cond_2

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "/mgpapa/aidlservice/Game_start15_"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    .line 141
    .line 142
    if-eq v1, v3, :cond_4

    .line 143
    .line 144
    iget v3, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    .line 145
    .line 146
    if-ne v1, v3, :cond_3

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    if-nez v0, :cond_5

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, "/mgpapa/aidlservice/Game_start160_"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, "/mgpapa/aidlservice/Game_startBattle15_"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->exitActivity(I)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public forceExit()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->IsEmuExitFinish()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-wide/16 v2, 0xc8

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :cond_0
    const-wide/16 v2, 0x1

    .line 21
    .line 22
    add-long/2addr v0, v2

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
    :cond_1
    return-void
.end method

.method public forum()V
    .locals 3

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->goForum(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected gameDestroy(Landroid/app/Activity;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    cmp-long v5, v3, v1

    .line 42
    .line 43
    if-lez v5, :cond_2

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    sub-long/2addr v3, v5

    .line 54
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-wide v5, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 60
    .line 61
    add-long/2addr v5, v3

    .line 62
    iput-wide v5, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 73
    .line 74
    cmp-long p1, v3, v1

    .line 75
    .line 76
    if-lez p1, :cond_3

    .line 77
    .line 78
    new-instance p1, Landroid/content/Intent;

    .line 79
    .line 80
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.emu.gamePlayTimes"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "gameId"

    .line 86
    .line 87
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string v0, "liveTime"

    .line 93
    .line 94
    iget-wide v1, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 95
    .line 96
    const-wide/16 v3, 0x3e8

    .line 97
    .line 98
    div-long/2addr v1, v3

    .line 99
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p1
.end method

.method public gameOnPause()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public gameOnResume()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method protected gamePause(Landroid/app/Activity;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    sub-long/2addr v1, v3

    .line 48
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 62
    .line 63
    add-long/2addr v3, v1

    .line 64
    iput-wide v3, p0, Lcom/papa91/arc/EmuActivity_psp;->liveTime:J

    .line 65
    .line 66
    :cond_3
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method protected gameResume(Landroid/app/Activity;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->activityQueue:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
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
    sput-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 6
    .line 7
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 8
    .line 9
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_RESTART:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    const-string v2, "_"

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->gameStart15(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "mgpapa/aidlservice/Game_start15_"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_0
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETCLIENT:I

    .line 65
    .line 66
    if-eq v0, v1, :cond_2

    .line 67
    .line 68
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->START_MODE_NETSERVER:I

    .line 69
    .line 70
    if-ne v0, v1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, v1, v3, v0}, Lcom/papa91/arc/EmuActivity_psp;->gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, "mgpapa/aidlservice/Game_start160_"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sget v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    :goto_0
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 130
    .line 131
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, "mgpapa/aidlservice/Game_startBattle15_"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method gameStart160(Ljava/lang/String;Ljava/lang/String;I)Z
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
    const-string p1, "startMode"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
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
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public getAdRequestParam()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "platform"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v4, 0x4000

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "_"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "\'"

    .line 43
    .line 44
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, "gzRN53VWRF9BYUXomg2014"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v2}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v2, Lcom/papa91/arc/MyJson;

    .line 88
    .line 89
    invoke-direct {v2}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 90
    .line 91
    .line 92
    :try_start_1
    const-string v3, "version"

    .line 93
    .line 94
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v3, "deviceid"

    .line 100
    .line 101
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string v3, "sign"

    .line 107
    .line 108
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    .line 114
    .line 115
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    .line 121
    .line 122
    const-string v0, "channelNum"

    .line 123
    .line 124
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v1, "simulatorType"

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getSimulatorType()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v1, "args"

    .line 144
    .line 145
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method

.method public getAutoSlotStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoStateMax()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAutoStateTimeCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->autoSlotTime:I

    .line 19
    .line 20
    return v0
.end method

.method public getAutoStateTimeGap()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->NeedChangeDisk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getCheatList()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getCheatLoaded()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurChar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentChar()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCurChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "\u91d1\u624b\u6307\u7801\u6bcf\u884c\u5206\u4e3a\u4e24\u90e8\u5206:\n\u7b2c\u4e00\u90e8\u5206\uff1a0x+8\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u7b2c\u4e8c\u90e8\u5206\uff1a0x+8\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u4e24\u90e8\u5206\u4e2d\u95f4\u8bf7\u7528\u3010\u7a7a\u683c\u3011\u5206\u5272\uff0c\u4f8b\uff1a0x12345678 0x1234ABCD"

    return-object p1
.end method

.method public getDiskPaths()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/papa91/arc/i;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/papa91/arc/i;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/papa91/arc/j;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/papa91/arc/j;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 41
    .line 42
    .line 43
    array-length v1, v0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v1, :cond_2

    .line 46
    .line 47
    aget-object v3, v0, v2

    .line 48
    .line 49
    iget-object v4, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v5, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 87
    .line 88
    return-object v0
.end method

.method public getEditCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getEditCheatList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getEndGameLimitTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGamePlayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
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

.method public getMenuTypes(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "\u609f\u996d\u5b9a\u5236"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_cheat_vip:I

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    move v5, v6

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const-string v9, "\u81ea\u5b9a\u4e49"

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, -0x1

    .line 31
    const/4 v12, -0x1

    .line 32
    move-object v7, p1

    .line 33
    invoke-direct/range {v7 .. v12}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const-string v4, "\u6211\u7684\u5b58\u6863"

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, -0x1

    .line 50
    const/4 v7, -0x1

    .line 51
    move-object v2, p1

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method getOStateFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$14;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$14;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getPlugVerCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->verCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestParam()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

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
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "_"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appInfo:Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "\'"

    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, "gzRN53VWRF9BYUXomg2014"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 88
    .line 89
    .line 90
    :try_start_1
    const-string v1, "version"

    .line 91
    .line 92
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v1, "deviceid"

    .line 98
    .line 99
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v1, "sign"

    .line 105
    .line 106
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/papa91/arc/MyJson;

    .line 112
    .line 113
    invoke-direct {v1}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lorg/json/JSONArray;

    .line 117
    .line 118
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "args"

    .line 122
    .line 123
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v2, "messages"

    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_1
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, "psp"

    return-object v0
.end method

.method public getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpBindImages(I)[I
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 13
    .line 14
    return v0
.end method

.method public getVipData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public goForum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

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
    const-string v3, "com.join.mgps.activity.ForumActivity_"

    .line 13
    .line 14
    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    new-instance p1, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string v2, "fid"

    .line 26
    .line 27
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string p2, "name"

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string p2, "icon_src"

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string p2, "users"

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string p2, "posts"

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string p2, "add_time"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string p2, "key_forum_bean"

    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    :try_start_1
    const-string p1, "com.wufun.intent.activity.view.action.emuintent"

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_1
    const-string p1, "com.papa.intent.activity.view.action.emuintent"

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method

.method public goLogin()V
    .locals 0

    return-void
.end method

.method public goSlotShop()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

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
    const-string v3, "https://anv3cjapi.5fun.com/member/vip_view/welfare/psp_ad"

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    const-string v5, ""

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public goVipShop(IZ)V
    .locals 7

    if-eqz p2, :cond_6

    const-string p2, "&gameId="

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, "0"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->goVipShop(I)V

    :goto_0
    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "adAction"

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const-string p1, "extras"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, -0x1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "state"

    .line 29
    .line 30
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, -0x1

    .line 40
    :goto_0
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    if-eq p1, v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "adAction"

    .line 2
    .line 3
    const/16 v0, 0x3f0

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v1, "extras"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, -0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p2, "close"

    .line 29
    .line 30
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string p2, "state"

    .line 35
    .line 36
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 p2, -0x1

    .line 46
    :goto_0
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    if-eq p2, v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v0, 0x3ef

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    if-eq p2, v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method hasExternalPermission()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "mounted"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    return v0
.end method

.method hideAdCountDown()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hideTimeRunner:Ljava/lang/Runnable;

    .line 14
    .line 15
    const-wide/16 v2, 0x1f4

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method initArgs()V
    .locals 7

    .line 1
    sput-object p0, Lcom/papa91/arc/EmuActivity_psp;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa91/arc/util/GameSettings;->init(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Lcom/papa91/arc/MyJson;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const-string v1, "pa_package_name"

    .line 30
    .line 31
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "startMode"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sput v1, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 47
    .line 48
    const-string v1, "romPath"

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    invoke-virtual {v0, v1, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "ugcPath"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 65
    .line 66
    const-string v4, "assetspath"

    .line 67
    .line 68
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sput-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v5, Ljava/io/File;

    .line 75
    .line 76
    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    const-string v5, "sopath"

    .line 85
    .line 86
    invoke-virtual {v0, v5, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sput-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 97
    .line 98
    const-string v4, "activityName"

    .line 99
    .line 100
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    .line 105
    .line 106
    const-string v5, "."

    .line 107
    .line 108
    const-string v6, "/"

    .line 109
    .line 110
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    .line 115
    .line 116
    const-string v4, "userID"

    .line 117
    .line 118
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 123
    .line 124
    const-string v4, "gameID"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 131
    .line 132
    const-string v4, "plugin_area_val"

    .line 133
    .line 134
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    .line 139
    .line 140
    const-string v4, "roomID"

    .line 141
    .line 142
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->RoomID:Ljava/lang/String;

    .line 147
    .line 148
    const-string v4, "version"

    .line 149
    .line 150
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->Version:Ljava/lang/String;

    .line 155
    .line 156
    const-string v4, "serverIP"

    .line 157
    .line 158
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_ip:Ljava/lang/String;

    .line 163
    .line 164
    const-string v4, "serverPort"

    .line 165
    .line 166
    invoke-virtual {v0, v4, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_port:Ljava/lang/String;

    .line 171
    .line 172
    const-string v4, "token"

    .line 173
    .line 174
    const-string v5, "0"

    .line 175
    .line 176
    invoke-virtual {v0, v4, v5}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 181
    .line 182
    const-string v4, "sp_lock"

    .line 183
    .line 184
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->spLock:I

    .line 189
    .line 190
    const-string v4, "sVipLevel"

    .line 191
    .line 192
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    iput v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    .line 197
    .line 198
    const-string v4, "vipLevel"

    .line 199
    .line 200
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    sput v4, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 205
    .line 206
    const-string v4, "pspAdShowTime"

    .line 207
    .line 208
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    int-to-long v4, v4

    .line 213
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    .line 214
    .line 215
    const-string v4, "pspAdShowTimeSwitch"

    .line 216
    .line 217
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    int-to-long v4, v2

    .line 222
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    .line 223
    .line 224
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    .line 226
    const-string v4, "allowPeripheralJoin"

    .line 227
    .line 228
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->allowPeripheralJoin:Z

    .line 237
    .line 238
    const-string v4, "tourist"

    .line 239
    .line 240
    invoke-virtual {v0, v4, v2}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    sput-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    .line 249
    .line 250
    const-string v2, "channelId"

    .line 251
    .line 252
    invoke-virtual {v0, v2, v3}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    .line 257
    .line 258
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_3

    .line 265
    .line 266
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_1

    .line 273
    .line 274
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    add-int/lit8 v4, v4, 0x1

    .line 281
    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v5, "/papa91/psp/"

    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    sput-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_0

    .line 317
    .line 318
    new-instance v2, Ljava/io/File;

    .line 319
    .line 320
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 321
    .line 322
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 330
    .line 331
    .line 332
    :cond_0
    :try_start_1
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :catch_1
    move-exception v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTotalLevel()V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getCustomSettingEnable()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    const-string v2, "gameSettingLevel"

    .line 350
    .line 351
    if-eqz v1, :cond_2

    .line 352
    .line 353
    const-string v1, "5"

    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingLevel()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :catch_2
    move-exception v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initArgsDefault()V

    .line 391
    .line 392
    .line 393
    :goto_4
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_5

    .line 404
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v1, "_preferences"

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const/4 v1, 0x4

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    .line 437
    .line 438
    :goto_5
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 439
    .line 440
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    .line 441
    .line 442
    invoke-direct {v0, p0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 443
    .line 444
    .line 445
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 446
    .line 447
    return-void
.end method

.method initArgsDefault()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

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
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "/1"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "/1/lzzzwddh2"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method initReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->intentFilter:Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->intentFilter:Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerLogin()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerAdReceiver()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    .line 37
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "com.emu.ad.result"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->registerMyReceiver()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 66
    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    .line 68
    .line 69
    const-string v1, "com.emu.realName.result"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 75
    .line 76
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method initTimeLimitedDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 6
    .line 7
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 15
    .line 16
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getPspGameAdCfg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setAdConfig(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 28
    .line 29
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$19;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$19;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method initTotalLevel()V
    .locals 3

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    const-string v2, "psp_gamesetting5.ini"

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 42
    .line 43
    const-string v2, "psp_gamesetting5.xml"

    .line 44
    .line 45
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 v0, 0x4

    .line 52
    :goto_0
    invoke-static {v0}, Lcom/papa91/arc/util/GameSettings;->setGameSettingTotalLevel(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method isHideAdToday()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getLastTime(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method isLogined()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

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
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

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
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isNetAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isRankAutoUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSPVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowCheating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowQuickSlot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keysSetting()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->enterGameSettings(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hide()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 12
    .line 13
    return-void
.end method

.method public loadAdVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "PSP"

    .line 12
    .line 13
    invoke-interface {v0, p0, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    return-void
.end method

.method public loadRom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "jsonData"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public loadSlotState(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->loadState(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected loginFinish()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    iput v0, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    .line 7
    .line 8
    return-void
.end method

.method migrate()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/PSP"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "/papa91/psp/PSP"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    const-string v5, " time :"

    .line 72
    .line 73
    const-string v6, "--- "

    .line 74
    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v7, "renameTo suc : "

    .line 83
    .line 84
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v7, "renameTo fail : "

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->changeCfgPath()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->saveDataTransfer()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->stateTransfer()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->syncState()V

    .line 143
    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, "/PSP/Cheats/"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->createDir(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ".ini"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 195
    .line 196
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 197
    .line 198
    const-string v3, "/"

    .line 199
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_2

    .line 205
    .line 206
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    goto :goto_1

    .line 217
    :cond_2
    const-string v2, ""

    .line 218
    .line 219
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v4, "/papa91/psp"

    .line 232
    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v4, "/editCheat.json"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v5, "/PSP/Cheats"

    .line 261
    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v2, Ljava/io/File;

    .line 276
    .line 277
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_3

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v4, "s1 : "

    .line 292
    .line 293
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v4, " s2 : "

    .line 300
    .line 301
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v4, " s3 : "

    .line 308
    .line 309
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v3, v1}, Lcom/papa91/arc/EmuActivity_psp;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_3
    return-void
.end method

.method public modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public needShowTimer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAdImageClick()V
    .locals 7

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;->onAdImageClick()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->saveHasShowAdInfo(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/papa91/arc/bean/AdInfoBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    const-string v2, ""

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public onChangeDisk()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getDiskPaths()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->ChangeDisk(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->loadDNSURL()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "jsonData"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initArgs()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initReceiver()V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1}, Lorg/ppsspp/ppsspp/PpssppActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    sget-boolean p1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->hide()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->migrate()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcom/papa91/wrapper/UserPrefs;->setSlotTipShow(Z)V

    .line 68
    .line 69
    .line 70
    sget-boolean p1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->hide()V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bindService()V

    .line 82
    .line 83
    .line 84
    const-string p1, ""

    .line 85
    .line 86
    sput-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreAdData()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->startTimer()V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    const/16 v1, 0xb

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->checkRealName(I)V

    .line 108
    .line 109
    .line 110
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 111
    .line 112
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 113
    .line 114
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isDestroyed:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->stopTimer()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->receveReceiver:Lcom/papa91/arc/EmuActivity_psp$EmuReceiveReceiver;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterLogin()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterAdReceiver()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->actionReceiver:Lcom/papa91/arc/EmuActivity_psp$ActionReceiver;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :try_start_0
    iget-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/papa91/arc/EmuActivity_psp;->exitActivty(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->serviceConnection:Landroid/content/ServiceConnection;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterMyReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, v2}, Lcom/papa91/arc/EmuActivity_psp;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->dialogExit:Lcom/papa91/arc/dialog/TipTwoDialog;

    .line 66
    .line 67
    :cond_3
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->dismiss()V

    .line 80
    .line 81
    .line 82
    :cond_4
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 83
    .line 84
    :cond_5
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 85
    .line 86
    if-eqz v3, :cond_7

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 97
    .line 98
    .line 99
    :cond_6
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 100
    .line 101
    :cond_7
    iget-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    .line 102
    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 106
    .line 107
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    .line 112
    .line 113
    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unregisterMyReceiver()V

    .line 115
    .line 116
    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->unbindBridge()V

    .line 118
    .line 119
    .line 120
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onDestroy()V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x2

    .line 124
    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->sendGamePlay(I)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/papa91/arc/EmuActivity_psp;->EXIT_CODE:I

    .line 128
    .line 129
    if-ne v1, v0, :cond_a

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->forceExit()V

    .line 132
    .line 133
    .line 134
    :cond_a
    return-void
.end method

.method protected onHandleRealName(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->closeRealNameDialog()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/papa91/arc/EmuActivity_psp;->checkRealName(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->hasCheckRealName:Z

    .line 16
    .line 17
    return-void
.end method

.method protected onHandlerResultNameResult(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->loginFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onHideMenu()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    sget-boolean v0, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/ppsspp/ppsspp/NativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->isTimerShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->pauseTimer()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gamePause(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->HttpPost_Memer()V
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
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->isHideAdToday()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->isTimerShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->resumeTimer()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp;->checkRealNameType:I

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->onHandleRealName(I)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->needCheckRealName:Z

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, p0}, Lcom/papa91/arc/EmuActivity_psp;->gameResume(Landroid/app/Activity;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "jsonData"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onScreenShot()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "/papa91/img/"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    .line 51
    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ".png"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareImagePath:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->saveScreenShot(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public onTimerTick(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 18
    .line 19
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 22
    .line 23
    move-wide v5, p1

    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->updateTickTime(J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-wide/16 v0, 0xbb8

    .line 43
    .line 44
    cmp-long v2, p1, v0

    .line 45
    .line 46
    if-gez v2, :cond_1

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/papa91/arc/EmuActivity_psp;->adToastShowing:Z

    .line 54
    .line 55
    const-string p1, "\u5373\u5c06\u8fdb\u5165\u5e7f\u544a\uff0c\u6e38\u620f\u5c06\u81ea\u52a8\u6682\u505c"

    .line 56
    .line 57
    invoke-static {p0, p1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance p2, Lcom/papa91/arc/EmuActivity_psp$21;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/papa91/arc/EmuActivity_psp$21;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0xdac

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method onVipChanged()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->onVipChanged()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->onVipChanged()V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public pauseGame()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public postCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

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
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$2;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp$2;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public processCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cmd="

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
    const-string v1, ", param="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "SaveState::SUCCESS"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->bakState()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "\u5b58\u6863\u4fdd\u5b58\u6210\u529f\uff01"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    const-string v0, "SaveState::FAILURE"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "\u5b58\u6863\u4fdd\u5b58\u5931\u8d25\uff01"

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_1
    const-string v0, "loadingFinished"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    sput-boolean v1, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->attachMenu()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showAdCountDown()V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$3;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$3;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v2, 0x1f4

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_3
    const-string v0, "showLastWindow"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    sget v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 116
    .line 117
    if-ne v0, v1, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    const/4 v1, 0x2

    .line 133
    if-ne v0, v1, :cond_6

    .line 134
    .line 135
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showMenuPerformance()V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 146
    sput v0, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const-string v0, "uistate"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    const-string v0, "ingame"

    .line 158
    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    const-string v0, "wufan_reset"

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    const-string v0, "graphics_restart"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_a
    const-string v0, "ScreenShot::SUCCESS"

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareImagePath:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_psp;->showShare(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_b
    const-string v0, "ScreenShot::FAILURE"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_c

    .line 215
    .line 216
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-string v1, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    .line 221
    .line 222
    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_c
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/ppsspp/ppsspp/NativeActivity;->processCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    return p1
.end method

.method public quickSlot()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$8;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$8;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x50

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public recreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->isRecreate:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method registerAdReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.emu.ad.result"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method registerLogin()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_success"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method registerMyReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$MyReceiver;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reload()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->gameOnResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$9;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$9;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0xb4

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatReset()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/papa91/arc/EmuActivity_psp;->loadingFinished:Z

    .line 32
    .line 33
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->emuRestart()V

    .line 34
    .line 35
    .line 36
    :cond_1
    const-string v0, ""

    .line 37
    .line 38
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->diskPath:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public restoreAdData()V
    .locals 4

    .line 1
    const-string v0, "gameUrl"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "jsonData"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    new-instance v3, Lcom/papa91/arc/MyJson;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "dnsJson"

    .line 23
    .line 24
    invoke-virtual {v3, v2, v1}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->ad_host_url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getAdRequestParam()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 74
    .line 75
    new-instance v2, Lcom/papa91/arc/d;

    .line 76
    .line 77
    invoke-direct {v2, p0, v0}, Lcom/papa91/arc/d;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public restoreVipData()V
    .locals 3

    .line 1
    const-string v0, "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/simulator/simulator_member_fun_type"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getRequestParam()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    new-instance v2, Lcom/papa91/arc/c;

    .line 38
    .line 39
    invoke-direct {v2, p0, v0}, Lcom/papa91/arc/c;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gameIsPause:Z

    .line 6
    .line 7
    return-void
.end method

.method public retryGetGoldFingerConfig()V
    .locals 0

    return-void
.end method

.method public romPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public saveBindsFileData()V
    .locals 0

    return-void
.end method

.method saveDataTransfer()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/papa91/psp/PSP/SAVEDATA"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "/PSP/SAVEDATA"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->saveGameConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public saveSlotState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->saveState(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public screenMode(I)V
    .locals 0

    return-void
.end method

.method public setAutoSlotStatus(I)V
    .locals 0

    return-void
.end method

.method public setSPBindData(III)V
    .locals 0

    return-void
.end method

.method public setSPMenuVisible(Z)V
    .locals 0

    return-void
.end method

.method showAdCountDown()V
    .locals 14

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 2
    .line 3
    if-gtz v0, :cond_5

    .line 4
    .line 5
    sget-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/papa91/arc/view/MenuView;->setTime(J)V

    .line 18
    .line 19
    .line 20
    sget-wide v0, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    mul-long v0, v0, v2

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iget-object v4, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 28
    .line 29
    sget-object v5, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4, v5, v6}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_3

    .line 42
    .line 43
    iget-object v5, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Lcom/papa91/wrapper/UserPrefs;->getLastTime(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    iget-object v7, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 50
    .line 51
    invoke-virtual {v7, v4}, Lcom/papa91/wrapper/UserPrefs;->getSkipAd(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v9, "remainTime"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    iget-object v8, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 75
    .line 76
    invoke-virtual {v8, v4}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 86
    .line 87
    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 98
    .line 99
    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 100
    .line 101
    sget-object v10, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    move-wide v11, v0

    .line 105
    invoke-virtual/range {v8 .. v13}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 106
    .line 107
    .line 108
    :cond_3
    div-long v2, v0, v2

    .line 109
    .line 110
    const-wide/16 v4, 0x1

    .line 111
    .line 112
    cmp-long v6, v2, v4

    .line 113
    .line 114
    if-gtz v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showTimeLimitedDialog2()V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const/4 v2, 0x0

    .line 124
    iput-boolean v2, p0, Lcom/papa91/arc/EmuActivity_psp;->isHideAdTimeView:Z

    .line 125
    .line 126
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 132
    .line 133
    invoke-virtual {v2, v0, v1}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void

    .line 137
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public showAdVideo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "PSP"

    .line 14
    .line 15
    invoke-interface {v0, p0, v1, v2}, Lcom/papa91/arc/CContext$IVideoAdListener;->showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public showAdView()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/h;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMenuCheating()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->show()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge v3, v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/papa91/arc/bean/VipBean;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return-void
.end method

.method public showMenuGate()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public showMenuPerformance()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTotalLevel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v2, v1, [Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingTotalLevel()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, ""

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v3, v2, v5

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    sget v6, Lcom/papa91/arc/EmuActivity_psp;->lastWindow:I

    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    if-ne v6, v1, :cond_1

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    aput-object v1, v2, v7

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->show([Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 76
    .line 77
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$7;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$7;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public showMenuSlot()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x5

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->appContent:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setappContentUrl(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->show()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v0, v1, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    return-void
.end method

.method showNetworkFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 11
    .line 12
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$20;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$20;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->show()V

    .line 31
    .line 32
    .line 33
    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f\uff01"

    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingShareDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setIamge(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 23
    .line 24
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$22;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$22;-><init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->initTimeLimitedDialog()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 5
    .line 6
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-lez v4, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show1()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show2()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/EmuActivity_psp;->showTimeLimitedDialog2:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->isNetworkConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->showNetworkFailed()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public varargs showVip([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->show([Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public showVipTip()V
    .locals 11

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCheatListData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getCheatListData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/PpssppActivity;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->isShowGate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->loadPspDBCheat()V

    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->getVip()I

    move-result v1

    if-gtz v1, :cond_8

    .line 16
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v1}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorStartAdCount()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_start_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVipTip: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-----"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_7

    if-lt v2, v1, :cond_7

    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_has_show_tip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "_start_time"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    if-eq v1, v8, :cond_7

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_show_tip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v8, 0x3

    if-lt v1, v8, :cond_5

    const/4 v1, 0x0

    .line 22
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v10, :cond_6

    .line 23
    invoke-virtual {p0, v0, v4}, Lcom/papa91/arc/EmuActivity_psp;->showVipTip(II)V

    move v1, v0

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    return-void
.end method

.method public showVipTip(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$23;

    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_psp$23;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V

    :cond_1
    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Timer;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$1;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    const-wide/16 v5, 0x3e8

    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method stateTransfer()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/papa91/arc/EmuActivity_psp;->stateTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_psp;->hasExternalPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async cfg(oldVersion) src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/psp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method stateTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getSDPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/PSP/PPSSPP_STATE/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v1, v3}, Lcom/papa91/arc/EmuActivity_psp;->getOStateFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, ".+_([0-9]+)\\.ppst$"

    .line 13
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    .line 17
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state index is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".ppst"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 23
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    cmp-long v12, v13, v15

    if-eqz v12, :cond_1

    .line 26
    invoke-virtual {v1, v7, v9}, Lcom/papa91/arc/EmuActivity_psp;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v7, v0}, Lcom/papa91/arc/EmuActivity_psp;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timer:Ljava/util/Timer;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_psp;->timerTask:Ljava/util/TimerTask;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method syncState()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/EmuActivity_psp$12;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_psp$12;-><init>(Lcom/papa91/arc/EmuActivity_psp;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public ugcPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/EmuActivity_psp;->getUgcPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method unbindBridge()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/papa91/arc/EmuActivity_psp;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method unregisterAdReceiver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->adResultReceiver:Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method unregisterLogin()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->loginReceiver:Lcom/papa91/arc/EmuActivity_psp$LoginReceiver;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method unregisterMyReceiver()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->myReceiver:Lcom/papa91/arc/EmuActivity_psp$MyReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp;->netWorkReceiver:Lcom/papa91/arc/EmuActivity_psp$NetWorkReceiver;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_1
    return-void
.end method

.method public vibrate(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableHapticFeedback(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public voice(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableSound(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
