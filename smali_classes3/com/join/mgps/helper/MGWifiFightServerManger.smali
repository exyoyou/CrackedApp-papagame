.class public Lcom/join/mgps/helper/MGWifiFightServerManger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# instance fields
.field private fightConnectListener:Lcom/join/mgps/callbacks/g;

.field private mContext:Landroid/content/Context;

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field private mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field private wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "fightConnectListener",
            "gameId",
            "gameName"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/helper/WifiServerThread;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/helper/MGWifiFightServerManger$a;

    .line 17
    .line 18
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/helper/MGWifiFightServerManger$a;-><init>(Lcom/join/mgps/helper/MGWifiFightServerManger;Lcom/join/mgps/callbacks/g;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, v1, p3, p4}, Lcom/join/mgps/helper/WifiServerThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->initBroadcast()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

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
    iput-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public shutDownServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->shutDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public startGame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiServerThread;->startGame()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startServer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "0.0.0.0"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->wifiServerThread:Lcom/join/mgps/helper/WifiServerThread;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/helper/WifiServerThread;->run()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->a(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public unregisterBroadCast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightServerManger;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

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
