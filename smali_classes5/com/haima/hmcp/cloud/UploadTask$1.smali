.class Lcom/haima/hmcp/cloud/UploadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/UploadTask;->createPipe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/UploadTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/UploadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnect(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "cloud-file: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "upload web-socket is connect"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$100(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/UploadTask$UploadTaskStatus;

    .line 34
    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", but task status is IDLE not run"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/16 v0, 0x66

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v0, "mHandler is null when "

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const/4 p3, 0x6

    .line 2
    const-string v0, "cloud-file: "

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p3, "web-socket connect fail by server error: "

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$300(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$300(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onHangUp()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p3, "is allow web-socket reconnect: "

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$400(Lcom/haima/hmcp/cloud/UploadTask;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/16 p3, 0xa

    .line 112
    .line 113
    if-ge p1, p3, :cond_2

    .line 114
    .line 115
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$408(Lcom/haima/hmcp/cloud/UploadTask;)I

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/16 p3, 0x69

    .line 135
    .line 136
    iput p3, p1, Landroid/os/Message;->what:I

    .line 137
    .line 138
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    const-wide/16 v2, 0x9c4

    .line 143
    .line 144
    invoke-virtual {p3, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "cloud-file: WebSocket is not active when send start upload order, after 2.5s recheck web-socket, reconnect count: "

    .line 157
    .line 158
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 162
    .line 163
    invoke-static {v2}, Lcom/haima/hmcp/cloud/UploadTask;->access$400(Lcom/haima/hmcp/cloud/UploadTask;)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-static {p1, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p1, "WebSocket is not active when send start upload order"

    .line 178
    .line 179
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string p3, "upload task: reconnect upload ws over max count:"

    .line 189
    .line 190
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object p3, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 194
    .line 195
    invoke-static {p3}, Lcom/haima/hmcp/cloud/UploadTask;->access$400(Lcom/haima/hmcp/cloud/UploadTask;)I

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p3, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 207
    .line 208
    invoke-static {p3, p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$500(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_0
    if-nez v1, :cond_3

    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string p3, "upload web-socket is disconnect: "

    .line 241
    .line 242
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    new-instance p3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 275
    .line 276
    const-string p2, "upload socket disconnect"

    .line 277
    .line 278
    invoke-static {p1, p2}, Lcom/haima/hmcp/cloud/UploadTask;->access$500(Lcom/haima/hmcp/cloud/UploadTask;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_3
    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud-file: upload onMessage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask$1;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/cloud/UploadTask;->orderAckDispatcher(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage([BZ)V
    .locals 0

    .line 1
    return-void
.end method
