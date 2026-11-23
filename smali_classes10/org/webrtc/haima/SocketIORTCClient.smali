.class public Lorg/webrtc/haima/SocketIORTCClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/AppRTCClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;,
        Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketIORTCClient"


# instance fields
.field private connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

.field private events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

.field private final handler:Landroid/os/Handler;

.field private hmOpt:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

.field private httpClient:Lokhttp3/OkHttpClient;

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private mReleasing:Z

.field private mSocket:Lio/socket/client/Socket;

.field public onSocketIOMessage:Lio/socket/emitter/Emitter$Listener;

.field private opt:Lio/socket/client/IO$Options;

.field private roomState:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/AppRTCClient$SignalingEvents;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->iceServers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lorg/webrtc/haima/SocketIORTCClient$18;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/webrtc/haima/SocketIORTCClient$18;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->onSocketIOMessage:Lio/socket/emitter/Emitter$Listener;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 19
    .line 20
    sget-object p1, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->INIT:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->roomState:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 23
    .line 24
    new-instance p1, Landroid/os/HandlerThread;

    .line 25
    .line 26
    const-string v0, "SocketIORTCClient"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/webrtc/haima/SocketIORTCClient;->hmOpt:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->mReleasing:Z

    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/SocketIORTCClient;->isReleasing(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/SocketIORTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/SocketIORTCClient;->connectToRoomInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/SocketIORTCClient;->reportError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/IceCandidate;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/SocketIORTCClient;->toJsonCandidate(Lorg/hmwebrtc/IceCandidate;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1200(Lorg/webrtc/haima/SocketIORTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/SocketIORTCClient;->collectSignalParameters()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/haima/SocketIORTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/SocketIORTCClient;->disconnectFromRoomInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/haima/SocketIORTCClient;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/SocketIORTCClient;->hmOpt:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/SocketIORTCClient;->roomState:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lorg/webrtc/haima/SocketIORTCClient;Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/SocketIORTCClient;->stateChanged(Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/webrtc/haima/SocketIORTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method private collectSignalParameters()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->coturnServer:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ","

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_4

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string v4, "stun:"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const-string v4, "stun"

    .line 37
    .line 38
    const-string v5, "turn"

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_1
    const-string v4, "@"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    const-string v4, "turn:"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    const-string v4, "transport=tcp"

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-direct {p0, v4}, Lorg/webrtc/haima/SocketIORTCClient;->createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v5, p0, Lorg/webrtc/haima/SocketIORTCClient;->iceServers:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v5, "add conturnServerUrl = "

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "SocketIORTCClient"

    .line 102
    .line 103
    invoke-static {v4, v3}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->iceServers:Ljava/util/List;

    .line 110
    .line 111
    invoke-direct {p0, v0}, Lorg/webrtc/haima/SocketIORTCClient;->signalingParametersReady(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private connectToRoomInternal()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Connect to signal server: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->signalServer:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", coturn server: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 24
    .line 25
    iget-object v1, v1, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->coturnServer:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "SocketIORTCClient"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 40
    .line 41
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$3;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$3;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 58
    .line 59
    invoke-static {v0}, Lio/socket/client/IO;->setDefaultOkHttpWebSocketFactory(Lokhttp3/WebSocket$Factory;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lio/socket/client/IO$Options;

    .line 63
    .line 64
    invoke-direct {v0}, Lio/socket/client/IO$Options;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    new-array v2, v1, [Ljava/lang/String;

    .line 69
    .line 70
    const-string v3, "websocket"

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aput-object v3, v2, v4

    .line 74
    .line 75
    iput-object v2, v0, Lio/socket/engineio/client/Socket$Options;->transports:[Ljava/lang/String;

    .line 76
    .line 77
    iput-boolean v1, v0, Lio/socket/client/IO$Options;->forceNew:Z

    .line 78
    .line 79
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->hmOpt:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 80
    .line 81
    iget-wide v2, v1, Lio/socket/client/Manager$Options;->timeout:J

    .line 82
    .line 83
    iput-wide v2, v0, Lio/socket/client/Manager$Options;->timeout:J

    .line 84
    .line 85
    iget-wide v2, v1, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    .line 86
    .line 87
    iput-wide v2, v0, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    .line 88
    .line 89
    iget v1, v1, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    .line 90
    .line 91
    iput v1, v0, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    .line 92
    .line 93
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 94
    .line 95
    iget-object v1, v1, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->signalServer:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1, v0}, Lio/socket/client/IO;->socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    const-string v1, "onMessage"

    .line 104
    .line 105
    iget-object v2, p0, Lorg/webrtc/haima/SocketIORTCClient;->onSocketIOMessage:Lio/socket/emitter/Emitter$Listener;

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 111
    .line 112
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$4;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$4;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 115
    .line 116
    .line 117
    const-string v2, "connect"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 123
    .line 124
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$5;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$5;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "disconnect"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 135
    .line 136
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$6;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$6;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 139
    .line 140
    .line 141
    const-string v2, "error"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 147
    .line 148
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$7;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$7;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 151
    .line 152
    .line 153
    const-string v2, "connect_error"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 159
    .line 160
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$8;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$8;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 163
    .line 164
    .line 165
    const-string v2, "reconnect"

    .line 166
    .line 167
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 171
    .line 172
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$9;

    .line 173
    .line 174
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$9;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 175
    .line 176
    .line 177
    const-string v2, "reconnecting"

    .line 178
    .line 179
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 183
    .line 184
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$10;

    .line 185
    .line 186
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$10;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 187
    .line 188
    .line 189
    const-string v2, "reconnect_failed"

    .line 190
    .line 191
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 195
    .line 196
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$11;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$11;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 199
    .line 200
    .line 201
    const-string v2, "reconnect_error"

    .line 202
    .line 203
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 207
    .line 208
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$12;

    .line 209
    .line 210
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$12;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 211
    .line 212
    .line 213
    const-string v2, "connecting"

    .line 214
    .line 215
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 219
    .line 220
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$13;

    .line 221
    .line 222
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$13;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "connect_timeout"

    .line 226
    .line 227
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 228
    .line 229
    .line 230
    sget-object v0, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CONNECTING:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 231
    .line 232
    invoke-direct {p0, v0}, Lorg/webrtc/haima/SocketIORTCClient;->stateChanged(Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 236
    .line 237
    invoke-virtual {v0}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 251
    .line 252
    iget-object v2, v2, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->signalServer:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, ","

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const/16 v1, 0x351d

    .line 274
    .line 275
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method private createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Add conturnServerUrl = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SocketIORTCClient"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lorg/webrtc/haima/SocketIORTCClient;->parseIceTransportType(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v2, Lorg/hmwebrtc/PeerConnection$IceTransportsType;->ALL:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 28
    .line 29
    if-ne v2, v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Lorg/hmwebrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    const-string v0, "@"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    array-length v2, v0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    if-gt v2, v4, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Fatal error, coturn server url is error: "

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v3

    .line 73
    :cond_1
    aget-object v2, v0, v4

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v5, ":"

    .line 80
    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    array-length v5, v2

    .line 86
    if-gt v5, v4, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "Fatal error, coturn server auth is error: "

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v3

    .line 109
    :cond_2
    new-instance p1, Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    aget-object v0, v0, v1

    .line 113
    .line 114
    aget-object v1, v2, v1

    .line 115
    .line 116
    aget-object v2, v2, v4

    .line 117
    .line 118
    invoke-direct {p1, v0, v1, v2}, Lorg/hmwebrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method

.method private disconnectFromRoomInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/socket/client/Socket;->close()Lio/socket/client/Socket;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private isReleasing(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mReleasing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 6
    .line 7
    const-string v1, ": SocketIO is releasing."

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v2}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "SocketIORTCClient"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-boolean p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->mReleasing:Z

    .line 50
    .line 51
    return p1
.end method

.method private static jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method private parseIceTransportType(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceTransportsType;
    .locals 1

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "turn:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lorg/hmwebrtc/PeerConnection$IceTransportsType;->RELAY:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lorg/hmwebrtc/PeerConnection$IceTransportsType;->ALL:Lorg/hmwebrtc/PeerConnection$IceTransportsType;

    .line 21
    .line 22
    return-object p1
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "SocketIORTCClient"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$19;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/SocketIORTCClient$19;-><init>(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private signalingParametersReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onConnectedToRoom(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onConnectedToRoom-->"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private stateChanged(Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "room connections state from: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->roomState:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " to "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SocketIORTCClient"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->roomState:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 34
    .line 35
    return-void
.end method

.method private toJsonCandidate(Lorg/hmwebrtc/IceCandidate;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lorg/hmwebrtc/IceCandidate;->sdpMLineIndex:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "label"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/SocketIORTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "id"

    .line 18
    .line 19
    iget-object v2, p1, Lorg/hmwebrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "candidate"

    .line 25
    .line 26
    iget-object p1, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Lorg/webrtc/haima/SocketIORTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public connectToRoom(Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->connectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lorg/webrtc/haima/SocketIORTCClient$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/webrtc/haima/SocketIORTCClient$1;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public disconnectFromRoom()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lorg/webrtc/haima/SocketIORTCClient$2;

    .line 10
    .line 11
    invoke-direct {v2, p0, v0}, Lorg/webrtc/haima/SocketIORTCClient$2;-><init>(Lorg/webrtc/haima/SocketIORTCClient;Ljava/util/concurrent/CountDownLatch;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-wide/16 v2, 0x2

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "Disconnect from Signal exception: "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v1, v0}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public preRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SocketIORTCClient"

    .line 6
    .line 7
    const-string v1, "Remove all callbacks in SocketIO."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/socket/emitter/Emitter;->off()Lio/socket/emitter/Emitter;

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->mReleasing:Z

    .line 19
    .line 20
    return-void
.end method

.method public sendAnswerSdp(Lorg/hmwebrtc/SessionDescription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$15;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/SocketIORTCClient$15;-><init>(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/SessionDescription;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendJoinMsgToRoom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$14;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/webrtc/haima/SocketIORTCClient$14;-><init>(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendLocalIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$16;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/SocketIORTCClient$16;-><init>(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/IceCandidate;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendLocalIceCandidateRemovals([Lorg/hmwebrtc/IceCandidate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient$17;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/SocketIORTCClient$17;-><init>(Lorg/webrtc/haima/SocketIORTCClient;[Lorg/hmwebrtc/IceCandidate;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "to"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string v1, "type"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string v1, "payload"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient;->mSocket:Lio/socket/client/Socket;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v0, v2, v3

    .line 28
    .line 29
    invoke-virtual {v1, p2, v2}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onChannelSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "socket send "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, " to "

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " payload:"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "SocketIORTCClient"

    .line 75
    .line 76
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    iget-object p2, p0, Lorg/webrtc/haima/SocketIORTCClient;->events:Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v0, "onChannelSendMessage-->"

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p2, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_1
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/RuntimeException;

    .line 110
    .line 111
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p2
.end method

.method toJavaCandidate(Lorg/json/JSONObject;)Lorg/hmwebrtc/IceCandidate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/hmwebrtc/IceCandidate;

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "label"

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "candidate"

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, v1, v2, p1}, Lorg/hmwebrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
