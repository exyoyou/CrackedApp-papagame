.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClockDiffChange(JI)V
    .locals 0

    return-void
.end method

.method public onConnect(Z)V
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
    const-string v2, "onConnect connect2InstanceWsServer, screenUrl="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "isReconnect="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "AbsIjkVideoView"

    .line 36
    .line 37
    const-string v0, "====connectWsServer onConnect Success===="

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "12402"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    const-string v0, "START_RECORD"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendWsMessageRecord(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->requestIMEList()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendScreenOrientation()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->registerScreenMonitor()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 7

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
    const-string v2, "onDisconnect connect2InstanceWsServer, screenUrl="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "reason="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "showPrompt="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/haima/hmcp/business/RecordHelper;->getsInstance()Lcom/haima/hmcp/business/RecordHelper;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/business/RecordHelper;->stop(Z)V

    .line 49
    .line 50
    .line 51
    const-string p3, "==== connectWsServer onDisconnect===="

    .line 52
    .line 53
    const-string v1, "AbsIjkVideoView"

    .line 54
    .line 55
    invoke-static {v1, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 59
    .line 60
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNeedRefreshStoken(I)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    iget v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceWsReconnectCount:I

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const-string v4, ""

    .line 70
    .line 71
    if-lez v2, :cond_0

    .line 72
    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-array v5, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 80
    .line 81
    iget v6, v6, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceWsReconnectCount:I

    .line 82
    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    aput-object v6, v5, v3

    .line 88
    .line 89
    const-string v6, "\u7b2c %s \u6b21\u91cd\u8fde\u5931\u8d25"

    .line 90
    .line 91
    invoke-static {v2, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-object v2, v4

    .line 97
    :goto_0
    new-instance v5, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 98
    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p2, ","

    .line 123
    .line 124
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {v5, p1, p2}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 138
    .line 139
    iget-boolean p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 140
    .line 141
    if-nez p1, :cond_3

    .line 142
    .line 143
    const-string p1, "12403"

    .line 144
    .line 145
    invoke-static {v5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 153
    .line 154
    iget-boolean p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 155
    .line 156
    if-eqz p2, :cond_2

    .line 157
    .line 158
    new-instance p2, Lcom/haima/hmcp/beans/ReportInput;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVInputUrl:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p2, p1}, Lcom/haima/hmcp/beans/ReportInput;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string p1, "12404"

    .line 170
    .line 171
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 179
    .line 180
    iget-boolean p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->SASS_SERVER_MAINTENANCE:Z

    .line 181
    .line 182
    if-nez p2, :cond_3

    .line 183
    .line 184
    iget p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 185
    .line 186
    const/4 v2, 0x5

    .line 187
    if-eq p2, v2, :cond_3

    .line 188
    .line 189
    iget p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCurrentState:I

    .line 190
    .line 191
    if-eq p2, v2, :cond_3

    .line 192
    .line 193
    if-eqz p3, :cond_1

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 196
    .line 197
    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string p2, "screen disconnected and refresh stoken ,retry max time:"

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget p2, Lcom/haima/hmcp/Constants;->WS_RETRY_MAX_TIMES:I

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 221
    .line 222
    invoke-virtual {p1, v3, v0, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 226
    .line 227
    const-string p2, "InstanceWsServer Socket connect lost"

    .line 228
    .line 229
    invoke-virtual {p1, v3, p2, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;Z)V

    .line 230
    .line 231
    .line 232
    const-string p1, "refresh token"

    .line 233
    .line 234
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {p1, v3, v0, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 242
    .line 243
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 244
    .line 245
    new-instance p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20$1;

    .line 246
    .line 247
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20$1;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;)V

    .line 248
    .line 249
    .line 250
    const-wide/16 v0, 0x1e

    .line 251
    .line 252
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_2
    const-string p1, "12305"

    .line 257
    .line 258
    invoke-static {v5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopSensor()V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public onFirstDiffClockSuccess(J)V
    .locals 0

    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 0

    return-void
.end method

.method public onMessage([BZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->notifyCapScreen([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTextMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "====onInputMessageWsServer7682====="

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
    const-string v1, "AbsIjkVideoView"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "===receive WsMessage==="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "12904"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->handleWSMsg(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$20;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->wsServerMessageDispatcher(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
