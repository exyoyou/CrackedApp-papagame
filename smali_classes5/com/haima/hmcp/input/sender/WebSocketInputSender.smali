.class public Lcom/haima/hmcp/input/sender/WebSocketInputSender;
.super Lcom/haima/hmcp/input/sender/AbsHMInputSender;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketInputSender"


# instance fields
.field private isInputStopByUser:Z

.field protected mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/input/sender/AbsHMInputSender;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/input/sender/WebSocketInputSender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->isInputStopByUser:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public connect()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->isInputStopByUser:Z

    .line 3
    .line 4
    new-instance v5, Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 5
    .line 6
    invoke-direct {v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 10
    .line 11
    iget v1, v1, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 12
    .line 13
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingInterval(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 17
    .line 18
    iget v1, v1, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeout(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 24
    .line 25
    iget v1, v1, Lcom/haima/hmcp/input/HMInputConfig;->inputPingTimeoutCountMax:I

    .line 26
    .line 27
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setAutoPingTimeoutCountMax(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 31
    .line 32
    iget v1, v1, Lcom/haima/hmcp/input/HMInputConfig;->connectTimeoutMS:I

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setSocketConnectTimeout(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->setTLSEnabledProtocols(Lcom/haima/hmcp/websocket/types/WebSocketOptions;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "input"

    .line 53
    .line 54
    invoke-direct {v1, v3, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 58
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setTag(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->setReconnected(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v3, "WebSocketInputSender"

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    const-string v0, "connect2Instance connected"

    .line 89
    .line 90
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "start connect2Instance, Url="

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 105
    .line 106
    iget-object v4, v4, Lcom/haima/hmcp/input/HMInputConfig;->addressUrl:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/haima/hmcp/input/HMInputConfig;->addressUrl:Ljava/lang/String;

    .line 123
    .line 124
    new-array v4, v2, [Ljava/lang/String;

    .line 125
    .line 126
    const-string v2, "haima-cloud-protocol"

    .line 127
    .line 128
    aput-object v2, v4, v0

    .line 129
    .line 130
    new-instance v0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;-><init>(Lcom/haima/hmcp/input/sender/WebSocketInputSender;)V

    .line 133
    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    move-object v2, v3

    .line 137
    move-object v3, v4

    .line 138
    move-object v4, v0

    .line 139
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->connect(Ljava/lang/String;[Ljava/lang/String;Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;Lcom/haima/hmcp/websocket/types/WebSocketOptions;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "timeframe--WebSocketManager::connect2Instance::"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    return-void
.end method

.method public disConnected()V
    .locals 2

    .line 1
    const-string v0, "===disconnect2Instance==="

    .line 2
    .line 3
    const-string v1, "WebSocketInputSender"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mIjkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->stopSendPing()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->isInputStopByUser:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->cutOff()V

    .line 35
    .line 36
    .line 37
    const-string v0, "===mInstanceSocket  disconnect==="

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public sendMessage(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sendMessage payload:"

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
    const-string v1, ",isDiscardable:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "WebSocketInputSender"

    .line 27
    .line 28
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->mInstanceSocket:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->sendMessage(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method
