.class public Lcom/haima/hmcp/business/TransferHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/TransferHelper$Callback;
    }
.end annotation


# static fields
.field public static final KEY_CLI:Ljava/lang/String; = "cli"

.field public static final PING_INTERVAL:I = 0xa

.field public static final PING_TIME_OUT_COUNT_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TransferHelper"

.field public static mSocketLinkTimeOut:I = 0x1770


# instance fields
.field private callback:Lcom/haima/hmcp/business/TransferHelper$Callback;

.field private isBackground:Z

.field private isReconnect:Z

.field private mConnectStartTime:J

.field private mConnectionTag:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasRemoteDisconnected:Z

.field private mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field private mIsTransferStopByUser:Z

.field private mLastSentResetInputTimerCMDTimestamp:J

.field private mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

.field private webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

.field private webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;

.field private wsUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->isBackground:Z

    .line 8
    .line 9
    new-instance v0, Lcom/haima/hmcp/business/TransferHelper$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/TransferHelper$1;-><init>(Lcom/haima/hmcp/business/TransferHelper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/TransferHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/TransferHelper;->mConnectionTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/business/TransferHelper;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/TransferHelper;->setReconnect(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/TransferHelper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mConnectStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/TransferHelper;->callback:Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/TransferHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/haima/hmcp/business/TransferHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/haima/hmcp/business/TransferHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/TransferHelper;->mIsTransferStopByUser:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/haima/hmcp/business/TransferHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/TransferHelper;->mIsTransferStopByUser:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/haima/hmcp/business/TransferHelper;Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/TransferHelper;->countlyMessage(Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/business/TransferHelper;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/TransferHelper;->handleMsg(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/websocket/WebSocketConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method private changeMessageType2Transfer(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "status:"

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
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    :try_start_0
    const-string v0, "connected"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMessageType()Lcom/haima/hmcp/enums/MessageType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/haima/hmcp/enums/MessageType;->TRANSFER:Lcom/haima/hmcp/enums/MessageType;

    .line 42
    .line 43
    if-eq v1, v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setMessageType(Lcom/haima/hmcp/enums/MessageType;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSysNotify(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "disconnected"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSysNotify(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "changeMessageType2Transfer exception:"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string p1, "absIjkVideoView is null"

    .line 95
    .line 96
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p1, " TransferHelper changeMessageType2Transfer() absIjkVideoView is null"

    .line 100
    .line 101
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    return-void
.end method

.method private countlyMessage(Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "countly"

    .line 4
    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->isJsonObject(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return v3

    .line 20
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v4, "ignore"

    .line 26
    .line 27
    const-string v5, "type"

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    return v5

    .line 41
    :cond_2
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    return v3

    .line 48
    :cond_3
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    return v5

    .line 59
    :cond_4
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->isJsonObject(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_5

    .line 64
    .line 65
    return v5

    .line 66
    :cond_5
    new-instance p2, Lorg/json/JSONObject;

    .line 67
    .line 68
    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "event_id"

    .line 72
    .line 73
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "data"

    .line 78
    .line 79
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/haima/hmcp/business/WebSocketInstanceType;->getType()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ";"

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_6
    return v5

    .line 117
    :catchall_0
    const/4 v3, 0x1

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    const/4 v3, 0x1

    .line 121
    goto :goto_0

    .line 122
    :catch_1
    move-exception p1

    .line 123
    :goto_0
    :try_start_2
    sget-object p2, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "error:"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .line 148
    .line 149
    :catchall_1
    :goto_1
    return v3
.end method

.method private handleMsg(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v2, "ack"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "type"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v2, "mid"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/TransferHelper;->isCLIConfigured(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "connected"

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v4}, Lcom/haima/hmcp/business/TransferHelper;->changeMessageType2Transfer(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_a

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    const-string v3, "hm_sys_config"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_a

    .line 54
    .line 55
    :cond_2
    const-string v3, "hm_sys_config_notify"

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const-string v5, " TransferHelper handleMsg() absIjkVideoView is null"

    .line 62
    .line 63
    const-string v6, "absIjkVideoView is null"

    .line 64
    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    const-class v2, Lcom/haima/hmcp/beans/HmSysNotify;

    .line 68
    .line 69
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/haima/hmcp/beans/HmSysNotify;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/HmSysNotify;->getHm_sys_config_notify()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const-string v1, "disconnected"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 99
    .line 100
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_TRANSFER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doCli(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_5
    sget-object p1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_6
    const-string v1, "hm_sys_config_channelType_ability"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    const-class v1, Lcom/haima/hmcp/beans/MsgSdkAbility;

    .line 134
    .line 135
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/haima/hmcp/beans/MsgSdkAbility;

    .line 140
    .line 141
    sget-object v1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "messageAbility:"

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/MsgSdkAbility;->getHm_sys_config_channelType_ability()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    const-wide/16 v5, 0x1

    .line 168
    .line 169
    and-long/2addr v2, v5

    .line 170
    new-instance p1, Lcom/haima/hmcp/beans/MsgChannelType;

    .line 171
    .line 172
    invoke-direct {p1}, Lcom/haima/hmcp/beans/MsgChannelType;-><init>()V

    .line 173
    .line 174
    .line 175
    const/4 v7, 0x2

    .line 176
    invoke-virtual {p1, v7}, Lcom/haima/hmcp/beans/MsgChannelType;->setHm_sys_config_channelType(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v8, "configChannelType:"

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {v1, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/TransferHelper;->enviarMessage(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    cmp-long p1, v5, v2

    .line 207
    .line 208
    if-nez p1, :cond_9

    .line 209
    .line 210
    invoke-direct {p0, v4}, Lcom/haima/hmcp/business/TransferHelper;->changeMessageType2Transfer(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    if-eqz v2, :cond_9

    .line 215
    .line 216
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 217
    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    const-class v1, Lcom/haima/hmcp/beans/Message;

    .line 221
    .line 222
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Lcom/haima/hmcp/beans/Message;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 229
    .line 230
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->forwardMessageToApplication(Lcom/haima/hmcp/beans/Message;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    sget-object p1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {p1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_2
    return v0

    .line 243
    :cond_a
    return v1
.end method

.method private isCLIConfigured(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "cli"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->isJsonObject(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    sget-object p1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "cliConfigured is true cli:"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_1
    return v2

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return v2
.end method

.method private sendResetInputTimerCMD()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/haima/hmcp/business/TransferHelper;->mLastSentResetInputTimerCMDTimestamp:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-object v2, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "timeDiff:"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, 0x1388

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-lez v4, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mLastSentResetInputTimerCMDTimestamp:J

    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetInputTimer()I

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private setReconnect(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshTransferToken(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, " absIjkVideoView is null"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, " TransferHelper setReconnect() absIjkVideoView is null"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "connect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mIsTransferStopByUser:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "mWebSocketManager is null"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v1, v0, p0}, Lcom/haima/hmcp/business/IWebSocket;->connect2Transfer(Ljava/lang/String;Lcom/haima/hmcp/business/TransferHelper;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method connectInternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 6
    .line 7
    const-string v1, "transfer"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/haima/hmcp/business/TransferHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mConnectionTag:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setReconnected(Z)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, " transfer Helper connect uri = "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingInterval(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeout(I)V

    .line 112
    .line 113
    .line 114
    const/4 v1, 0x3

    .line 115
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeoutCountMax(I)V

    .line 116
    .line 117
    .line 118
    sget v1, Lcom/haima/hmcp/business/TransferHelper;->mSocketLinkTimeOut:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setSocketConnectTimeout(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iput-wide v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mConnectStartTime:J

    .line 128
    .line 129
    const-string v1, "12920"

    .line 130
    .line 131
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketHandler:Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V
    :try_end_0
    .catch Lcom/haima/hmcp/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    sget-object v1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v3, " transfer connect error = "

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "disconnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public disconnectInternal()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "disconnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mIsTransferStopByUser:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "mWebSocketManager is null"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1}, Lcom/haima/hmcp/business/IWebSocket;->disconnect2Transfer()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public enviarMessage(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mHasRemoteDisconnected:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string p1, "send textMessage is null"

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/haima/hmcp/business/TransferHelper;->isBackground:Z

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "send textMessage:"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    :cond_2
    :goto_0
    const-string p1, "send textMessage isBackground"

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :cond_3
    const-string p1, "send textMessage failed by disconnected"

    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2
.end method

.method innerDisconnect()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " transfer Helper inner Disconnect isReconnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disconnected"

    .line 2
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/TransferHelper;->changeMessageType2Transfer(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    :cond_0
    return-void
.end method

.method innerDisconnect(Z)V
    .locals 3

    .line 5
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " transfer Helper inner Disconnect isReconnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    if-eqz v0, :cond_0

    .line 7
    iput-boolean p1, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iput-boolean p1, p0, Lcom/haima/hmcp/business/TransferHelper;->isReconnect:Z

    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendClose()V

    :cond_1
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public send([B)I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "mHasRemoteDisconnected:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->isBackground:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/haima/hmcp/business/TransferHelper;->mHasRemoteDisconnected:Z

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper;->webSocketConnection:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage([BZ)V

    .line 47
    .line 48
    .line 49
    array-length p1, p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, -0x1

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/business/TransferHelper;->sendResetInputTimerCMD()V

    .line 53
    .line 54
    .line 55
    return p1
.end method

.method public sendMessage(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/TransferHelper;->enviarMessage(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/business/TransferHelper;->sendResetInputTimerCMD()V

    .line 6
    .line 7
    .line 8
    return p1
.end method

.method public setBackground(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, " transfer Helper  setBackground  = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    iput-boolean p1, p0, Lcom/haima/hmcp/business/TransferHelper;->isBackground:Z

    .line 24
    .line 25
    return-void
.end method

.method public setCallback(Lcom/haima/hmcp/business/TransferHelper$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->callback:Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectTimeOut(I)V
    .locals 0

    .line 1
    sput p1, Lcom/haima/hmcp/business/TransferHelper;->mSocketLinkTimeOut:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoView(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->mHmcpVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    return-void
.end method

.method setWsUri(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "&proto=1&act=1"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "&cli=s_master-7.28.1-a83e5ae0"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/business/TransferHelper;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, " transfer Helper setWsUri "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper;->wsUri:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
