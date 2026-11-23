.class public Lcom/join/mgps/helper/MGFightClientManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/WifiapBroadcast$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/helper/MGFightClientManager$d;,
        Lcom/join/mgps/helper/MGFightClientManager$e;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private enterRoomProcess:Lcom/join/mgps/helper/MGFightClientManager$d;

.field private enteringStartTime:J

.field private fightConnectListener:Lcom/join/mgps/callbacks/g;

.field public handler:Landroid/os/Handler;

.field private isConnected:Z

.field isConnecting:Z

.field private isEnteringRoom:Z

.field lasConnectToHostspot:J

.field lasScanTime:J

.field private mContext:Landroid/content/Context;

.field private mGameName:Ljava/lang/String;

.field private mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

.field private mWifiApHistoryList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

.field mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

.field processingScan:Z

.field private running:Z

.field scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private specifiedSSID:Ljava/lang/String;

.field private wifiClientThread:Lcom/join/mgps/aidl/MGWifiClientThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/callbacks/g;)V
    .locals 2
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
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$e;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApHistoryList:Ljava/util/Map;

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z

    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$a;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$a;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->lasConnectToHostspot:J

    .line 56
    .line 57
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->lasScanTime:J

    .line 58
    .line 59
    iput-object p2, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGFightClientManager;->initBroadcast()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->wifiClientThread:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/join/mgps/helper/MGFightClientManager;Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/mgps/aidl/MGWifiClientThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->wifiClientThread:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lcom/join/mgps/helper/MGFightClientManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->enterRoomProcess:Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApHistoryList:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/join/mgps/helper/MGFightClientManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->enteringStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/helper/MGFightClientManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/join/mgps/helper/MGFightClientManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/join/mgps/helper/MGFightClientManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->afterApScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method private afterApScan()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-boolean v0, v0, Lcom/join/mgps/Util/WifiUtils;->isConnectToHotSpotRunning:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterApScan() called.processingScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/join/mgps/activity/ApFightActivity;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 6
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    const/4 v1, 0x1

    .line 8
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current ssid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 9
    iget-object v4, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    invoke-interface {v1, v0}, Lcom/join/mgps/callbacks/g;->c(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->startMonitorEnteringRoom()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_3

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 16
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 17
    iget-object v4, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 18
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 19
    iget-object v6, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v6}, Lcom/join/mgps/Util/WifiUtils;->getSignalStrength()I

    move-result v6

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apSSID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";BSSID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";capabilities="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";frequency="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";level="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ";signal="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    .line 21
    iget-object v7, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApHistoryList:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8fde\u63a5\u7f51\u7edc\u6210\u529f=apSSID="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    iget-object v4, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_8

    .line 25
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 26
    iput-boolean v3, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 27
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/join/mgps/callbacks/g;->e(Ljava/util/List;)V

    goto :goto_2

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v4, 0x1388

    if-ne v0, v3, :cond_9

    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    if-nez v0, :cond_9

    .line 29
    iput-boolean v3, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 30
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiApList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/join/mgps/callbacks/g;->c(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->startMonitorEnteringRoom()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/join/mgps/helper/MGFightClientManager;->lasConnectToHostspot:J

    sub-long/2addr v0, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_a

    .line 34
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$b;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 36
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/join/mgps/helper/MGFightClientManager;->lasScanTime:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-lez v6, :cond_a

    .line 37
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->startScan(Landroid/content/Context;)V

    .line 38
    iput-boolean v3, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->lasScanTime:J

    .line 40
    :cond_a
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    :cond_b
    :goto_3
    return-void
.end method

.method private afterApScan(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 44
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 45
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/WifiUtils;->startScan(Landroid/content/Context;)V

    return-void

    .line 46
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 47
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->fightConnectListener:Lcom/join/mgps/callbacks/g;

    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->c(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->startMonitorEnteringRoom()V

    .line 49
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/helper/MGFightClientManager$c;-><init>(Lcom/join/mgps/helper/MGFightClientManager;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    iput-boolean v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    return-void
.end method

.method private searchAP()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGFightClientManager;->registerBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v2}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    :cond_0
    if-ge v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    iget-boolean v1, v0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v0, v0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->a()V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->afterApScan()V

    return-void
.end method

.method private searchAP(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 15
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    iget-boolean v1, v0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    if-nez v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v0, v0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->OpenWifi()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 20
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/helper/MGFightClientManager;->afterApScan(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->a()V

    return-void
.end method

.method private startMonitorEnteringRoom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->enterRoomProcess:Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$d;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->enteringStartTime:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$d;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->enterRoomProcess:Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/Thread;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->enterRoomProcess:Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/helper/MGFightClientManager;->searchAP()V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/helper/MGFightClientManager;->registerBroadcast()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/helper/MGFightClientManager;->searchAP(Ljava/lang/String;)V

    return-void
.end method

.method public connectToChosen()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->running:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$e;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->a()V

    .line 6
    :try_start_0
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    invoke-virtual {v3, v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/aidl/MGWifiClientThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->wifiClientThread:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public connectToChosen(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to specifiedSSID ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/helper/MGFightClientManager$e;-><init>(Lcom/join/mgps/helper/MGFightClientManager;)V

    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mSearchApProcess:Lcom/join/mgps/helper/MGFightClientManager$e;

    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$e;->a()V

    .line 12
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->specifiedSSID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isEnteringRoom:Z

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->isConnected:Z

    .line 15
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    const/4 v1, 0x3

    const-string v2, "wt"

    const-string v3, "12345678"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/join/mgps/Util/WifiUtils;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/WifiUtils;->addNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->wifiClientThread:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->disConnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getmWifiapBroadcast()Lcom/join/mgps/broadcast/WifiapBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleConnectChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public initBroadcast()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/broadcast/WifiapBroadcast;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/broadcast/WifiapBroadcast;->a(Lcom/join/mgps/broadcast/WifiapBroadcast$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public registerBroadcast()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void
.end method

.method public scanResultsAvailable()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mGameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiapBroadcast:Lcom/join/mgps/broadcast/WifiapBroadcast;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public wifiStatusNotification()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/Util/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->scanResults:Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager;->mWifiUtils:Lcom/join/mgps/Util/WifiUtils;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/helper/MGFightClientManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/WifiUtils;->startScan(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 31
    .line 32
    return-void
.end method
