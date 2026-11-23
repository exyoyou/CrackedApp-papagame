.class Lcom/haima/hmcp/cloud/BatchUploadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/BatchUploadTask;->createPipe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/BatchUploadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

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
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$200(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;->IDLE:Lcom/haima/hmcp/cloud/BatchUploadTask$BatchUploadTaskStatus;

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
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$300(Lcom/haima/hmcp/cloud/BatchUploadTask;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 p3, 0x6

    .line 2
    const-string v0, "cloud-file: "

    .line 3
    .line 4
    if-ne p1, p3, :cond_1

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p3, "web-socket connect fail by server error: "

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    move-result-object p1

    .line 42
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$400(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$400(Lcom/haima/hmcp/cloud/BatchUploadTask;)Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/IUploadSummaryListener;->onHangUp()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "is allow web-socket reconnect: "

    .line 71
    .line 72
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-static {v1, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string p3, "upload web-socket is disconnect: "

    .line 112
    .line 113
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 146
    .line 147
    const/16 p2, 0xd

    .line 148
    .line 149
    const-string p3, "upload socket disconnect"

    .line 150
    .line 151
    invoke-static {p1, p2, p3}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$500(Lcom/haima/hmcp/cloud/BatchUploadTask;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v1, "web-socket connect onDisconnect: "

    .line 162
    .line 163
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p2, "---code:"

    .line 170
    .line 171
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$600(Lcom/haima/hmcp/cloud/BatchUploadTask;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    const/16 p2, 0xa

    .line 210
    .line 211
    if-ge p1, p2, :cond_2

    .line 212
    .line 213
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$608(Lcom/haima/hmcp/cloud/BatchUploadTask;)I

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 227
    .line 228
    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const/16 p2, 0x69

    .line 237
    .line 238
    iput p2, p1, Landroid/os/Message;->what:I

    .line 239
    .line 240
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 241
    .line 242
    invoke-static {p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const-wide/16 v0, 0x9c4

    .line 247
    .line 248
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string p3, "cloud-file: WebSocket is not active when send start upload order, after 2.5s recheck web-socket, reconnect count: "

    .line 261
    .line 262
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object p3, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 266
    .line 267
    invoke-static {p3}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$600(Lcom/haima/hmcp/cloud/BatchUploadTask;)I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string p1, "WebSocket is not active when send start upload order"

    .line 282
    .line 283
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string p2, "upload task: reconnect upload ws over max count:"

    .line 293
    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 298
    .line 299
    invoke-static {p2}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$600(Lcom/haima/hmcp/cloud/BatchUploadTask;)I

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    .line 311
    .line 312
    const/16 p3, 0xc

    .line 313
    .line 314
    invoke-static {p2, p3, p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$500(Lcom/haima/hmcp/cloud/BatchUploadTask;ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_3
    :goto_1
    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$100()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6d

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadTask$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadTask;

    invoke-static {p1}, Lcom/haima/hmcp/cloud/BatchUploadTask;->access$700(Lcom/haima/hmcp/cloud/BatchUploadTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onMessage([BZ)V
    .locals 0

    .line 1
    return-void
.end method
