.class public Lcom/windmill/sdk/strategy/WMSdkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/WMSdkConfig$a;,
        Lcom/windmill/sdk/strategy/WMSdkConfig$b;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "/tb_config"

.field private static final SDK_CONFIG_URL:Ljava/lang/String; = "https://tm.sigmob.cn/w/config"

.field private static final SDK_CONFIG_URL_BACK:Ljava/lang/String; = "https://c.tobidad.cn/w/config"

.field private static final SDK_CONFIG_VER:Ljava/lang/String; = "sdkConfigVer"

.field private static final SDK_GDPR_URL:Ljava/lang/String; = "https://tm.sigmob.cn/extconfig?"

.field public static _TIMEOUT:Ljava/lang/String; = "_timeout"

.field private static backupConfigUrl:Ljava/lang/String; = ""

.field private static gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig; = null

.field private static handler:Landroid/os/Handler; = null

.field private static initListenerMap:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/WMSdkConfig$b;",
            ">;"
        }
    .end annotation
.end field

.field private static isRetry:Z = false

.field private static lance:Ljava/lang/String; = ""

.field private static mIsGDPRRegion:Z

.field private static rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

.field private static runnable:Ljava/lang/Runnable;


# instance fields
.field private BIDDING_URL:Ljava/lang/String;

.field private SDK_LOG_URL:Ljava/lang/String;

.field private STRATEGY_URL:Ljava/lang/String;

.field private mCurrentAutoRefreshStatus:Z

.field private mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

.field private final mHandler:Landroid/os/Handler;

.field private mOnSDKUpdateListener:Lcom/windmill/sdk/strategy/WMSdkConfig$a;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMillis:J

.field private mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

.field private final ver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->initListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "tb-4.8.7"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->ver:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshTimeMillis:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 16
    .line 17
    const-string v0, "https://tm.sigmob.cn/strategy/v6"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->STRATEGY_URL:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "https://tm.sigmob.cn/waterfall/v1"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->BIDDING_URL:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "https://dc.sigmob.cn/log"

    .line 26
    .line 27
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->SDK_LOG_URL:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v0, Lcom/windmill/sdk/strategy/WMSdkConfig$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/windmill/sdk/strategy/WMSdkConfig$1;-><init>(Lcom/windmill/sdk/strategy/WMSdkConfig;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mCurrentAutoRefreshStatus:Z

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->initDefaultSDKConfig()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->loadFromFile()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/strategy/WMSdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->scheduleRefreshSDKConfigRunnable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handListener()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->isRetry:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->isRetry:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/windmill/sdk/strategy/WMSdkConfig;Lcom/windmill/sdk/models/SdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/windmill/sdk/strategy/WMSdkConfig;Lcom/windmill/sdk/models/SdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->saveToFile(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/windmill/sdk/strategy/WMSdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->scheduleRefreshTimerIfEnabled()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->backupConfigUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/windmill/sdk/strategy/WMSdkConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getBackupConfigUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$800(Lcom/windmill/sdk/strategy/WMSdkConfig;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/windmill/sdk/strategy/WMSdkConfig;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static addSDKInitConfigListener(Ljava/lang/String;Lcom/windmill/sdk/strategy/WMSdkConfig$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loadId",
            "sdkInitConfigListener"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->initListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "------addSDKInitConfigListener: "

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/models/SdkConfig;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 39
    .line 40
    invoke-interface {p1, p0}, Lcom/windmill/sdk/strategy/WMSdkConfig$b;->a(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 44
    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    new-instance p0, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    sput-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->handler:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance p0, Lcom/windmill/sdk/strategy/WMSdkConfig$2;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig$2;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->runnable:Ljava/lang/Runnable;

    .line 72
    .line 73
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 78
    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    .line 88
    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-lez p0, :cond_1

    .line 106
    .line 107
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iget-object p0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/windmill/sdk/models/Android;->init_sync_timeout:Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    int-to-long p0, p0

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const-wide/16 p0, 0x7d0

    .line 124
    .line 125
    :goto_0
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->handler:Landroid/os/Handler;

    .line 126
    .line 127
    sget-object v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->runnable:Ljava/lang/Runnable;

    .line 128
    .line 129
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :catch_0
    :cond_2
    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private getBackupConfigUrl()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/models/CommonEndpointsConfig;->config:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x3f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "?"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "&"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "https://c.tobidad.cn/w/config?"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->backupConfigUrl:Ljava/lang/String;

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
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->backupConfigUrl:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->lance:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->lance:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "?"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "https://tm.sigmob.cn/w/config?"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public static getGDPRRegionURL()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://tm.sigmob.cn/extconfig?"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

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
    return-object v0
.end method

.method public static getServerQueryString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "appId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "&"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "sdkVersion=4.8.7"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method private static handListener()V
    .locals 3

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->initListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 26
    .line 27
    sput-object v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/windmill/sdk/strategy/WMSdkConfig$b;

    .line 40
    .line 41
    sget-object v2, Lcom/windmill/sdk/strategy/WMSdkConfig;->rewardSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1, v2}, Lcom/windmill/sdk/strategy/WMSdkConfig$b;->a(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    invoke-interface {v1, v2}, Lcom/windmill/sdk/strategy/WMSdkConfig$b;->a(Lcom/czhj/volley/VolleyError;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method private handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfig;->common_config:Lcom/windmill/sdk/models/Common;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 8
    .line 9
    iget-object p1, v0, Lcom/windmill/sdk/models/Common;->configRefresh:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-int/lit16 p1, p1, 0x3e8

    .line 16
    .line 17
    int-to-long v0, p1

    .line 18
    iput-wide v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshTimeMillis:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mOnSDKUpdateListener:Lcom/windmill/sdk/strategy/WMSdkConfig$a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig$a;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-boolean v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->mIsGDPRRegion:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->isDisableBootMark()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getOaidApiDisable()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getDisable_up_OAid()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLogUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSendLogInterval()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getMaxSendLogRecords()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLog_enc()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/czhj/sdk/common/models/Config;->update(ZZZILjava/lang/String;IIZ)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getTracking_expiration_time()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v0, v0

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setRetryExpiredTime(J)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getTracking_retry_interval()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    int-to-long v0, v0

    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setRetryInterval(J)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private initDefaultSDKConfig()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/windmill/sdk/models/SdkConfig$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/windmill/sdk/models/SdkConfig$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/windmill/sdk/models/Common$Builder;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/windmill/sdk/models/Common$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/windmill/sdk/models/Android$Builder;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/windmill/sdk/models/Android$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->SDK_LOG_URL:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->STRATEGY_URL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->strategy(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->BIDDING_URL:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->bidding_url(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;

    .line 38
    .line 39
    .line 40
    const-string v4, "https://c.tobidad.cn/w/config"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->config(Ljava/lang/String;)Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/windmill/sdk/models/CommonEndpointsConfig$Builder;->build()Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/windmill/sdk/models/Common$Builder;->endpoints(Lcom/windmill/sdk/models/CommonEndpointsConfig;)Lcom/windmill/sdk/models/Common$Builder;

    .line 50
    .line 51
    .line 52
    const/16 v3, 0x3e8

    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Lcom/windmill/sdk/models/Common$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Common$Builder;

    .line 59
    .line 60
    .line 61
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/windmill/sdk/models/Common$Builder;->disable_up_location(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;

    .line 64
    .line 65
    .line 66
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Lcom/windmill/sdk/models/Common$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4}, Lcom/windmill/sdk/models/Common$Builder;->enable_debug_level(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Common$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/models/Android$Builder;->disable_boot_mark(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/models/Android$Builder;->oaid_api_is_disable(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/models/Android$Builder;->enable_permission(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/models/Android$Builder;->enable_report_crash(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;

    .line 84
    .line 85
    .line 86
    sget-object v3, Lcom/windmill/sdk/models/Android;->DEFAULT_GM_PRICE_PERCENT:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/models/Android$Builder;->gm_price_percent(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v3, v2, Lcom/windmill/sdk/models/Android$Builder;->quick_app_schema:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_switch(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/Android$Builder;

    .line 99
    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/models/Android$Builder;->redirect_link_collection_ratio(Ljava/lang/Integer;)Lcom/windmill/sdk/models/Android$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/windmill/sdk/models/Common$Builder;->build()Lcom/windmill/sdk/models/Common;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/SdkConfig$Builder;->common_config(Lcom/windmill/sdk/models/Common;)Lcom/windmill/sdk/models/SdkConfig$Builder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/windmill/sdk/models/Android$Builder;->build()Lcom/windmill/sdk/models/Android;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/SdkConfig$Builder;->android_config(Lcom/windmill/sdk/models/Android;)Lcom/windmill/sdk/models/SdkConfig$Builder;

    .line 121
    .line 122
    .line 123
    new-instance v1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/SdkConfig$Builder;->channel_configs(Ljava/util/Map;)Lcom/windmill/sdk/models/SdkConfig$Builder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/windmill/sdk/models/SdkConfig$Builder;->build()Lcom/windmill/sdk/models/SdkConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method public static isGDPRRegion()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mIsGDPRRegion:Z

    .line 2
    .line 3
    return v0
.end method

.method private loadConfig()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/windmill/sdk/strategy/h;

    .line 6
    .line 7
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getConfigUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/windmill/sdk/strategy/WMSdkConfig$3;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcom/windmill/sdk/strategy/WMSdkConfig$3;-><init>(Lcom/windmill/sdk/strategy/WMSdkConfig;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/strategy/h;-><init>(Ljava/lang/String;Lcom/windmill/sdk/strategy/h$a;)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "queue is null"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->scheduleRefreshTimerIfEnabled()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "start update sdk config"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private loadFromFile()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "sdkConfigVer"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/windmill/sdk/utils/e;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, "/tb_config"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "tb-4.8.7"

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 73
    .line 74
    new-instance v3, Ljava/io/FileInputStream;

    .line 75
    .line 76
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    .line 81
    .line 82
    :try_start_1
    sget-object v1, Lcom/windmill/sdk/models/SdkConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/windmill/sdk/models/SdkConfig;

    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->preInitAdn(Lcom/windmill/sdk/models/SdkConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    move-object v2, v0

    .line 102
    goto :goto_0

    .line 103
    :catchall_1
    move-exception v1

    .line 104
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 114
    .line 115
    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_3
    move-exception v0

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_4
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    :goto_1
    throw v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 148
    .line 149
    invoke-direct {p0, v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->handleUpdateConfig(Lcom/windmill/sdk/models/SdkConfig;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_2
    return-void
.end method

.method private preInitAdn(Lcom/windmill/sdk/models/SdkConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkConfig"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/windmill/sdk/models/SdkConfig;->channel_configs:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/windmill/sdk/models/ChannelConfig;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/windmill/sdk/models/ChannelConfig;->channel_appId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    new-instance v3, Lcom/windmill/sdk/WMAdnInitConfig;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v4, v1, Lcom/windmill/sdk/models/ChannelConfig;->channel_appId:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/windmill/sdk/models/ChannelConfig;->channel_appkey:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v3, v2, v4, v1}, Lcom/windmill/sdk/WMAdnInitConfig;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/windmill/sdk/common/h;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    :catchall_0
    :cond_2
    return-void
.end method

.method public static removeInitConfigListener(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->initListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private saveToFile(Lcom/windmill/sdk/models/SdkConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkConfig"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/windmill/sdk/utils/e;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "/tb_config"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    .line 47
    .line 48
    new-instance v3, Ljava/io/FileOutputStream;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/czhj/wire/Message;->encode(Ljava/io/OutputStream;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "sdkConfigVer"

    .line 76
    .line 77
    const-string v1, "tb-4.8.7"

    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    move-object v1, v2

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    move-object v1, v2

    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception p1

    .line 99
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_2
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :goto_1
    if-eqz v1, :cond_1

    .line 122
    .line 123
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_3
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_2
    throw p1

    .line 136
    :cond_2
    :goto_3
    return-void
.end method

.method private scheduleRefreshSDKConfigRunnable()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

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
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getConfigUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->isNetworkConnected(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->loadConfig()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_0
    const-string v0, "Can\'t load an ad because  is no network or can not CollectPersonalInformation"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->scheduleRefreshTimerIfEnabled()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private scheduleRefreshTimerIfEnabled()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->cancelRefreshTimer()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mCurrentAutoRefreshStatus:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshTimeMillis:J

    .line 13
    .line 14
    const-wide/16 v4, 0x7530

    .line 15
    .line 16
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public static sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/windmill/sdk/strategy/WMSdkConfig;->gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/strategy/WMSdkConfig;->gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public enableReport_log()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->report_log:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public getAndroidConfig()Lcom/windmill/sdk/models/Android;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/SdkConfig;->android_config:Lcom/windmill/sdk/models/Android;

    .line 6
    .line 7
    return-object v0
.end method

.method public getBiddingUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/models/CommonEndpointsConfig;->bidding_url:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "?"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x3f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "&"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->BIDDING_URL:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public getChannelConfigs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/models/ChannelConfig;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/SdkConfig;->channel_configs:Ljava/util/Map;

    .line 6
    .line 7
    return-object v0
.end method

.method public getCommonConfig()Lcom/windmill/sdk/models/Common;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/SdkConfig;->common_config:Lcom/windmill/sdk/models/Common;

    .line 6
    .line 7
    return-object v0
.end method

.method public getDisable_up_OAid()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->disable_up_oaid:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public getGMPricePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->gm_price_packages:Ljava/util/List;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public getGMPricePercent()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->gm_price_percent:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public getLoadPeriodTime()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->load_interval:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    mul-int/lit16 v0, v0, 0x3e8

    .line 22
    .line 23
    int-to-long v0, v0

    .line 24
    return-wide v0

    .line 25
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    return-wide v0
.end method

.method public getLogBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->dclog_blacklist:Ljava/util/List;

    .line 6
    .line 7
    return-object v0
.end method

.method public getLogUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/models/CommonEndpointsConfig;->log:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "?"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x3f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "&"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->SDK_LOG_URL:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public getLog_enc()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->log_enc:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public getMaxSendLogRecords()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->max_send_log_records:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x64

    .line 16
    .line 17
    :cond_0
    return v0
.end method

.method public getOaidApiDisable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->oaid_api_is_disable:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public getQuickAppSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->quick_app_schema:Ljava/util/List;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getQuickAppSchenemCollectionRatio()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_ratio:Ljava/lang/Integer;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method public getReadyExpired()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->ready_expire_timestamp:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x384

    .line 15
    .line 16
    :cond_0
    int-to-long v0, v0

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    mul-long v0, v0, v2

    .line 20
    .line 21
    return-wide v0
.end method

.method public getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mSdkConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mDefaultSDKConfig:Lcom/windmill/sdk/models/SdkConfig;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getSendLogInterval()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->send_log_interval:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    :cond_0
    return v0
.end method

.method public getStrategyUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->endpoints:Lcom/windmill/sdk/models/CommonEndpointsConfig;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/models/CommonEndpointsConfig;->strategy:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "?"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x3f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "&"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->STRATEGY_URL:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getServerQueryString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public getTracking_expiration_time()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x15180

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ge v0, v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->tracking_expiration_time:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_1
    return v1
.end method

.method public getTracking_retry_interval()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb4

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-ge v0, v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->tracking_retry_interval:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_1
    return v1
.end method

.method public isDisableBootMark()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->disable_boot_mark:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public isDisable_up_location()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->disable_up_location:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public isEnableAppCheck()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->redirect_link_collection_switch:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public isEnableGmPriceCache()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->gm_price_cache_switch:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :cond_1
    :goto_0
    return v1
.end method

.method public isEnable_debug_level()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getCommonConfig()Lcom/windmill/sdk/models/Common;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/windmill/sdk/models/Common;->enable_debug_level:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public isEnable_permission()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->enable_permission:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public isEnable_report_crash()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getSdkConfig()Lcom/windmill/sdk/models/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getAndroidConfig()Lcom/windmill/sdk/models/Android;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/windmill/sdk/models/Android;->enable_report_crash:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public loadAdTimeout(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/windmill/sdk/strategy/WMSdkConfig;->_TIMEOUT:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    int-to-long v0, v0

    .line 41
    return-wide v0
.end method

.method public setOnSDKUpdateListener(Lcom/windmill/sdk/strategy/WMSdkConfig$a;)Lcom/windmill/sdk/strategy/WMSdkConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSDKUpdateListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mOnSDKUpdateListener:Lcom/windmill/sdk/strategy/WMSdkConfig$a;

    .line 2
    .line 3
    sget-object p1, Lcom/windmill/sdk/strategy/WMSdkConfig;->gInstance:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 4
    .line 5
    return-object p1
.end method

.method public startUpdate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->cancelRefreshTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
