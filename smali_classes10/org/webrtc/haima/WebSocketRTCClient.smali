.class public Lorg/webrtc/haima/WebSocketRTCClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketRTCClient"


# instance fields
.field private final METHOD_CANDIDATE:Ljava/lang/String;

.field private final METHOD_EXTENSION:Ljava/lang/String;

.field private final METHOD_HANDSHAKE:Ljava/lang/String;

.field private final METHOD_HEARTBEAT:Ljava/lang/String;

.field private final METHOD_RECONNECT:Ljava/lang/String;

.field private final METHOD_SETANSWER:Ljava/lang/String;

.field private final METHOD_SETOFFER:Ljava/lang/String;

.field private final TYPE_REQUEST:Ljava/lang/String;

.field private final TYPE_RESPONSE:Ljava/lang/String;

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;

.field private mCloudId:Ljava/lang/String;

.field private mCoturnServer:Ljava/lang/String;

.field private mEnableHandShakeEvent:Z

.field private mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

.field private mOfferSdp:Ljava/lang/String;

.field private final mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

.field private mSdkVersion:Ljava/lang/String;

.field private mStreamerVersion:Ljava/lang/String;

.field private mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

.field private mWSClientThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mWSClientThreadHandlerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;Lorg/webrtc/haima/HmRtcEnvironment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "request"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->TYPE_REQUEST:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "response"

    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->TYPE_RESPONSE:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "handshake"

    .line 13
    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_HANDSHAKE:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "setoffer"

    .line 17
    .line 18
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_SETOFFER:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "reconnect"

    .line 21
    .line 22
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_RECONNECT:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "setanswer"

    .line 25
    .line 26
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_SETANSWER:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "heartbeat"

    .line 29
    .line 30
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_HEARTBEAT:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "candidate"

    .line 33
    .line 34
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_CANDIDATE:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "extension"

    .line 37
    .line 38
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->METHOD_EXTENSION:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->iceServers:Ljava/util/List;

    .line 53
    .line 54
    iput-object p3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p5, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mSdkVersion:Ljava/lang/String;

    .line 57
    .line 58
    const-string p3, ""

    .line 59
    .line 60
    iput-object p3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mStreamerVersion:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p2, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCoturnServer:Ljava/lang/String;

    .line 63
    .line 64
    const-string p2, ""

    .line 65
    .line 66
    iput-object p2, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p6, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEnableHandShakeEvent:Z

    .line 72
    .line 73
    iput-object p8, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 74
    .line 75
    iput-object p7, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCallback:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;

    .line 76
    .line 77
    if-eqz p7, :cond_0

    .line 78
    .line 79
    new-instance p2, Landroid/os/HandlerThread;

    .line 80
    .line 81
    const-string p3, "WebSocketRTCClient"

    .line 82
    .line 83
    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    iget-object p3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter p3

    .line 92
    :try_start_0
    new-instance p5, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p5, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    iput-object p5, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance p2, Lorg/webrtc/haima/h1;

    .line 104
    .line 105
    invoke-direct {p2, p0, p1, p4}, Lorg/webrtc/haima/h1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p5, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit p3

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p1

    .line 116
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/WebSocketRTCClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$new$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceInfo(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "dev_resolution"

    .line 2
    .line 3
    const-string v1, "dev_brand"

    .line 4
    .line 5
    const-string v2, "dev_model"

    .line 6
    .line 7
    const-string v3, "dev_os"

    .line 8
    .line 9
    :try_start_0
    iget-object v4, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mSdkVersion:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const-string v4, "lib_rtc_ver"

    .line 18
    .line 19
    iget-object v5, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mSdkVersion:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v4, v5}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v4, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v4, v3, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v7, "andr"

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {p1, v3, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1, v3, v7}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 65
    .line 66
    invoke-virtual {v3, v2, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    invoke-static {p1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v2, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 80
    .line 81
    invoke-virtual {v2, v1, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_4

    .line 90
    .line 91
    invoke-static {p1, v1, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 95
    .line 96
    invoke-virtual {v1, v0, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    invoke-static {p1, v0, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 110
    .line 111
    const-string v1, "user_id"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_6

    .line 122
    .line 123
    const-string v1, "uid"

    .line 124
    .line 125
    invoke-static {p1, v1, v0}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 129
    .line 130
    const-string v1, "dev_id"

    .line 131
    .line 132
    invoke-virtual {v0, v1, v5}, Lorg/webrtc/haima/HmRtcEnvironment;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    const-string v1, "did"

    .line 143
    .line 144
    invoke-static {p1, v1, v0}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v1, "addDeviceInfo failed! "

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v0, "WebSocketRTCClient"

    .line 171
    .line 172
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$sendHeartBeat$8()V

    return-void
.end method

.method public static synthetic c(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$sendIceCandidate$5(Lorg/hmwebrtc/IceCandidate;)V

    return-void
.end method

.method private createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;
    .locals 6

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "WebSocketRTCClient"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-gt v1, v4, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Fatal error, coturn server url is error: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    aget-object v1, v0, v4

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v5, ":"

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    array-length v5, v1

    .line 48
    if-gt v5, v4, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "Fatal error, coturn server auth is error: "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_1
    new-instance p1, Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    aget-object v0, v0, v2

    .line 75
    .line 76
    aget-object v2, v1, v2

    .line 77
    .line 78
    aget-object v1, v1, v4

    .line 79
    .line 80
    invoke-direct {p1, v0, v2, v1}, Lorg/hmwebrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method

.method public static synthetic d(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$disconnect$3(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic e(Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$sendHandShake$7()V

    return-void
.end method

.method public static synthetic f(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$sendAnswer$4(Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method public static synthetic g(Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$connect$1()V

    return-void
.end method

.method public static synthetic h(Lorg/webrtc/haima/WebSocketRTCClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$disconnect$2()V

    return-void
.end method

.method public static synthetic i(Lorg/webrtc/haima/WebSocketRTCClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->lambda$sendExtMessage$6(Ljava/lang/String;)V

    return-void
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

.method private synthetic lambda$connect$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lorg/webrtc/haima/WebSocketSignalClient;->connect()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$disconnect$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lorg/webrtc/haima/WebSocketSignalClient;->disconnect()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCallback:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;->onReleaseWebSocketClient(Lorg/webrtc/haima/WebSocketSignalClient;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 20
    .line 21
    return-void
.end method

.method private static synthetic lambda$disconnect$3(Landroid/os/Looper;)V
    .locals 2

    .line 1
    const-string v0, "WebSocketRTCClient"

    .line 2
    .line 3
    const-string v1, "Quitting mWSClientThread thread."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCallback:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p0}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;->onCreateWebSocketClient(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;)Lorg/webrtc/haima/WebSocketSignalClient;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$sendAnswer$4(Lorg/hmwebrtc/SessionDescription;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "request"

    .line 17
    .line 18
    const-string v3, "type"

    .line 19
    .line 20
    invoke-static {v1, v3, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "method"

    .line 24
    .line 25
    const-string v4, "setanswer"

    .line 26
    .line 27
    invoke-static {v1, v2, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "cid"

    .line 31
    .line 32
    iget-object v4, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "head"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "answer"

    .line 53
    .line 54
    invoke-static {v2, v3, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "sdp"

    .line 58
    .line 59
    iget-object p1, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2, v3, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "media_description"

    .line 65
    .line 66
    invoke-static {v1, p1, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "body"

    .line 70
    .line 71
    invoke-static {v0, p1, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "rtcmessage sendAnswer "

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v1, "WebSocketRTCClient"

    .line 96
    .line 97
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 101
    .line 102
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v0}, Lorg/webrtc/haima/WebSocketSignalClient;->sendMessage(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    invoke-interface {p1, v4, v2}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketSendMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method

.method private synthetic lambda$sendExtMessage$6(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    const-string v3, "request"

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "method"

    .line 24
    .line 25
    const-string v3, "extension"

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "cid"

    .line 31
    .line 32
    iget-object v3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "head"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "payload"

    .line 48
    .line 49
    invoke-static {v1, v2, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "body"

    .line 53
    .line 54
    invoke-static {v0, p1, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "WebSocketRTCClient"

    .line 58
    .line 59
    const-string v1, "rtcmessage sendExtMessage"

    .line 60
    .line 61
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v0}, Lorg/webrtc/haima/WebSocketSignalClient;->sendMessage(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private synthetic lambda$sendHandShake$7()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    const-string v3, "request"

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "method"

    .line 24
    .line 25
    const-string v3, "handshake"

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "cid"

    .line 31
    .line 32
    iget-object v3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "head"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "version"

    .line 53
    .line 54
    iget-object v4, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mSdkVersion:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v3, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->addDeviceInfo(Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "sdk_info"

    .line 63
    .line 64
    invoke-static {v1, v3, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "body"

    .line 68
    .line 69
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "rtcmessage sendHandShake "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "WebSocketRTCClient"

    .line 94
    .line 95
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v1, v0}, Lorg/webrtc/haima/WebSocketSignalClient;->sendMessage(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private synthetic lambda$sendHeartBeat$8()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    const-string v3, "request"

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "method"

    .line 24
    .line 25
    const-string v3, "heartbeat"

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "cid"

    .line 31
    .line 32
    iget-object v3, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "head"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "WebSocketRTCClient"

    .line 43
    .line 44
    const-string v2, "rtcmessage sendHeartBeat"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v1, v0}, Lorg/webrtc/haima/WebSocketSignalClient;->sendMessage(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private synthetic lambda$sendIceCandidate$5(Lorg/hmwebrtc/IceCandidate;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    const-string v3, "request"

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "method"

    .line 24
    .line 25
    const-string v3, "candidate"

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "cid"

    .line 31
    .line 32
    iget-object v4, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "head"

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v4, p1, Lorg/hmwebrtc/IceCandidate;->sdpMLineIndex:I

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "label"

    .line 59
    .line 60
    invoke-static {v2, v5, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "id"

    .line 64
    .line 65
    iget-object v5, p1, Lorg/hmwebrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v2, v4, v5}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2, v3, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-string p1, "candidate_info"

    .line 76
    .line 77
    invoke-static {v1, p1, v2}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string p1, "body"

    .line 81
    .line 82
    invoke-static {v0, p1, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "rtcmessage sendIceCandidate "

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v1, "WebSocketRTCClient"

    .line 107
    .line 108
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClient:Lorg/webrtc/haima/WebSocketSignalClient;

    .line 112
    .line 113
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {p1, v0}, Lorg/webrtc/haima/WebSocketSignalClient;->sendMessage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 121
    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    invoke-interface {p1, v3, v2}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketSendMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    return-void
.end method

.method private sendHandShake()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/f1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/webrtc/haima/f1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method private sendHeartBeat()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/g1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/webrtc/haima/g1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method private toJavaCandidate(Lorg/json/JSONObject;)Lorg/hmwebrtc/IceCandidate;
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


# virtual methods
.method public connect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/e1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/webrtc/haima/e1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public disconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/i1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lorg/webrtc/haima/i1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lorg/webrtc/haima/j1;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lorg/webrtc/haima/j1;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 34
    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method public getStreamrVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mStreamerVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public offerReceived()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public onWebSocketConnectStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketConnectStatus(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onWebSocketConnected()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEnableHandShakeEvent:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->sendHandShake()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->iceServers:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCoturnServer:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_4

    .line 27
    .line 28
    aget-object v3, v0, v2

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string v4, "stun:"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const-string v4, "stun"

    .line 50
    .line 51
    const-string v5, "turn"

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    const-string v4, "@"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    const-string v4, "turn:"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    const-string v4, "transport=tcp"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {p0, v4}, Lorg/webrtc/haima/WebSocketRTCClient;->createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v5, p0, Lorg/webrtc/haima/WebSocketRTCClient;->iceServers:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v5, "add conturnServerUrl = "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "WebSocketRTCClient"

    .line 115
    .line 116
    invoke-static {v4, v3}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 123
    .line 124
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->iceServers:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketConnected(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-void
.end method

.method public onWebSocketDisconnected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketDisconnected(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onWebSocketRecvMessage(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "WebSocketRTCClient"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "head"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "rtcmessage parseMessage not legal msg:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "parseMessage message:"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "body"

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v5, "cid"

    .line 72
    .line 73
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v5, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mCloudId:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    const-string p1, "rtcmessage parseMessage error cid"

    .line 86
    .line 87
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    const-string v0, "request"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    const/4 v5, -0x1

    .line 98
    const-string v6, "method"

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    if-eqz v0, :cond_d

    .line 102
    .line 103
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x3

    .line 112
    const/4 v6, 0x2

    .line 113
    const/4 v8, 0x1

    .line 114
    sparse-switch v3, :sswitch_data_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :sswitch_0
    const-string v3, "setoffer"

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    goto :goto_0

    .line 128
    :sswitch_1
    const-string v3, "reconnect"

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    const/4 v5, 0x3

    .line 137
    goto :goto_0

    .line 138
    :sswitch_2
    const-string v3, "candidate"

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    const/4 v5, 0x1

    .line 147
    goto :goto_0

    .line 148
    :sswitch_3
    const-string v3, "extension"

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    const/4 v5, 0x2

    .line 157
    :cond_2
    :goto_0
    if-eqz v5, :cond_8

    .line 158
    .line 159
    if-eq v5, v8, :cond_6

    .line 160
    .line 161
    if-eq v5, v6, :cond_4

    .line 162
    .line 163
    if-eq v5, v4, :cond_3

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_3
    invoke-direct {p0}, Lorg/webrtc/haima/WebSocketRTCClient;->sendHandShake()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_4
    if-eqz p1, :cond_13

    .line 173
    .line 174
    const-string v0, "payload"

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 184
    if-nez v0, :cond_13

    .line 185
    .line 186
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 187
    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    invoke-interface {v0, p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketRecvExtMessage(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    const-string p1, "mEvents.onWebSocketRecvExtMessage"

    .line 194
    .line 195
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :catch_0
    move-exception p1

    .line 201
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v1, "onWebSocketRecvExtMessage exception: "

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :cond_6
    if-eqz p1, :cond_13

    .line 228
    .line 229
    const-string v0, "candidate_info"

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 235
    if-eqz p1, :cond_13

    .line 236
    .line 237
    :try_start_4
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 238
    .line 239
    if-eqz v0, :cond_7

    .line 240
    .line 241
    invoke-direct {p0, p1}, Lorg/webrtc/haima/WebSocketRTCClient;->toJavaCandidate(Lorg/json/JSONObject;)Lorg/hmwebrtc/IceCandidate;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string v3, "turnserver"

    .line 246
    .line 247
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {v0, v1, p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_7
    const-string p1, "mEvents.onWebSocketRemoteIceCandidate"

    .line 255
    .line 256
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :catch_1
    move-exception p1

    .line 262
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v1, "onWebSocketRemoteIceCandidate exception: "

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_8
    if-eqz p1, :cond_13

    .line 289
    .line 290
    const-string v0, "media_description"

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_13

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v1, "sdp"

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 314
    const-string v3, "onRemoteDescription exception: "

    .line 315
    .line 316
    if-eqz v1, :cond_a

    .line 317
    .line 318
    :try_start_6
    new-instance v1, Lorg/hmwebrtc/SessionDescription;

    .line 319
    .line 320
    invoke-static {v0}, Lorg/hmwebrtc/SessionDescription$Type;->fromCanonicalForm(Ljava/lang/String;)Lorg/hmwebrtc/SessionDescription$Type;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {v1, v0, p1}, Lorg/hmwebrtc/SessionDescription;-><init>(Lorg/hmwebrtc/SessionDescription$Type;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 325
    .line 326
    .line 327
    :try_start_7
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 328
    .line 329
    if-eqz v0, :cond_9

    .line 330
    .line 331
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V

    .line 332
    .line 333
    .line 334
    :cond_9
    const-string v0, "mEvents.onWebSocketRemoteDescription"

    .line 335
    .line 336
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :catch_2
    move-exception v0

    .line 341
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_a
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 370
    if-nez v0, :cond_c

    .line 371
    .line 372
    :try_start_9
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 373
    .line 374
    if-eqz v0, :cond_b

    .line 375
    .line 376
    const-string v1, "recved different OFFER sdp"

    .line 377
    .line 378
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketForceDisconnectRTC(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :cond_b
    const-string v0, "mEvents.onWebSocketForceDisconnectRTC"

    .line 382
    .line 383
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :catch_3
    move-exception v0

    .line 388
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :cond_c
    :goto_1
    iput-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 411
    .line 412
    goto/16 :goto_3

    .line 413
    .line 414
    :cond_d
    const-string v0, "response"

    .line 415
    .line 416
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_13

    .line 421
    .line 422
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    const v3, 0x4367bf7

    .line 431
    .line 432
    .line 433
    if-eq v1, v3, :cond_e

    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_e
    const-string v1, "handshake"

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    .line 442
    if-eqz v1, :cond_f

    .line 443
    .line 444
    const/4 v5, 0x0

    .line 445
    :cond_f
    :goto_2
    const-string v1, " errcode:"

    .line 446
    .line 447
    const-string v3, "rtcmessage response method:"

    .line 448
    .line 449
    const-string v6, "errcode"

    .line 450
    .line 451
    if-eqz v5, :cond_10

    .line 452
    .line 453
    :try_start_b
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_3

    .line 482
    .line 483
    :cond_10
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    if-eqz v4, :cond_11

    .line 512
    .line 513
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 514
    .line 515
    if-eqz p1, :cond_13

    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v1, "RTC WebSocket handshake error:"

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-interface {p1, v0}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketConnectStatus(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    goto :goto_3

    .line 538
    :cond_11
    if-eqz p1, :cond_12

    .line 539
    .line 540
    const-string v0, "streamer_info"

    .line 541
    .line 542
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    if-eqz p1, :cond_12

    .line 547
    .line 548
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mStreamerVersion:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_12

    .line 555
    .line 556
    const-string v0, "version"

    .line 557
    .line 558
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    iput-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mStreamerVersion:Ljava/lang/String;

    .line 563
    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const-string v0, "rtcmessage handshake succeed streamer version:"

    .line 570
    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mStreamerVersion:Ljava/lang/String;

    .line 575
    .line 576
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    :cond_12
    iget-object p1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEvents:Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;

    .line 587
    .line 588
    if-eqz p1, :cond_13

    .line 589
    .line 590
    iget-boolean v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEnableHandShakeEvent:Z

    .line 591
    .line 592
    if-eqz v0, :cond_13

    .line 593
    .line 594
    invoke-interface {p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;->onWebSocketHandShakeSucceed()V

    .line 595
    .line 596
    .line 597
    iput-boolean v7, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEnableHandShakeEvent:Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    .line 598
    .line 599
    goto :goto_3

    .line 600
    :catch_4
    move-exception p1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    const-string v1, "string to json exception: "

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    :cond_13
    :goto_3
    return-void

    .line 626
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2482e3c1 -> :sswitch_3
        0x1e519583 -> :sswitch_2
        0x3b049b57 -> :sswitch_1
        0x553acb3a -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mOfferSdp:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mEnableHandShakeEvent:Z

    .line 7
    .line 8
    return-void
.end method

.method public sendAnswer(Lorg/hmwebrtc/SessionDescription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/c1;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lorg/webrtc/haima/c1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/SessionDescription;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public sendExtMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/d1;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lorg/webrtc/haima/d1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public sendIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/WebSocketRTCClient;->mWSClientThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lorg/webrtc/haima/b1;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lorg/webrtc/haima/b1;-><init>(Lorg/webrtc/haima/WebSocketRTCClient;Lorg/hmwebrtc/IceCandidate;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method
