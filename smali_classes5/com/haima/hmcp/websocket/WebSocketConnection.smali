.class public Lcom/haima/hmcp/websocket/WebSocketConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/websocket/interfaces/IWebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketDiscardPolicy;,
        Lcom/haima/hmcp/websocket/WebSocketConnection$WebsocketThreadPoolExecutor;,
        Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD_WAIT_TIME_MAX_MS:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "com.haima.hmcp.websocket.WebSocketConnection"


# instance fields
.field private isReconnected:Z

.field private localIp:Ljava/lang/String;

.field private mActive:Z

.field private final mAutoPinger:Ljava/lang/Runnable;

.field private mBufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mHandShakeRunner:Ljava/lang/Runnable;

.field private mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mInetAddress:Ljava/net/InetAddress;

.field private mInetSocketAddress:Ljava/net/InetSocketAddress;

.field private mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

.field private mName:Ljava/lang/String;

.field private mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

.field private final mPingTimeout:Ljava/lang/Runnable;

.field private mPingerTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mPrevConnected:Z

.field private mReader:Lcom/haima/hmcp/websocket/WebSocketReader;

.field private mSocket:Ljava/net/Socket;

.field private final mSocketTimeoutRunnable:Ljava/lang/Runnable;

.field private mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mWebSocket:Lcom/haima/hmcp/websocket/Connection;

.field private mWriterThread:Ljava/util/concurrent/ExecutorService;

.field private mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

.field private mWsHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWsHost:Ljava/lang/String;

.field private mWsPath:Ljava/lang/String;

.field private mWsPort:I

.field private mWsQuery:Ljava/lang/String;

.field private mWsReslovedIp:Ljava/lang/String;

.field private mWsScheme:Ljava/lang/String;

.field private mWsSubprotocols:[Ljava/lang/String;

.field private mWsUri:Ljava/net/URI;

.field private onCloseCalled:Z

.field private pingTimeoutCount:I

.field private receivePongTime:J

.field private sendPing2Time:J

.field private sendPingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->isReconnected:Z

    .line 8
    .line 9
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$1;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeRunner:Ljava/lang/Runnable;

    .line 15
    .line 16
    new-instance v1, Lcom/haima/hmcp/websocket/a;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/a;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$2;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mAutoPinger:Ljava/lang/Runnable;

    .line 29
    .line 30
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$3;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$3;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingTimeout:Ljava/lang/Runnable;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ","

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "Created"

    .line 70
    .line 71
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p1, "WebSocketConnection context is null"

    .line 86
    .line 87
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->createHandler()V

    .line 91
    .line 92
    .line 93
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPrevConnected:Z

    .line 96
    .line 97
    return-void
.end method

.method private _connectFailed()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConfigUtil;->updateNetInfo(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsReslovedIp:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lcom/haima/hmcp/dns/DnsManager;->networkFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lt7/a;->e(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "WIFI"

    .line 36
    .line 37
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->mNetStatus:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lt7/a;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->localIp:Ljava/lang/String;

    .line 51
    .line 52
    :cond_1
    :goto_0
    const-string v0, "12521"

    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->localIp:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetAddress:Ljava/net/InetAddress;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/utils/Utils;->safeToSocketString(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/SocketAddress;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->countlyNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->getInstance()Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsReslovedIp:Ljava/lang/String;

    .line 74
    .line 75
    iget v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPort:I

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lcom/haima/hmcp/utils/ConnectivityCheck;->postCheckTask(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->lambda$new$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->_connectFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsReslovedIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsReslovedIp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPort:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->countlyNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1702(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1800(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/Socket;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setEnabledProtocolsOnSSLSocket(Ljava/net/Socket;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/websocket/WebSocketConnection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPingTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$2000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/websocket/WebSocketConnection;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPingTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2202(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mInetAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2400(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->createReader()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2500(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->createWriter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsQuery:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2800(Lcom/haima/hmcp/websocket/WebSocketConnection;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsSubprotocols:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lcom/haima/hmcp/websocket/WebSocketConnection;Lcom/haima/hmcp/websocket/messages/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3102(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPrevConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3202(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeRunner:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3402(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3500(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3700(Lcom/haima/hmcp/websocket/WebSocketConnection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->receivePongTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$3702(Lcom/haima/hmcp/websocket/WebSocketConnection;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->receivePongTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$3800(Lcom/haima/hmcp/websocket/WebSocketConnection;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeAndCleanup([Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3900(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->onClose(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingTimeout:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$4002(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4100(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeReaderThread(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4200(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$4300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingerTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingerTask:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mAutoPinger:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->failConnection(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->processAppMessage(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4800(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/Connection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWebSocket:Lcom/haima/hmcp/websocket/Connection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/io/BufferedOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/websocket/WebSocketConnection;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$808(Lcom/haima/hmcp/websocket/WebSocketConnection;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->isReconnected:Z

    .line 2
    .line 3
    return p0
.end method

.method private varargs closeAndCleanup([Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ","

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "closeAndCleanup"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeReaderThread(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :try_start_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeUnderlyingSocket([Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeWriterThread([Z)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    array-length v2, p1

    .line 97
    if-lez v2, :cond_1

    .line 98
    .line 99
    aget-boolean p1, p1, v0

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const/4 p1, 0x1

    .line 103
    :goto_1
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-direct {p0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeReaderThread(Z)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 109
    .line 110
    return-void
.end method

.method private closeReaderThread(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mReader:Lcom/haima/hmcp/websocket/WebSocketReader;

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketReader;->quit()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mReader:Lcom/haima/hmcp/websocket/WebSocketReader;

    .line 13
    .line 14
    const-wide/16 v2, 0xc8

    .line 15
    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "mReader already NULL"

    .line 90
    .line 91
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    return-void
.end method

.method private varargs closeUnderlyingSocket([Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$4;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget-boolean p1, p1, v1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const-wide/16 v1, 0xc8

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ","

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "is closed by join()"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method private varargs closeWriterThread([Z)V
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-boolean p1, p1, v2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "is shut down: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    .line 82
    const-wide/16 v3, 0x5

    .line 83
    .line 84
    invoke-interface {p1, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 85
    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, "is terminated: "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    :goto_1
    return-void
.end method

.method private connect()V
    .locals 5

    .line 39
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/haima/hmcp/dns/DnsManager;->mOpenAsyncParser:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start getHostAddressListASync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/haima/hmcp/websocket/WebSocketConnection$6;

    invoke-direct {v4, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$6;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/dns/DnsManager;->getHostAddressListASync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start getHostAddressListSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method private countlyNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/websocket/messages/CountlyMessage;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/haima/hmcp/websocket/messages/CountlyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private createHandler()V
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/websocket/utils/AndroidThreadMessenger;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 7
    .line 8
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$8;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$8;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->setOnMessageListener(Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private createReader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/websocket/WebSocketReader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 8
    .line 9
    const-string v4, "WebSocketReader"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/websocket/WebSocketReader;-><init>(Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;Ljava/net/Socket;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mReader:Lcom/haima/hmcp/websocket/WebSocketReader;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ","

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "WS reader created and started"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private createWriter()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/haima/hmcp/websocket/WebSocketConnection$WebsocketThreadPoolExecutor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    new-instance v8, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketDiscardPolicy;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v8, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketDiscardPolicy;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection$1;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v9

    .line 25
    invoke-direct/range {v0 .. v8}, Lcom/haima/hmcp/websocket/WebSocketConnection$WebsocketThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 26
    .line 27
    .line 28
    iput-object v9, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getMaxFramePayloadSize()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/lit8 v2, v2, 0xe

    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 50
    .line 51
    new-instance v0, Lcom/haima/hmcp/websocket/Connection;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/haima/hmcp/websocket/Connection;-><init>(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWebSocket:Lcom/haima/hmcp/websocket/Connection;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ","

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "WS writer created and started"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private failConnection(ILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ","

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "fail connection [code = "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ", reason = "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeReaderThread(Z)V

    .line 63
    .line 64
    .line 65
    new-array v3, v0, [Z

    .line 66
    .line 67
    invoke-direct {p0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeWriterThread([Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    :try_start_0
    new-array v0, v0, [Z

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeUnderlyingSocket([Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v1, v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "Socket already closed"

    .line 150
    .line 151
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeReaderThread(Z)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->onClose(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    sget-object p2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string p2, "Worker threads stopped"

    .line 192
    .line 193
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method private getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/haima/hmcp/websocket/WebSocketConnection$10;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection$10;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    return-object p1
.end method

.method private getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    return-object p3
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mSocketTimeoutRunnable run(),mName="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v1, "mSocketTimeoutRunnable run  mName="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " mSocket="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "12200"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->_connectFailed()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 63
    .line 64
    new-instance v1, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 65
    .line 66
    const-string v2, "WebSocket connect timeout"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private onClose(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->scheduleReconnect()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingerTask:Ljava/util/concurrent/ScheduledFuture;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 28
    .line 29
    .line 30
    :cond_3
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    .line 36
    .line 37
    :cond_4
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    .line 39
    const-string v4, ","

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

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
    sget-object v5, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v5, "mSocketTimeoutTask cancel"

    .line 77
    .line 78
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    iput-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    :cond_6
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 92
    .line 93
    invoke-interface {v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->cleanup()V

    .line 94
    .line 95
    .line 96
    iput-boolean v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 97
    .line 98
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 99
    .line 100
    if-eqz v2, :cond_8

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    const/4 p1, 0x7

    .line 105
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onClose(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    invoke-interface {v2, p1, p2}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {p2, v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    sget-object p2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string p2, "mWsHandler already NULL"

    .line 183
    .line 184
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    iput v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->pingTimeoutCount:I

    .line 188
    .line 189
    return-void
.end method

.method private processAppMessage(Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/PingError;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/haima/hmcp/websocket/messages/PingError;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ","

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "Ping-Debug PingError send SEND_PING_FAIL"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 52
    .line 53
    sget-object v2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->SEND_PING_FAIL:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/haima/hmcp/websocket/messages/PingError;->reason:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v2, v3}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 61
    .line 62
    new-instance v2, Lcom/haima/hmcp/websocket/messages/Close;

    .line 63
    .line 64
    const/4 v3, 0x7

    .line 65
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/PingError;->reason:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v2, v3, p1}, Lcom/haima/hmcp/websocket/messages/Close;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "Notify_COSE_RECONNECT"

    .line 74
    .line 75
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private scheduleReconnect()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getReconnectInterval()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPrevConnected:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ","

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "Reconnection scheduled"

    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 60
    .line 61
    new-instance v3, Lcom/haima/hmcp/websocket/WebSocketConnection$7;

    .line 62
    .line 63
    invoke-direct {v3, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$7;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 64
    .line 65
    .line 66
    int-to-long v4, v0

    .line 67
    invoke-interface {v2, v3, v4, v5}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->postDelayed(Ljava/lang/Runnable;J)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return v1
.end method

.method private declared-synchronized sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWriterThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$9;

    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection$9;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Lcom/haima/hmcp/websocket/messages/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setEnabledProtocolsOnSSLSocket(Ljava/net/Socket;[Ljava/lang/String;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 6
    .line 7
    sget-boolean v0, Lcom/haima/hmcp/Constants;->IS_DEBUG:Z

    .line 8
    .line 9
    const-string v1, ","

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "TLS Support Protocols: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "TLS Enable Protocols before set: "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-boolean p2, Lcom/haima/hmcp/Constants;->IS_DEBUG:Z

    .line 129
    .line 130
    if-eqz p2, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v1, "TLS Enable Protocols after set: "

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/WebSocketException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/WebSocketException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V

    return-void
.end method

.method public connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/WebSocketException;
        }
    .end annotation

    .line 3
    new-instance v4, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-direct {v4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;",
            "Lcom/haima/hmcp/websocket/types/WebSocketOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/WebSocketException;
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_c

    .line 5
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    .line 6
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsScheme:Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string v0, "ws"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "wss"

    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "ws"

    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x50

    .line 10
    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPort:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1bb

    .line 11
    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPort:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPort:I

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHost:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPath:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "/"

    .line 17
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsPath:Ljava/lang/String;

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsQuery:Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsQuery:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_4
    :try_start_2
    iput-object p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsSubprotocols:[Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHeaders:Ljava/util/Map;

    .line 23
    iput-object p3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    if-nez p1, :cond_8

    if-nez p4, :cond_7

    .line 25
    new-instance p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-direct {p1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    goto :goto_5

    .line 26
    :cond_7
    new-instance p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-direct {p1, p4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_9

    .line 27
    new-instance p1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-direct {p1, p4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 28
    :cond_9
    :goto_5
    sget-object p1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pintInterval = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", pingTimeout = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 29
    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeout()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", timeoutCountMax = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mOptions:Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeoutCountMax()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 33
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 35
    :cond_a
    :try_start_3
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    const-string p2, "no host specified in WebSocket URI"

    invoke-direct {p1, p2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_b
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    const-string p2, "unsupported scheme for WebSocket URI"

    invoke-direct {p1, p2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :catch_0
    :try_start_4
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    const-string p2, "invalid WebSocket URI"

    invoke-direct {p1, p2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_c
    new-instance p1, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Lcom/haima/hmcp/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cutOff()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingerTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mSocketTimeoutTask cancel"

    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Z

    .line 10
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeAndCleanup([Z)V

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 13
    iput-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    invoke-interface {v0}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->cleanup()V

    .line 15
    iput-boolean v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 16
    iput-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cutOff(Z)V
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPingerTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mHandShakeTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocketTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mSocketTimeoutTask cancel"

    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-array v0, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v0, v2

    .line 27
    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->closeAndCleanup([Z)V

    .line 28
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 29
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 30
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    invoke-interface {p1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->cleanup()V

    .line 32
    iput-boolean v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPingPongCostTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->receivePongTime:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendPingTime:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mSocket:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public reconnect()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsUri:Ljava/net/URI;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mMessenger:Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 12
    .line 13
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/haima/hmcp/websocket/WebSocketConnection$5;-><init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x258

    .line 19
    .line 20
    invoke-interface {v0, v1, v2, v3}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public sendClose()V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendClose(I)V

    return-void
.end method

.method public sendClose(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendClose(ILjava/lang/String;)V

    return-void
.end method

.method public sendClose(ILjava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Close;

    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/websocket/messages/Close;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->onCloseCalled:Z

    .line 5
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mActive:Z

    .line 6
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mPrevConnected:Z

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/websocket/messages/TextMessage;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/websocket/messages/TextMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    return-void
.end method

.method public sendMessage([BZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    invoke-direct {p2, p1}, Lcom/haima/hmcp/websocket/messages/BinaryMessage;-><init>([B)V

    invoke-direct {p0, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    invoke-direct {p2, p1}, Lcom/haima/hmcp/websocket/messages/RawTextMessage;-><init>([B)V

    invoke-direct {p0, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    :goto_0
    return-void
.end method

.method public sendPing()V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Ping;

    invoke-direct {v0}, Lcom/haima/hmcp/websocket/messages/Ping;-><init>()V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mWsHandler:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->SEND_PING_SUCCESS:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendPing([B)V
    .locals 1

    .line 4
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Ping;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/websocket/messages/Ping;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    return-void
.end method

.method public sendPong()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Pong;

    invoke-direct {v0}, Lcom/haima/hmcp/websocket/messages/Pong;-><init>()V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    return-void
.end method

.method public sendPong([B)V
    .locals 1

    .line 2
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Pong;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/websocket/messages/Pong;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Lcom/haima/hmcp/websocket/messages/Message;)V

    return-void
.end method

.method public setReconnected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->isReconnected:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->getTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection;->mTag:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method
