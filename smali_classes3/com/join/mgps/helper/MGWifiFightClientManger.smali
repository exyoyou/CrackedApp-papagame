.class public Lcom/join/mgps/helper/MGWifiFightClientManger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/helper/MGWifiFightClientManger$b;
    }
.end annotation


# instance fields
.field private enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

.field private enteringStartTime:J

.field private fightConnectListener:Lcom/join/mgps/callbacks/g;

.field public handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
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
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGWifiFightClientManger$a;-><init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->initBroadcast()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/helper/MGWifiFightClientManger$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/MGWifiFightClientManger;)Lcom/join/mgps/callbacks/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/MGWifiFightClientManger;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enteringStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private startMonitorEnteringRoom()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enteringStartTime:J

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGWifiFightClientManger$b;-><init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Thread;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->enterRoomProcess:Lcom/join/mgps/helper/MGWifiFightClientManger$b;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ip",
            "gameId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/helper/MGWifiFightClientManger;->startMonitorEnteringRoom()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/helper/WifiClientThread;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/helper/WifiClientThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/helper/WifiClientThread;->run(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->wifiClientThread:Lcom/join/mgps/helper/WifiClientThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiClientThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public handleConnectChange()V
    .locals 0

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
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
    .locals 0

    return-void
.end method

.method public unregisterBroadCast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public wifiStatusNotification()V
    .locals 0

    return-void
.end method
