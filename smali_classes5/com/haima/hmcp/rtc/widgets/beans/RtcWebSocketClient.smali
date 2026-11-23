.class public Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/WebSocketSignalClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;
    }
.end annotation


# static fields
.field private static final PING_INTERVAL:I = 0x2

.field private static final PING_TIME_OUT_COUNT_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RtcWebSocketClient"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

.field private final mHandler:Landroid/os/Handler;

.field private mHostUri:Ljava/lang/String;

.field private mIsDisconnected:Z

.field private final mOptions:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

.field private mReConnectNum:I

.field private mReConnectRunable:Ljava/lang/Runnable;

.field private webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mIsDisconnected:Z

    .line 6
    .line 7
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectRunable:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "&proto=6&act=1"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mOptions:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

    .line 43
    .line 44
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectNum:I

    .line 45
    .line 46
    iput-object p4, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p2, "rtcmessage create mHostUri:"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "RtcWebSocketClient"

    .line 68
    .line 69
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/os/HandlerThread;

    .line 73
    .line 74
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 78
    .line 79
    .line 80
    new-instance p2, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->innerDisconnect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectNum:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectNum:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$108(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectNum:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectNum:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectRunable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mOptions:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method private innerDisconnect()V
    .locals 3

    .line 1
    const-string v0, "RtcWebSocketClient"

    .line 2
    .line 3
    const-string v1, "rtcmessage innerDisconnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mReConnectRunable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mIsDisconnected:Z

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "RtcWebSocketClient"

    .line 25
    .line 26
    const-string v2, "rtcmessage cutOff"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff(Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "RtcWebSocketClient"

    .line 37
    .line 38
    const-string v2, "rtcmessage cutOff end"

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 45
    .line 46
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketDisconnected(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0
.end method

.method private setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 6

    .line 1
    const-string v0, "RtcWebSocketClient"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 17
    .line 18
    const-string v2, "rtcmessage"

    .line 19
    .line 20
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$2;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$2;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mIsDisconnected:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    new-instance v1, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingInterval(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeout(I)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeoutCountMax(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;

    .line 73
    .line 74
    invoke-virtual {v3, v4, v5, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, " rtcmessage connect error = "

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_0
    iput-boolean v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mIsDisconnected:Z

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "rtcmessage connect to "

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 131
    .line 132
    const-string v1, "RTC Signal WebSocket connecting"

    .line 133
    .line 134
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketConnectStatus(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "rtcmessage disconnect "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->mHostUri:Ljava/lang/String;

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
    const-string v1, "RtcWebSocketClient"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->innerDisconnect()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method innerConnect()V
    .locals 2

    .line 1
    const-string v0, "RtcWebSocketClient"

    .line 2
    .line 3
    const-string v1, "rtcmessage innerConnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->connect()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "RtcWebSocketClient"

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "rtcmessage sendMessage "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method
