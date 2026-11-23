.class public Lcom/haima/hmcp/business/WebSocketManager;
.super Lcom/haima/hmcp/business/BaseManager;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IWebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;,
        Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;,
        Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;,
        Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;,
        Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_WS_CONNECT_TIME_OUT:I = 0x1770

.field public static final MAX_FRAME_PAYLOAD_SIZE:I = 0x20000

.field public static final MAX_MESSAGE_PAYLOAD_SIZE:I = 0x20000

.field public static final PING_INTERVAL:I = 0xa

.field public static final PING_TIME_OUT_COUNT_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WebSocketManager"


# instance fields
.field private accessHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

.field private isAccessStopByUser:Z

.field private isDownloadStopByUser:Z

.field private isInputStopByUserWsServer:Z

.field private isReconnect:Z

.field private isUploadStopByUser:Z

.field private mAccessObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/listeners/WebSocketObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessReconnectCount:I

.field private mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

.field private mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private mFramePayloadMaxSize:I

.field private mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private mMessagePayloadMaxSize:I

.field private mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/WebSocketObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSaasLinkTimeOut:I

.field private mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

.field private mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

.field private mWebSocketHeartBeatInterval:I

.field private mWebSocketHeartBeatTimeOutCountMax:I

.field private mWsLinkTimeOut:I

.field private mWsServerObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/listeners/WebSocketObserver;",
            ">;"
        }
    .end annotation
.end field

.field private wsServerHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/BaseManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 17
    .line 18
    const/16 p1, 0xa

    .line 19
    .line 20
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatInterval:I

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatTimeOutCountMax:I

    .line 24
    .line 25
    const/high16 p1, 0x20000

    .line 26
    .line 27
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mFramePayloadMaxSize:I

    .line 28
    .line 29
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mMessagePayloadMaxSize:I

    .line 30
    .line 31
    const/16 p1, 0x1770

    .line 32
    .line 33
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mSaasLinkTimeOut:I

    .line 34
    .line 35
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsLinkTimeOut:I

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessReconnectCount:I

    .line 39
    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/WebSocketManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isReconnect:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/business/WebSocketManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isUploadStopByUser:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/business/WebSocketManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isReconnect:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/business/WebSocketManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isDownloadStopByUser:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/WebSocketManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isAccessStopByUser:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/business/WebSocketManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isAccessStopByUser:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/websocket/WebSocketConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->accessHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/business/WebSocketManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/business/WebSocketManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isInputStopByUserWsServer:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/business/WebSocketManager;)Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/WebSocketManager;->wsServerHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 2
    .line 3
    return-object p0
.end method

.method private setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public cleanObserver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public connect2Access(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "========connect2Access========"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatInterval:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingInterval(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatInterval:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeout(I)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatTimeOutCountMax:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeoutCountMax(I)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mSaasLinkTimeOut:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setSocketConnectTimeout(I)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/WebSocketManager;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 56
    .line 57
    const-string v2, "access"

    .line 58
    .line 59
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setReconnected(Z)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 86
    .line 87
    invoke-direct {v1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->accessHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, v2, v2}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setPingPong(II)V

    .line 98
    .line 99
    .line 100
    :cond_1
    iput-boolean v2, p0, Lcom/haima/hmcp/business/WebSocketManager;->isAccessStopByUser:Z

    .line 101
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 103
    .line 104
    new-instance v2, Lcom/haima/hmcp/business/WebSocketManager$1;

    .line 105
    .line 106
    invoke-direct {v2, p0, p2}, Lcom/haima/hmcp/business/WebSocketManager$1;-><init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleAccessConnectionHandler;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1, v2, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p2

    .line 114
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v1, "WebSocketManager::connect2Access::"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v2, "connect2Access Exception"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p2, ", accessUrl="

    .line 161
    .line 162
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    return-void
.end method

.method public connect2Download(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "========connect2Download========"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isDownloadStopByUser:Z

    .line 25
    .line 26
    new-instance v5, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v5}, Lcom/haima/hmcp/business/WebSocketManager;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 39
    .line 40
    const-string v2, "download"

    .line 41
    .line 42
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    new-array v3, v2, [Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "haima-cloud-protocol"

    .line 77
    .line 78
    aput-object v2, v3, v0

    .line 79
    .line 80
    new-instance v4, Lcom/haima/hmcp/business/WebSocketManager$4;

    .line 81
    .line 82
    invoke-direct {v4, p0, p2}, Lcom/haima/hmcp/business/WebSocketManager$4;-><init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v2, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v0, "WebSocketManager::connect2Download::"

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public connect2InstanceWsServer(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "timeframe--========connect2InstanceWsServer========"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isInputStopByUserWsServer:Z

    .line 25
    .line 26
    new-instance v5, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingInterval(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeout(I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeoutCountMax(I)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mFramePayloadMaxSize:I

    .line 44
    .line 45
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setMaxFramePayloadSize(I)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mMessagePayloadMaxSize:I

    .line 49
    .line 50
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setMaxMessagePayloadSize(I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsLinkTimeOut:I

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setSocketConnectTimeout(I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v5}, Lcom/haima/hmcp/business/WebSocketManager;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 66
    .line 67
    const-string v2, "screen"

    .line 68
    .line 69
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 75
    .line 76
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setReconnected(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "connect2InstanceWsServer already connect\uff1a"

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    new-instance v1, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 118
    .line 119
    invoke-direct {v1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->wsServerHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 123
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 125
    .line 126
    new-array v3, v2, [Ljava/lang/String;

    .line 127
    .line 128
    const-string v2, "haima-cloud-protocol"

    .line 129
    .line 130
    aput-object v2, v3, v0

    .line 131
    .line 132
    new-instance v4, Lcom/haima/hmcp/business/WebSocketManager$2;

    .line 133
    .line 134
    invoke-direct {v4, p0, p2}, Lcom/haima/hmcp/business/WebSocketManager$2;-><init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;)V

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    move-object v2, p1

    .line 139
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v0, "timeframe--WebSocketManager::connect2InstanceWsServer::"

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_0
    return-void
.end method

.method public connect2Transfer(Ljava/lang/String;Lcom/haima/hmcp/business/TransferHelper;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, " Transfer connect2Transfer  url ="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/business/TransferHelper;->setWsUri(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    .line 31
    .line 32
    iget p2, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsLinkTimeOut:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/business/TransferHelper;->setConnectTimeOut(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/haima/hmcp/business/TransferHelper;->connectInternal()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public connect2Upload(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "========connect2Upload========"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->isUploadStopByUser:Z

    .line 25
    .line 26
    new-instance v5, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mMessagePayloadMaxSize:I

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setMaxMessagePayloadSize(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v5}, Lcom/haima/hmcp/business/WebSocketManager;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 44
    .line 45
    const-string v2, "upload"

    .line 46
    .line 47
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    new-array v3, v2, [Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "haima-cloud-protocol"

    .line 82
    .line 83
    aput-object v2, v3, v0

    .line 84
    .line 85
    new-instance v4, Lcom/haima/hmcp/business/WebSocketManager$3;

    .line 86
    .line 87
    invoke-direct {v4, p0, p2}, Lcom/haima/hmcp/business/WebSocketManager$3;-><init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v2, p1

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v0, "WebSocketManager::connect2Upload::"

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "=== connectWsServer disconnect() ==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/business/WebSocketManager;->disconnect2Access()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/business/WebSocketManager;->disconnect2InstanceWsServer()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/haima/hmcp/business/WebSocketManager;->disconnect2Upload()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/business/WebSocketManager;->disconnect2Download()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/haima/hmcp/business/WebSocketManager;->disconnect2Transfer()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public disconnect2Access()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===disconnect2Access==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v2}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setPingPong(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isAccessStopByUser:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    .line 32
    .line 33
    .line 34
    const-string v1, "===mAccessSocket  disconnect==="

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public disconnect2Download()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===disconnect2Download==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isDownloadStopByUser:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    .line 24
    .line 25
    .line 26
    const-string v1, "===mDownloadSocket  disconnect==="

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public disconnect2InstanceWsServer()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "===disconnect2InstanceWsServer=== "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isInputStopByUserWsServer:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    .line 41
    .line 42
    .line 43
    const-string v1, "=== connectWsServer mInstanceSocket  disconnect==="

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public disconnect2Transfer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/TransferHelper;->innerDisconnect()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public disconnect2Upload()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===disconnect2Upload==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->isUploadStopByUser:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    .line 24
    .line 25
    .line 26
    const-string v1, "===mUploadSocket  disconnect==="

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 19
    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_2
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_3
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_TRANSFER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 54
    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/haima/hmcp/business/TransferHelper;->isConnected()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_4
    const/4 p1, 0x0

    .line 67
    return p1
.end method

.method public isHearBeatNormal(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->wsServerHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->isNormal()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    return v1

    .line 20
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 21
    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->accessHeartBeat:Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketHeartBeatRecorder;->isNormal()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_1
    return v1

    .line 37
    :cond_3
    return v2
.end method

.method public removeObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/listeners/WebSocketObserver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessObservers:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsServerObservers:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public sendBinaryMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;[B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "sendBinaryMessage==send success:  "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    array-length v2, p2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 40
    .line 41
    invoke-virtual {p1, p2, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage([BZ)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "mInstanceSocketWsServer==send failed"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 54
    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 68
    .line 69
    invoke-virtual {p1, p2, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage([BZ)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p2, "mUploadSocket==send failed"

    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v0, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 82
    .line 83
    if-ne p1, v0, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 96
    .line 97
    invoke-virtual {p1, p2, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage([BZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    const-string p2, "mDownloadSocket==send failed"

    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_0
    return-void
.end method

.method public sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/haima/hmcp/business/WebSocketManager;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;Z)V

    return-void
.end method

.method public sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;Z)V
    .locals 2

    .line 2
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_TRANSFER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    if-ne p1, p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/haima/hmcp/business/TransferHelper;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mTransferHelper:Lcom/haima/hmcp/business/TransferHelper;

    invoke-virtual {p3, p2}, Lcom/haima/hmcp/business/TransferHelper;->enviarMessage(Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    if-eqz p3, :cond_1

    .line 6
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    const-string v1, "mTransferHelper connection error"

    invoke-interface {p3, v0, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onError(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    if-ne p1, p3, :cond_3

    .line 8
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mAccessSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {p3, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    if-eqz p3, :cond_3

    .line 11
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    const-string v1, "mAccessSocket connection error"

    invoke-interface {p3, v0, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onError(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 12
    :cond_3
    :goto_1
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    if-ne p1, p3, :cond_5

    .line 13
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 14
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws server sendTextMessage==send success:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mInstanceSocketWsServer:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {p3, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    const-string v0, "mInstanceSocketWsServer==send failed"

    invoke-static {p3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5
    :goto_2
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    if-ne p1, p3, :cond_7

    .line 18
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 19
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload sendTextMessage==send success:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p3, p0, Lcom/haima/hmcp/business/WebSocketManager;->mUploadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {p3, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_6
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    const-string v0, "mUploadSocket==send failed"

    invoke-static {p3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_7
    :goto_3
    sget-object p3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_DOWNLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    if-ne p1, p3, :cond_9

    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download sendTextMessage==send success:  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mDownloadSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {p1, p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_8
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager;->TAG:Ljava/lang/String;

    const-string p2, "mDownloadSocket==send failed"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setCloudPlayInfo(Lcom/haima/hmcp/beans/CloudPlayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mCloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/beans/WebSocketConfig;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    new-instance v0, Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/haima/hmcp/beans/WebSocketConfig;-><init>(Lcom/haima/hmcp/beans/WebSocketConfig;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketConfig:Lcom/haima/hmcp/beans/WebSocketConfig;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getAccessPingInterval()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getAccessPingTimeoutCountMax()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getFramePayloadMaxSize()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getMessagePayloadMaxSize()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getSaasLinkTimeOutSec()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/WebSocketConfig;->getWsLinkTimeOutSec()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gtz v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0xa

    .line 45
    .line 46
    :cond_1
    iput v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatInterval:I

    .line 47
    .line 48
    if-gtz v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    :cond_2
    iput v1, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWebSocketHeartBeatTimeOutCountMax:I

    .line 52
    .line 53
    const/high16 v0, 0x20000

    .line 54
    .line 55
    const/16 v1, 0x80

    .line 56
    .line 57
    if-gt v2, v1, :cond_3

    .line 58
    .line 59
    const/high16 v2, 0x20000

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    mul-int/lit16 v2, v2, 0x400

    .line 63
    .line 64
    :goto_0
    iput v2, p0, Lcom/haima/hmcp/business/WebSocketManager;->mFramePayloadMaxSize:I

    .line 65
    .line 66
    if-gt v3, v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    mul-int/lit16 v0, v3, 0x400

    .line 70
    .line 71
    :goto_1
    iput v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mMessagePayloadMaxSize:I

    .line 72
    .line 73
    const/16 v0, 0x1770

    .line 74
    .line 75
    if-gtz v4, :cond_5

    .line 76
    .line 77
    const/16 v4, 0x1770

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    mul-int/lit16 v4, v4, 0x3e8

    .line 81
    .line 82
    :goto_2
    iput v4, p0, Lcom/haima/hmcp/business/WebSocketManager;->mSaasLinkTimeOut:I

    .line 83
    .line 84
    if-gtz p1, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    mul-int/lit16 v0, p1, 0x3e8

    .line 88
    .line 89
    :goto_3
    iput v0, p0, Lcom/haima/hmcp/business/WebSocketManager;->mWsLinkTimeOut:I

    .line 90
    .line 91
    :goto_4
    return-void
.end method
