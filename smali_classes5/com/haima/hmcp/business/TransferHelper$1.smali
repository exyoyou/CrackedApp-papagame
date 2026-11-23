.class Lcom/haima/hmcp/business/TransferHelper$1;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/TransferHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/TransferHelper;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/TransferHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, " transfer onClose ! reason = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " code = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1, p2}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "12922"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/TransferHelper;->access$402(Lcom/haima/hmcp/business/TransferHelper;Z)Z

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, " == onClose current thread=="

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    if-ne p1, v0, :cond_1

    .line 104
    .line 105
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "Ping-Debug transfer reconnecting !"

    .line 110
    .line 111
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/haima/hmcp/business/TransferHelper;->access$900(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_0

    .line 121
    .line 122
    iget-object p1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/haima/hmcp/business/TransferHelper;->access$900(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->reconnect()Z

    .line 129
    .line 130
    .line 131
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$500(Lcom/haima/hmcp/business/TransferHelper;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/haima/hmcp/business/TransferHelper$Callback;->onClose()V

    .line 155
    .line 156
    .line 157
    :cond_2
    if-eq p1, v1, :cond_3

    .line 158
    .line 159
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$800(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 168
    .line 169
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/business/TransferHelper;->access$1000(Lcom/haima/hmcp/business/TransferHelper;ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, "code=WebSocketConnectionHandler.CLOSE_NORMAL"

    .line 186
    .line 187
    if-ne p1, v1, :cond_4

    .line 188
    .line 189
    move-object v3, v2

    .line 190
    goto :goto_0

    .line 191
    :cond_4
    const-string v3, "absIjkVideoView is null"

    .line 192
    .line 193
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v0, " TransferHelper onClose() "

    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    if-ne p1, v1, :cond_5

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_5
    const-string v2, " absIjkVideoView is null"

    .line 217
    .line 218
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_2
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " transfer onMessage payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    sget-object v1, Lcom/haima/hmcp/business/WebSocketInstanceType;->TRANSFER:Lcom/haima/hmcp/business/WebSocketInstanceType;

    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/business/TransferHelper;->access$600(Lcom/haima/hmcp/business/TransferHelper;Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    invoke-static {v0, p1}, Lcom/haima/hmcp/business/TransferHelper;->access$700(Lcom/haima/hmcp/business/TransferHelper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$800(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/haima/hmcp/beans/Message;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/Message;-><init>()V

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lcom/haima/hmcp/beans/Message;->ack:I

    .line 7
    iput-object p1, v0, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    invoke-static {p1}, Lcom/haima/hmcp/business/TransferHelper;->access$800(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->forwardMessageToApplication(Lcom/haima/hmcp/beans/Message;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "absIjkVideoView is null"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " TransferHelper onMessage(String) absIjkVideoView is null"

    .line 10
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessage([BZ)V
    .locals 2

    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " transfer onMessage byte payload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    invoke-static {p2}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    invoke-static {p2}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/haima/hmcp/business/TransferHelper$Callback;->onBinaryMessage([B)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " transfer onOpen ! "

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/business/TransferHelper;->access$100(Lcom/haima/hmcp/business/TransferHelper;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",timeCost:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v3, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/haima/hmcp/business/TransferHelper;->access$200(Lcom/haima/hmcp/business/TransferHelper;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sub-long/2addr v1, v3

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "12921"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/haima/hmcp/beans/MsgSdkAbility;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/haima/hmcp/beans/MsgSdkAbility;-><init>()V

    .line 55
    .line 56
    .line 57
    const-wide/16 v1, 0x1

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/beans/MsgSdkAbility;->setHm_sys_config_channelType_ability(J)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/haima/hmcp/business/TransferHelper;->access$000()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "msgSdkAbility:"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/business/TransferHelper;->enviarMessage(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/haima/hmcp/business/TransferHelper;->access$300(Lcom/haima/hmcp/business/TransferHelper;)Lcom/haima/hmcp/business/TransferHelper$Callback;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/haima/hmcp/business/TransferHelper;->access$400(Lcom/haima/hmcp/business/TransferHelper;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/TransferHelper$Callback;->onConnect(Z)V

    .line 116
    .line 117
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/TransferHelper$1;->this$0:Lcom/haima/hmcp/business/TransferHelper;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/TransferHelper;->access$502(Lcom/haima/hmcp/business/TransferHelper;Z)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method
