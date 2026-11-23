.class public Lcom/join/mgps/helper/MGFightServerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/helper/MGFightServerManager$b;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private apName:Ljava/lang/String;

.field private fightConnectListener:Lcom/join/mgps/callbacks/g;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGameName:Ljava/lang/String;

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

.field private wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fightConnectListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/helper/MGFightServerManager$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightServerManager$a;-><init>(Lcom/join/mgps/helper/MGFightServerManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/helper/MGFightServerManager$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mGameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/helper/MGFightServerManager;Lcom/join/mgps/aidl/MGWifiServerThread;)Lcom/join/mgps/aidl/MGWifiServerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private createAP(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->closeWifi()V

    .line 10
    .line 11
    .line 12
    const-string v0, " "

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x6

    .line 25
    if-le v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mGameName:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/y2;->b(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "papa_"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "_"

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v0, "method createAP() called. start create ap:["

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "]"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/4 v0, 0x4

    .line 101
    if-ne p1, v0, :cond_1

    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 104
    .line 105
    const/16 v0, 0x232e

    .line 106
    .line 107
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->a(I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->apName:Ljava/lang/String;

    .line 114
    .line 115
    const-string v1, "12345678"

    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/WifiUtils;->createAPInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/WifiUtils;->createWiFiAP(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 126
    .line 127
    if-nez p1, :cond_3

    .line 128
    .line 129
    new-instance p1, Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Lcom/join/mgps/helper/MGFightServerManager$b;-><init>(Lcom/join/mgps/helper/MGFightServerManager;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->b()V

    .line 138
    .line 139
    .line 140
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager;->monitorAPProcess:Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->a()V

    .line 143
    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getmWifiapBroadcast()Lcom/join/mgps/broadcast/WifiapBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleConnectChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public initBroadcast()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/broadcast/WifiapBroadcast;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7fffffff

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/helper/MGFightServerManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    return-void
.end method

.method public scanResultsAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public shutDownServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public startGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->wifiServerThread:Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiServerThread;->startGame()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startServer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGameName"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/helper/MGFightServerManager;->createAP(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public wifiStatusNotification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
