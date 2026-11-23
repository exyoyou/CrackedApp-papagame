.class public Lorg/hmwebrtc/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/NetworkChangeDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lorg/hmwebrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;,
        Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;
    }
.end annotation


# static fields
.field private static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"

.field private static final getWifiSSIDSwitchOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static getWifiSSIDSwitchOnCloudConfig:Z

.field private static includeWifiDirect:Z

.field private static final userCustomizedTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private connectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

.field private connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final observer:Lorg/hmwebrtc/NetworkChangeDetector$Observer;

.field private wifiDirectManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v2, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->userCustomizedTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sput-boolean v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOnCloudConfig:Z

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->observer:Lorg/hmwebrtc/NetworkChangeDetector$Observer;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 14
    .line 15
    new-instance v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 16
    .line 17
    invoke-direct {v0, p2}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    .line 41
    .line 42
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    .line 48
    .line 49
    sget-boolean v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->includeWifiDirect:Z

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 54
    .line 55
    invoke-direct {v0, p1, p2}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lorg/hmwebrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 59
    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->registerReceiver()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 p2, 0x0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance p1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 75
    .line 76
    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string p1, "NetworkMonitorAutoDetect"

    .line 84
    .line 85
    const-string v0, "Unable to obtain permission to request a cellular network."

    .line 86
    .line 87
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    move-object p1, p2

    .line 91
    :goto_0
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 92
    .line 93
    new-instance p1, Lorg/hmwebrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    .line 94
    .line 95
    invoke-direct {p1, p0, p2}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/hmwebrtc/NetworkMonitorAutoDetect;Lorg/hmwebrtc/NetworkMonitorAutoDetect$1;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 99
    .line 100
    iget-object p2, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iput-object p2, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 107
    .line 108
    iput-object p2, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 109
    .line 110
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/NetworkMonitorAutoDetect;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getGetWifiSSIDSwitchOn()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Landroid/net/Network;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic access$200(Lorg/hmwebrtc/NetworkMonitorAutoDetect;)Lorg/hmwebrtc/NetworkChangeDetector$Observer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->observer:Lorg/hmwebrtc/NetworkChangeDetector$Observer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/hmwebrtc/NetworkMonitorAutoDetect;)Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getUnderlyingConnectionTypeForVpn(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private connectionTypeChanged(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Network connectivity changed, type is: "

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectionType:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "NetworkMonitorAutoDetect"

    .line 46
    .line 47
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->observer:Lorg/hmwebrtc/NetworkChangeDetector$Observer;

    .line 51
    .line 52
    invoke-interface {p1, v0}, Lorg/hmwebrtc/NetworkChangeDetector$Observer;->onConnectionTypeChanged(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static getConnectionType(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    .line 14
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result p0

    .line 15
    invoke-static {v0, v1, p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionType(ZII)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 2
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_VPN:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_ETHERNET:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 8
    :pswitch_0
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_5G:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 10
    :pswitch_2
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 11
    :pswitch_3
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_3G:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 12
    :pswitch_4
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_2G:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGetWifiSSIDSwitchOn()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->userCustomizedTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    sget-boolean v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOnCloudConfig:Z

    .line 17
    .line 18
    return v0
.end method

.method private static getUnderlyingConnectionTypeForVpn(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkTypeForVpn()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkSubtypeForVpn()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {v0, v1, p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private getWifiSSID(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getGetWifiSSIDSwitchOn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

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
    invoke-static {p0}, Lorg/hmwebrtc/a0;->a(Landroid/net/Network;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long v0, p0

    .line 21
    return-wide v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setGetWifiSSIDSwitchOn(Z)I
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->userCustomizedTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static setIncludeWifiDirect(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->includeWifiDirect:Z

    .line 2
    .line 3
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-direct {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->unregisterReceiver()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getActiveNetworkList()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v1
.end method

.method public getCurrentConnectionType()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCurrentNetworkState()Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 2
    .line 3
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectionTypeChanged(Lorg/hmwebrtc/NetworkMonitorAutoDetect$NetworkState;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
