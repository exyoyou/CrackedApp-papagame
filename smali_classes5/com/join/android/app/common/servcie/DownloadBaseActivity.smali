.class public Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.super Lcom/join/mgps/activity/MyFragmentActivity1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadBaseActivity"

.field private static context:Landroid/content/Context;

.field static future:Ljava/util/concurrent/ScheduledFuture;

.field private static recovery:Z

.field private static scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field activityHasdestroy:Z

.field private apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

.field private apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

.field private delay:I

.field private downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

.field private final intentFilter1_:Landroid/content/IntentFilter;

.field private intentFilter2_:Landroid/content/IntentFilter;

.field private intentFilter3_:Landroid/content/IntentFilter;

.field private intentFilter4_:Landroid/content/IntentFilter;

.field isWifi:Z

.field private lastDelay:J

.field lastRemovedDownloadTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

.field private onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;

.field recommendClient:Lcom/join/mgps/rpc/e;

.field screenOffTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    .line 22
    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    .line 39
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 46
    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->screenOffTime:J

    .line 50
    .line 51
    new-instance v2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 62
    .line 63
    const/16 v2, 0x3e8

    .line 64
    .line 65
    iput v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->delay:I

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    .line 68
    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartOnlyWifiDownloadTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartDownloadTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->restartAllNetDownloadTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private declared-synchronized download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "showTip"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method private declared-synchronized downloadStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "showTip"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "method downloadStart called."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ";url="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/join/android/app/common/servcie/q;->a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1, p2}, Lcom/join/android/app/common/servcie/j;->p(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method

.method private initRecviver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/join/android/app/common/servcie/DownloadBaseActivity$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 12
    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    .line 41
    .line 42
    const-string v1, "com.join.apkinstal.action.broadcast"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v1, "com.join.downloadbygameid.action.broadcast"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 69
    .line 70
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 76
    .line 77
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$6;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$6;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 92
    .line 93
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter2_:Landroid/content/IntentFilter;

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$7;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$7;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 110
    .line 111
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter3_:Landroid/content/IntentFilter;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$8;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$8;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    .line 128
    .line 129
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter4_:Landroid/content/IntentFilter;

    .line 132
    .line 133
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$9;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$9;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 146
    .line 147
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->intentFilter1_:Landroid/content/IntentFilter;

    .line 150
    .line 151
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void
.end method

.method private isAppOnForeground()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 44
    .line 45
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 54
    .line 55
    const/16 v4, 0x64

    .line 56
    .line 57
    if-ne v3, v4, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_2
    return v2
.end method

.method private isChajianApk(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "application/vnd.android.package-archive"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const-string v1, "application/zip"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, "application/x-zip"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "audio/x-mod"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    :cond_1
    return v2

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    return v2

    .line 77
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v0, 0x3f

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ltz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_5
    const-string v0, ".zip"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    return v2

    .line 102
    :cond_6
    const-string v0, ".apk"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    return p1
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$apkInstalDownDataOrObbRecver$0(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$restartDownloadTask$1(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$onFinish$4(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$apkInstalDownDataOrObbRecver$0(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method private synthetic lambda$onFinish$2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/d2;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0, p2}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private synthetic lambda$onFinish$3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/d2;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0, p2}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private synthetic lambda$onFinish$4(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method private synthetic lambda$onFinish$5(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method private synthetic lambda$restartDownloadTask$1(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public static synthetic m(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$onFinish$3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$onFinish$5(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lambda$onFinish$2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private reconcileInstallStates()V
    .locals 8

    .line 1
    const-string v0, "com.join.android.app.mgsim.wufun.addon"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lq5/f;->d()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_b

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_a

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    sget-object v5, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-direct {p0, v3}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isChajianApk(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    sget-object v5, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v5}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    sget-object v6, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 124
    .line 125
    sget-object v7, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 126
    .line 127
    invoke-virtual {v5, v6, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_9

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v5, 0xb

    .line 148
    .line 149
    const/16 v6, 0x9

    .line 150
    .line 151
    if-eq v3, v5, :cond_7

    .line 152
    .line 153
    const/16 v5, 0x30

    .line 154
    .line 155
    if-eq v3, v5, :cond_7

    .line 156
    .line 157
    if-ne v3, v6, :cond_1

    .line 158
    .line 159
    :cond_7
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    if-ne v3, v6, :cond_8

    .line 163
    .line 164
    const/4 v3, 0x3

    .line 165
    goto :goto_1

    .line 166
    :cond_8
    const/4 v3, 0x1

    .line 167
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const/4 v5, 0x5

    .line 177
    if-ne v3, v5, :cond_1

    .line 178
    .line 179
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    const/4 v3, 0x2

    .line 183
    invoke-virtual {p0, v3, v4}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_c

    .line 193
    .line 194
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    sget-object v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 197
    .line 198
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v2, v3, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_c

    .line 217
    .line 218
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_b
    :goto_2
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :cond_c
    :goto_3
    return-void
.end method

.method private declared-synchronized restartAllNetDownloadTask()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    sput-boolean v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z

    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lq5/f;->h0()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    :try_start_2
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->s0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Lcom/MApplication;->U:Lcom/join/mgps/dto/HomeViewSwich;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/16 v3, 0x12c

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/16 v5, 0xc

    .line 104
    .line 105
    if-eq v4, v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    const/16 v5, 0xd

    .line 112
    .line 113
    if-eq v4, v5, :cond_3

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudTask()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v2, v1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_1
    move-exception v2

    .line 146
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 154
    :cond_6
    :goto_2
    :try_start_5
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    monitor-exit p0

    .line 160
    throw v0
.end method

.method private restartDownloadTask()V
    .locals 9

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isOnlyWifiReconnect()Lorg/androidannotations/api/sharedpreferences/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lq5/f;->i0()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_e

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_e

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_e

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .line 54
    :try_start_1
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->s0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcom/MApplication;->U:Lcom/join/mgps/dto/HomeViewSwich;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/16 v3, 0x12c

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v3

    .line 90
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_1
    const/16 v3, 0xa

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    const/4 v5, 0x1

    .line 97
    const/4 v6, 0x6

    .line 98
    const/4 v7, 0x0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    sget-object v8, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 102
    .line 103
    if-eqz v8, :cond_7

    .line 104
    .line 105
    invoke-static {v8}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_4

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eq v8, v4, :cond_3

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eq v4, v6, :cond_3

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eq v4, v3, :cond_3

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-ne v3, v5, :cond_7

    .line 134
    .line 135
    :cond_3
    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v2, v7}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 157
    .line 158
    .line 159
    invoke-static {v2}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eq v8, v4, :cond_6

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eq v4, v6, :cond_6

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eq v4, v3, :cond_6

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-ne v3, v5, :cond_7

    .line 192
    .line 193
    :cond_6
    invoke-virtual {v2, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v2, v7}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const/16 v4, 0xc

    .line 211
    .line 212
    if-eq v3, v4, :cond_c

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    const/16 v4, 0xd

    .line 219
    .line 220
    if-ne v3, v4, :cond_8

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_8
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    const/16 v4, 0x30

    .line 228
    .line 229
    if-ne v3, v4, :cond_1

    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-nez v3, :cond_a

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_9

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v3, v2}, Lq5/f;->n(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_b

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_b
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    new-instance v4, Lcom/join/android/app/common/servcie/b;

    .line 287
    .line 288
    invoke-direct {v4, p0}, Lcom/join/android/app/common/servcie/b;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v3, v2, v4}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_c
    :goto_4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    if-eqz v3, :cond_d

    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    sget-object v4, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_d

    .line 317
    .line 318
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {v3, v4, v2, v5}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_d
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    sget-object v4, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 334
    .line 335
    invoke-virtual {v3, v4, v2, v7}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :catch_1
    :cond_e
    return-void
.end method

.method private declared-synchronized restartOnlyWifiDownloadTask()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    :try_start_2
    sput-boolean v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lq5/f;->h0()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    :try_start_3
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v3, v2}, Lcom/join/mgps/Util/UtilsMy;->s0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownType(Z)V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/MApplication;->U:Lcom/join/mgps/dto/HomeViewSwich;

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeViewSwich;->getDown_load_speed_limit()Lcom/join/mgps/dto/DownloadCfg;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadCfg;->getCfg_values_express()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/16 v3, 0x12c

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownLimit(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v3

    .line 93
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v5, 0xc

    .line 115
    .line 116
    if-eq v4, v5, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    const/16 v5, 0xd

    .line 123
    .line 124
    if-eq v4, v5, :cond_4

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMobleNetNeedStop(I)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v2, v1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    .line 144
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 152
    :cond_6
    :goto_2
    :try_start_6
    sput-boolean v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recovery:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    monitor-exit p0

    .line 158
    throw v0
.end method

.method private declared-synchronized retryOnSomeTime()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "scheduler status:: isDone ="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ";furture.isCancelled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    .line 68
    new-instance v2, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$e;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v3, 0x5

    .line 74
    .line 75
    const-wide/16 v5, 0xa

    .line 76
    .line 77
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->future:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    :cond_2
    :goto_0
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    monitor-exit p0

    .line 89
    throw v0
.end method

.method private sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moretype",
            "gameid",
            "vocannoOther",
            "isOnlineGame"
        }
    .end annotation

    .line 1
    const-string p2, "-"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string p1, "999"

    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    new-array p3, p1, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, [Ljava/lang/String;

    .line 40
    .line 41
    array-length p3, p2

    .line 42
    if-lez p3, :cond_b

    .line 43
    .line 44
    array-length p3, p2

    .line 45
    const-string p4, "4"

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    const/4 v1, 0x1

    .line 49
    if-le p3, v0, :cond_3

    .line 50
    .line 51
    const-string p3, "22"

    .line 52
    .line 53
    aget-object v2, p2, p1

    .line 54
    .line 55
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    aget-object p1, p2, v1

    .line 62
    .line 63
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p1, "13"

    .line 71
    .line 72
    aget-object p3, p2, v1

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string p1, "99"

    .line 82
    .line 83
    aget-object p3, p2, v1

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_0
    aget-object p1, p2, v0

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_3
    aget-object p3, p2, p1

    .line 93
    .line 94
    const-string v2, "home"

    .line 95
    .line 96
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-nez p3, :cond_9

    .line 101
    .line 102
    aget-object p3, p2, p1

    .line 103
    .line 104
    const-string v2, "ranking"

    .line 105
    .line 106
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    aget-object p3, p2, p1

    .line 114
    .line 115
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_5

    .line 120
    .line 121
    array-length p1, p2

    .line 122
    if-le p1, v1, :cond_b

    .line 123
    .line 124
    aget-object p1, p2, v1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    aget-object p3, p2, p1

    .line 128
    .line 129
    const-string p4, "7"

    .line 130
    .line 131
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_6

    .line 136
    .line 137
    array-length p1, p2

    .line 138
    if-le p1, v1, :cond_b

    .line 139
    .line 140
    aget-object p1, p2, v1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    aget-object p3, p2, p1

    .line 144
    .line 145
    const-string p4, "5"

    .line 146
    .line 147
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-eqz p3, :cond_7

    .line 152
    .line 153
    array-length p1, p2

    .line 154
    if-le p1, v1, :cond_b

    .line 155
    .line 156
    aget-object p1, p2, v1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    aget-object p1, p2, p1

    .line 160
    .line 161
    const-string p3, "0"

    .line 162
    .line 163
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    array-length p1, p2

    .line 170
    if-le p1, v0, :cond_8

    .line 171
    .line 172
    aget-object p1, p2, v0

    .line 173
    .line 174
    :cond_8
    array-length p1, p2

    .line 175
    const/4 p3, 0x3

    .line 176
    if-le p1, p3, :cond_b

    .line 177
    .line 178
    aget-object p1, p2, v1

    .line 179
    .line 180
    aget-object p1, p2, p3

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    :goto_1
    aget-object p1, p2, p1

    .line 184
    .line 185
    array-length p1, p2

    .line 186
    if-le p1, v1, :cond_a

    .line 187
    .line 188
    aget-object p1, p2, v1

    .line 189
    .line 190
    :cond_a
    array-length p1, p2

    .line 191
    if-le p1, v0, :cond_b

    .line 192
    .line 193
    aget-object p1, p2, v0

    .line 194
    .line 195
    :cond_b
    :goto_2
    return-void
.end method

.method public static updatezipProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/mgps/event/r;

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method apkInstalDownDataOrObbRecver(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "apkpath"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/high16 v2, 0x10000000

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lq5/f;->F(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/android/app/common/servcie/a;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/join/android/app/common/servcie/a;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method apkInstalRecver(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "actionFrom"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "method apkInstalRecver() called.packageName="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "  actionFrom="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x2

    .line 54
    const-string v3, "xyz.aethersx2.android"

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x3

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string p1, "com.join.android.app.mgsim.wufun.addon"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {p0, v2, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->changeDownloadState(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    const-string v0, "android.intent.action.INSTALL_FAILURE"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_0
    return-void
.end method

.method backH5Downloadgame(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDataBackRequest([Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, v0}, Lb7/i;->r0(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity$c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$c;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method changeDownloadState(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "packageName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->backH5Downloadgame(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lq5/f;->d()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_d

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget-object v4, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    :cond_3
    const-string v3, "downloadTask status="

    .line 118
    .line 119
    const/4 v4, 0x5

    .line 120
    if-eq p1, v0, :cond_8

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    if-eq p1, v5, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    :try_start_1
    sget-object v5, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_2

    .line 141
    .line 142
    const-string v5, "app\u5378\u8f7d"

    .line 143
    .line 144
    invoke-static {v5}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, "  5\u662ffinish\u72b6\u6001"

    .line 163
    .line 164
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/16 v5, 0xb

    .line 179
    .line 180
    if-ne v5, v3, :cond_5

    .line 181
    .line 182
    const-string v3, "downloadTask \u5b89\u88c5\u72b6\u6001"

    .line 183
    .line 184
    invoke-static {v3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-virtual {v3, v2, v5}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    new-instance v5, Lcom/join/mgps/event/r;

    .line 206
    .line 207
    invoke-direct {v5, v2, v4}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v3, v2}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-eqz v2, :cond_2

    .line 226
    .line 227
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_5
    const-string v3, "\u6536\u5230\u5220\u9664\u5e7f\u64ad"

    .line 233
    .line 234
    invoke-static {v3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-nez v4, :cond_6

    .line 260
    .line 261
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastRemovedDownloadTasks:Ljava/util/HashMap;

    .line 262
    .line 263
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    :cond_6
    if-eqz v3, :cond_7

    .line 271
    .line 272
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v4, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 281
    .line 282
    .line 283
    :cond_7
    invoke-static {v2}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_8
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 295
    const-string v6, ""

    .line 296
    .line 297
    if-eqz v5, :cond_a

    .line 298
    .line 299
    :try_start_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    sget-object v7, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_a

    .line 314
    .line 315
    invoke-static {}, Lt6/k;->n()Lt6/k;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {v5, v7}, Lt6/k;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    if-eqz v5, :cond_9

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v7

    .line 333
    invoke-virtual {v5, v7, v8}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_9
    new-instance v5, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 338
    .line 339
    invoke-direct {v5}, Lcom/join/mgps/db/tables/DownloadHistoryTable;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v5, v7}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    invoke-virtual {v5, v7, v8}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->setCreate_time(J)V

    .line 354
    .line 355
    .line 356
    :goto_2
    invoke-static {}, Lt6/k;->n()Lt6/k;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v7, v5}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-static {p0, v5}, Lcom/join/mgps/Util/UtilsMy;->d3(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v5, Lcom/join/mgps/pref/PrefDef_;

    .line 371
    .line 372
    sget-object v7, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 373
    .line 374
    invoke-direct {v5, v7}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-virtual {v7, v8}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-virtual {v5, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 393
    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_a
    :try_start_3
    sget-object v5, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 397
    .line 398
    invoke-static {v5}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    sget-object v7, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 403
    .line 404
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    invoke-virtual {v5, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    if-eqz v5, :cond_b

    .line 413
    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {v2, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5}, Lcom/join/android/app/common/utils/APKUtils$a;->e()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :catch_0
    move-exception v5

    .line 445
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 446
    .line 447
    .line 448
    :cond_b
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    if-eqz v5, :cond_c

    .line 461
    .line 462
    invoke-virtual {v5, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 463
    .line 464
    .line 465
    goto :goto_4

    .line 466
    :catch_1
    move-exception v5

    .line 467
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    .line 469
    .line 470
    :cond_c
    :goto_4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    invoke-virtual {v5, v2, v6}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 482
    .line 483
    .line 484
    sget-object v5, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 485
    .line 486
    sget-object v6, Lcom/papa/sim/statistic/Event;->installAndroidCompleted:Lcom/papa/sim/statistic/Event;

    .line 487
    .line 488
    invoke-static {v5, v2, v6}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 489
    .line 490
    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v3, " Event.installAndroidCompleted"

    .line 507
    .line 508
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-static {v3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    new-instance v5, Lcom/join/mgps/event/r;

    .line 523
    .line 524
    invoke-direct {v5, v2, v4}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 528
    .line 529
    .line 530
    :try_start_7
    new-instance v3, Ljava/io/File;

    .line 531
    .line 532
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-eqz v2, :cond_2

    .line 544
    .line 545
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 546
    .line 547
    .line 548
    goto/16 :goto_1

    .line 549
    .line 550
    :catch_2
    move-exception v2

    .line 551
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 552
    .line 553
    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :catch_3
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 558
    .line 559
    .line 560
    :cond_d
    return-void
.end method

.method downloadbygameRecver(Landroid/content/Intent;)V
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
    const-string v0, "gameId"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->getBaseDetailData(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method getBaseDetailData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1}, Lb7/d;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$b;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void
.end method

.method onConnectivityChanged(Landroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    .line 3
    const-string v1, "wifi_state"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "android.net.wifi.STATE_CHANGE"

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    :cond_0
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "\u7f51\u7edc\u72b6\u6001\uff1a"

    .line 42
    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iput-boolean v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isWifi:Z

    .line 120
    .line 121
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "wifi\u72b6\u6001\uff1a"

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v3}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v3, "\u79fb\u52a8\u7f51\u7edc\u72b6\u6001\uff1a"

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 151
    .line 152
    invoke-static {v3}, Lcom/join/android/app/common/utils/m;->i(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u7c7b\u578b\uff1a"

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {v3}, Lcom/join/android/app/common/utils/m;->c(Landroid/content/Context;)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->retryOnSomeTime()V

    .line 179
    .line 180
    .line 181
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 182
    .line 183
    new-instance v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;

    .line 184
    .line 185
    invoke-direct {v3, p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity$d;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_8

    .line 216
    .line 217
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED | "

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const/4 v2, -0x1

    .line 249
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, " | "

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, "previous_wifi_state"

    .line 262
    .line 263
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_8

    .line 287
    .line 288
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_6

    .line 293
    .line 294
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-ne p1, v4, :cond_8

    .line 299
    .line 300
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_8

    .line 317
    .line 318
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Ljava/lang/Boolean;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-nez p1, :cond_8

    .line 335
    .line 336
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    .line 346
    .line 347
    :catch_0
    :cond_8
    :goto_1
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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sput-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v0, 0x1a

    .line 18
    .line 19
    if-lt p1, v0, :cond_3

    .line 20
    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    if-lt p1, v0, :cond_3

    .line 24
    .line 25
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->initRecviver()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 42
    .line 43
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 49
    .line 50
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lq5/f;->d()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    sget-object v2, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    new-instance v2, Ljava/io/File;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_0

    .line 118
    .line 119
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mHandler:Landroid/os/Handler;

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    const-wide/16 v1, 0x1770

    .line 139
    .line 140
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    .line 142
    .line 143
    :cond_3
    return-void
.end method

.method public onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/join/mgps/event/r;

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/join/mgps/event/p;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v2, 0x26

    .line 46
    .line 47
    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->activityHasdestroy:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/BaseAppCompatActivity;->isBackHome:Z

    .line 5
    .line 6
    if-nez v1, :cond_6

    .line 7
    .line 8
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/papa/sim/statistic/t;->e()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x1a

    .line 22
    .line 23
    if-lt v1, v2, :cond_6

    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    if-lt v1, v2, :cond_6

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->b(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 44
    .line 45
    .line 46
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->mScreenStatusReceiver:Lcom/join/android/app/common/servcie/DownloadBaseActivity$ScreenStatusReceiver;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalDownDataOrObbRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception v1

    .line 67
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->apkInstalRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_2
    move-exception v1

    .line 79
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_2
    :try_start_7
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->downloadbygameRecverReceiver_:Landroid/content/BroadcastReceiver;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catch_3
    move-exception v1

    .line 91
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_3
    :try_start_9
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onConnectivityChangedReceiver_:Landroid/content/BroadcastReceiver;

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catch_4
    move-exception v1

    .line 103
    :try_start_a
    new-array v0, v0, [Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/4 v2, 0x0

    .line 110
    aput-object v1, v0, v2

    .line 111
    .line 112
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_4
    new-instance v0, Landroid/content/Intent;

    .line 116
    .line 117
    const-string v1, "com.intent.downloadService.destroyed"

    .line 118
    .line 119
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :catch_5
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_5
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onDestroy()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onDownloadEvent(Lcom/join/mgps/event/o;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method onDownloadEvent called.event="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/o;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    if-lt v0, v1, :cond_2

    .line 25
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    if-lt v0, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/event/o;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/event/o;->getType()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/16 v1, 0x27

    .line 44
    .line 45
    if-eq p1, v1, :cond_0

    .line 46
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/servcie/j;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_2
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/servcie/j;->q(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/d2;->d(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v1, 0x1

    .line 82
    xor-int/2addr p1, v1

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->download(Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "com.quark.browser"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->normalDownloadCount()Lorg/androidannotations/api/sharedpreferences/i;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-nez p1, :cond_1

    .line 135
    .line 136
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/servcie/j;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v1, Lcom/join/mgps/event/p;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/16 v2, 0x24

    .line 154
    .line 155
    invoke-direct {v1, v0, v2}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_0
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadRuntimeEvent(Lcom/join/mgps/event/p;)V
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method onRuntimeEvent called."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    if-lt v0, v1, :cond_8

    .line 25
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    if-lt v0, v1, :cond_8

    .line 29
    .line 30
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0x21

    .line 55
    .line 56
    if-eq v2, v3, :cond_1

    .line 57
    .line 58
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->getType()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/16 v3, 0x29

    .line 75
    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    .line 78
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "STATUS_RUNTIME_SIZE_MISMATCH,gameId="

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->a()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ";realSize="

    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, ";atcualSize="

    .line 114
    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/event/p;->getType()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const/16 v2, 0x14

    .line 138
    .line 139
    if-eq p1, v2, :cond_7

    .line 140
    .line 141
    const/16 v2, 0x1d

    .line 142
    .line 143
    if-eq p1, v2, :cond_6

    .line 144
    .line 145
    const/16 v2, 0x2d

    .line 146
    .line 147
    if-eq p1, v2, :cond_5

    .line 148
    .line 149
    const/16 v2, 0x2e

    .line 150
    .line 151
    if-eq p1, v2, :cond_3

    .line 152
    .line 153
    packed-switch p1, :pswitch_data_0

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_2
    const/4 p1, 0x0

    .line 175
    new-array p1, p1, [Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onProgressUpdate([Ljava/lang/Long;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onFinish(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_3
    const-string p1, "unzipfailedxx"

    .line 198
    .line 199
    const-string v2, "recived failed"

    .line 200
    .line 201
    invoke-static {p1, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    instance-of p1, p1, Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 211
    .line 212
    if-nez p1, :cond_4

    .line 213
    .line 214
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const/4 v2, 0x1

    .line 221
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const/high16 v2, 0x10000000

    .line 234
    .line 235
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog_$IntentBuilder_;

    .line 240
    .line 241
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 242
    .line 243
    .line 244
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {p1, v2}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_5
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v0, "\u6587\u4ef6\u51fa\u9519\uff0c\u91cd\u65b0\u4e0b\u8f7d\u4e2d"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_6
    const/16 p1, 0xa

    .line 272
    .line 273
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 274
    .line 275
    .line 276
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    new-instance v3, Lcom/join/mgps/event/r;

    .line 281
    .line 282
    invoke-direct {v3, v0, p1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 289
    .line 290
    const/16 v2, 0x26

    .line 291
    .line 292
    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_7
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 306
    .line 307
    .line 308
    :cond_8
    :goto_0
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onDownloadScanEvent(Lcom/join/mgps/dto/DownloadScanEvent;)V
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadScanEvent;->getTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onFinish(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, p1, v1}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Lcom/join/mgps/event/r;

    .line 23
    .line 24
    invoke-direct {v2, p1, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/join/mgps/event/p;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 v2, 0x26

    .line 41
    .line 42
    invoke-direct {v1, p1, v2}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->retryOnSomeTime()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onFinish(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const-string v0, " permissxx   onfinish"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-double v0, v0

    .line 16
    double-to-long v0, v0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 29
    .line 30
    mul-double v0, v0, v2

    .line 31
    .line 32
    mul-double v0, v0, v2

    .line 33
    .line 34
    double-to-long v0, v0

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/high16 v2, 0x10000000

    .line 51
    .line 52
    const-class v3, Lcom/join/mgps/dto/BootPageData;

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    const/4 v5, 0x0

    .line 56
    const/16 v6, 0xb

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v1, :cond_b

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v8, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_b

    .line 76
    .line 77
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 78
    .line 79
    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    .line 80
    .line 81
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v1, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v1, v8}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v8, Lcom/join/mgps/event/r;

    .line 141
    .line 142
    invoke-direct {v8, p1, v6}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v8}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iget-object v6, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 165
    .line 166
    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Ljava/lang/String;

    .line 175
    .line 176
    if-lez v1, :cond_5

    .line 177
    .line 178
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_5

    .line 183
    .line 184
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_5

    .line 189
    .line 190
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8, v6, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Lcom/join/mgps/dto/BootPageData;

    .line 199
    .line 200
    if-eqz v3, :cond_0

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-eqz v3, :cond_0

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_0

    .line 213
    .line 214
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    sub-int/2addr v1, v7

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_0
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eq v1, v2, :cond_4

    .line 272
    .line 273
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-ne v1, v2, :cond_1

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-ne v1, v4, :cond_2

    .line 295
    .line 296
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 297
    .line 298
    new-array v1, v5, [Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v0, p1, v5, v1}, Lcom/join/android/app/common/utils/o;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_a

    .line 305
    .line 306
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :cond_2
    sget-boolean v1, Lcom/MApplication;->b2:Z

    .line 318
    .line 319
    if-eqz v1, :cond_3

    .line 320
    .line 321
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-ne v1, p1, :cond_3

    .line 336
    .line 337
    return-void

    .line 338
    :cond_3
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 339
    .line 340
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_4
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 355
    .line 356
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_5
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eq v1, v2, :cond_9

    .line 375
    .line 376
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->N3DS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-ne v1, v2, :cond_6

    .line 391
    .line 392
    goto :goto_2

    .line 393
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-ne v1, v4, :cond_7

    .line 398
    .line 399
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 400
    .line 401
    new-array v1, v5, [Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v0, p1, v5, v1}, Lcom/join/android/app/common/utils/o;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-nez v0, :cond_a

    .line 408
    .line 409
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 414
    .line 415
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 416
    .line 417
    .line 418
    goto :goto_3

    .line 419
    :cond_7
    sget-boolean v1, Lcom/MApplication;->b2:Z

    .line 420
    .line 421
    if-eqz v1, :cond_8

    .line 422
    .line 423
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 424
    .line 425
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-ne v1, p1, :cond_8

    .line 438
    .line 439
    return-void

    .line 440
    :cond_8
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 441
    .line 442
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto :goto_3

    .line 450
    :cond_9
    :goto_2
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 455
    .line 456
    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 457
    .line 458
    .line 459
    :cond_a
    :goto_3
    return-void

    .line 460
    :cond_b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_d

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    sget-object v8, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 471
    .line 472
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_d

    .line 481
    .line 482
    if-nez v0, :cond_c

    .line 483
    .line 484
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 485
    .line 486
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 487
    .line 488
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 489
    .line 490
    .line 491
    :cond_c
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 496
    .line 497
    invoke-virtual {v0, v1, p1, v7}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :cond_d
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const-string v8, ""

    .line 506
    .line 507
    const-class v9, Lcom/join/mgps/dto/ExtBean;

    .line 508
    .line 509
    if-eqz v1, :cond_16

    .line 510
    .line 511
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    sget-object v10, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 516
    .line 517
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v10

    .line 521
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_16

    .line 526
    .line 527
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-nez v1, :cond_16

    .line 532
    .line 533
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 534
    .line 535
    const/16 v4, 0x1e

    .line 536
    .line 537
    if-ge v1, v4, :cond_10

    .line 538
    .line 539
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    sget-object v4, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 544
    .line 545
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-nez v1, :cond_e

    .line 554
    .line 555
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    sget-object v4, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 560
    .line 561
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-nez v1, :cond_e

    .line 570
    .line 571
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    sget-object v4, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 576
    .line 577
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_10

    .line 586
    .line 587
    :cond_e
    if-nez v0, :cond_f

    .line 588
    .line 589
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 590
    .line 591
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 592
    .line 593
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 594
    .line 595
    .line 596
    :cond_f
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v0, v1, p1, v5}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :cond_10
    if-eqz v0, :cond_12

    .line 607
    .line 608
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_11

    .line 617
    .line 618
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-virtual {v1, v0, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 627
    .line 628
    if-eqz v0, :cond_11

    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getQkPosition()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    :cond_11
    sget-object v0, Lcom/papa/sim/statistic/Event;->installSuccessQk:Lcom/papa/sim/statistic/Event;

    .line 635
    .line 636
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-static {p0, v0, v1, v8}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_4

    .line 644
    :cond_12
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 645
    .line 646
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 647
    .line 648
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 649
    .line 650
    .line 651
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 652
    .line 653
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 654
    .line 655
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 656
    .line 657
    .line 658
    :goto_4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-eqz v1, :cond_13

    .line 667
    .line 668
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-virtual {v1, v0, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 677
    .line 678
    if-eqz v0, :cond_13

    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_13

    .line 689
    .line 690
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    invoke-direct {p0, v1, v4, v0, v5}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 707
    .line 708
    .line 709
    :cond_13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 717
    .line 718
    .line 719
    :try_start_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    invoke-virtual {v1, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 736
    .line 737
    .line 738
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-virtual {v1, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    .line 744
    .line 745
    goto :goto_5

    .line 746
    :catch_1
    move-exception v1

    .line 747
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 748
    .line 749
    .line 750
    :goto_5
    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 751
    .line 752
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Ljava/lang/Integer;

    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 767
    .line 768
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    check-cast v4, Ljava/lang/String;

    .line 777
    .line 778
    if-lez v1, :cond_15

    .line 779
    .line 780
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result v5

    .line 784
    if-eqz v5, :cond_15

    .line 785
    .line 786
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    if-eqz v5, :cond_15

    .line 791
    .line 792
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    invoke-virtual {v5, v4, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    check-cast v3, Lcom/join/mgps/dto/BootPageData;

    .line 801
    .line 802
    if-eqz v3, :cond_14

    .line 803
    .line 804
    invoke-virtual {v3}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    if-eqz v3, :cond_14

    .line 809
    .line 810
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 811
    .line 812
    invoke-static {v3}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v3, v7}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-virtual {v3, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    check-cast v2, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 825
    .line 826
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-virtual {v2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 835
    .line 836
    .line 837
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 838
    .line 839
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    sub-int/2addr v1, v7

    .line 844
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    goto :goto_6

    .line 852
    :cond_14
    new-instance v1, Lcom/join/android/app/common/servcie/c;

    .line 853
    .line 854
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/servcie/c;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 855
    .line 856
    .line 857
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 858
    .line 859
    .line 860
    goto :goto_6

    .line 861
    :cond_15
    new-instance v1, Lcom/join/android/app/common/servcie/d;

    .line 862
    .line 863
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/servcie/d;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 864
    .line 865
    .line 866
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 867
    .line 868
    .line 869
    :goto_6
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 873
    .line 874
    .line 875
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 876
    .line 877
    invoke-static {v0, p1, v6}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 878
    .line 879
    .line 880
    :try_start_2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 897
    .line 898
    .line 899
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v0, p1}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 904
    .line 905
    .line 906
    goto :goto_7

    .line 907
    :catch_2
    move-exception v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 909
    .line 910
    .line 911
    :goto_7
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 920
    .line 921
    .line 922
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    new-instance v1, Lcom/join/mgps/event/r;

    .line 927
    .line 928
    invoke-direct {v1, p1, v6}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :cond_16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    if-eqz v1, :cond_17

    .line 940
    .line 941
    sget-object v1, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 942
    .line 943
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v10

    .line 951
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    if-nez v1, :cond_18

    .line 956
    .line 957
    :cond_17
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-eqz v1, :cond_25

    .line 962
    .line 963
    :cond_18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 964
    .line 965
    .line 966
    move-result v1

    .line 967
    if-eqz v1, :cond_19

    .line 968
    .line 969
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-ne v1, v4, :cond_1a

    .line 974
    .line 975
    :cond_19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    sget-object v10, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 980
    .line 981
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v10

    .line 985
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    if-nez v1, :cond_24

    .line 990
    .line 991
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    sget-object v10, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 996
    .line 997
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v10

    .line 1001
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-nez v1, :cond_24

    .line 1006
    .line 1007
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    sget-object v10, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 1012
    .line 1013
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v10

    .line 1017
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    if-eqz v1, :cond_1a

    .line 1022
    .line 1023
    goto/16 :goto_e

    .line 1024
    .line 1025
    :cond_1a
    if-eqz v0, :cond_1b

    .line 1026
    .line 1027
    sget-object v1, Lcom/papa/sim/statistic/Event;->installSuccessQk:Lcom/papa/sim/statistic/Event;

    .line 1028
    .line 1029
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v10

    .line 1033
    invoke-static {p0, v1, v10, v8}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_8

    .line 1037
    :cond_1b
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1038
    .line 1039
    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 1040
    .line 1041
    invoke-static {v1, p1, v8}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 1042
    .line 1043
    .line 1044
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1045
    .line 1046
    sget-object v8, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 1047
    .line 1048
    invoke-static {v1, p1, v8}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 1049
    .line 1050
    .line 1051
    :goto_8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v8

    .line 1059
    if-eqz v8, :cond_1c

    .line 1060
    .line 1061
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v8

    .line 1065
    invoke-virtual {v8, v1, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    .line 1070
    .line 1071
    if-eqz v1, :cond_1c

    .line 1072
    .line 1073
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v8

    .line 1077
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v9

    .line 1081
    if-eqz v9, :cond_1c

    .line 1082
    .line 1083
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v9

    .line 1087
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v10

    .line 1095
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v10

    .line 1099
    invoke-direct {p0, v8, v9, v1, v10}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->sendPointVolcanno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1100
    .line 1101
    .line 1102
    :cond_1c
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1103
    .line 1104
    .line 1105
    move-result v1

    .line 1106
    if-eqz v1, :cond_1e

    .line 1107
    .line 1108
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    if-ne v1, v4, :cond_1d

    .line 1113
    .line 1114
    goto :goto_9

    .line 1115
    :cond_1d
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1116
    .line 1117
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 1118
    .line 1119
    .line 1120
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->F(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_d

    .line 1124
    .line 1125
    :cond_1e
    :goto_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v4

    .line 1136
    if-nez v4, :cond_1f

    .line 1137
    .line 1138
    if-eqz v0, :cond_20

    .line 1139
    .line 1140
    :cond_1f
    const/4 v5, 0x1

    .line 1141
    :cond_20
    if-eqz v5, :cond_21

    .line 1142
    .line 1143
    const/16 v0, 0x30

    .line 1144
    .line 1145
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 1146
    .line 1147
    .line 1148
    goto :goto_a

    .line 1149
    :cond_21
    invoke-virtual {p1, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 1150
    .line 1151
    .line 1152
    :goto_a
    :try_start_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    invoke-virtual {v0, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 1169
    .line 1170
    .line 1171
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    invoke-virtual {v0, p1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1176
    .line 1177
    .line 1178
    goto :goto_b

    .line 1179
    :catch_3
    move-exception v0

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1181
    .line 1182
    .line 1183
    :goto_b
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 1184
    .line 1185
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    check-cast v0, Ljava/lang/Integer;

    .line 1194
    .line 1195
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    iget-object v4, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 1200
    .line 1201
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v4

    .line 1205
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v4

    .line 1209
    check-cast v4, Ljava/lang/String;

    .line 1210
    .line 1211
    if-lez v0, :cond_23

    .line 1212
    .line 1213
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v6

    .line 1217
    if-eqz v6, :cond_23

    .line 1218
    .line 1219
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->isAppOnForeground()Z

    .line 1220
    .line 1221
    .line 1222
    move-result v6

    .line 1223
    if-eqz v6, :cond_23

    .line 1224
    .line 1225
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v6

    .line 1229
    invoke-virtual {v6, v4, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    check-cast v3, Lcom/join/mgps/dto/BootPageData;

    .line 1234
    .line 1235
    if-eqz v3, :cond_22

    .line 1236
    .line 1237
    invoke-virtual {v3}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v3

    .line 1241
    if-eqz v3, :cond_22

    .line 1242
    .line 1243
    if-nez v5, :cond_22

    .line 1244
    .line 1245
    sget-object v3, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1246
    .line 1247
    invoke-static {v3}, Lcom/join/mgps/activity/PapaPlugGuideActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    invoke-virtual {v3, v7}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->a(I)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    invoke-virtual {v3, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    check-cast v2, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 1260
    .line 1261
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v3

    .line 1265
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;->b(Ljava/lang/String;)Lcom/join/mgps/activity/PapaPlugGuideActivity_$c;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 1270
    .line 1271
    .line 1272
    iget-object v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 1273
    .line 1274
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    sub-int/2addr v0, v7

    .line 1279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_c

    .line 1287
    :cond_22
    new-instance v0, Lcom/join/android/app/common/servcie/e;

    .line 1288
    .line 1289
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/e;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-static {v1, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_c

    .line 1296
    :cond_23
    new-instance v0, Lcom/join/android/app/common/servcie/f;

    .line 1297
    .line 1298
    invoke-direct {v0, p0}, Lcom/join/android/app/common/servcie/f;-><init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-static {v1, p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->s0(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lkotlin/jvm/functions/Function1;)V

    .line 1302
    .line 1303
    .line 1304
    :goto_c
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    :goto_d
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1308
    .line 1309
    const/4 v1, 0x5

    .line 1310
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1311
    .line 1312
    .line 1313
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object p1

    .line 1321
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1322
    .line 1323
    .line 1324
    return-void

    .line 1325
    :cond_24
    :goto_e
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1326
    .line 1327
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameDownloadCompleted:Lcom/papa/sim/statistic/Event;

    .line 1328
    .line 1329
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 1337
    .line 1338
    invoke-virtual {v0, v1, p1, v5}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 1339
    .line 1340
    .line 1341
    :cond_25
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->delay:I

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long p1, v0, v2

    .line 25
    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/join/mgps/event/r;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->lastDelay:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/p1;->b(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->reconcileInstallStates()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 3
    .line 4
    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/join/mgps/event/r;

    .line 15
    .line 16
    invoke-direct {v2, p1, v0}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x7

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x6

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x5

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, p1, v1}, Lq5/f;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v2, Lcom/join/mgps/event/r;

    .line 53
    .line 54
    invoke-direct {v2, p1, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/join/mgps/event/p;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/16 v3, 0x26

    .line 71
    .line 72
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 79
    .line 80
    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadStop:Lcom/papa/sim/statistic/Event;

    .line 81
    .line 82
    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v1, 0x5

    .line 51
    if-ne p1, v1, :cond_3

    .line 52
    .line 53
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object p1, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->context:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    return-void
.end method
