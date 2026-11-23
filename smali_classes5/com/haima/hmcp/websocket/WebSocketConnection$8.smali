.class Lcom/haima/hmcp/websocket/WebSocketConnection$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ","

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "onClose called already, ignore message:"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/TextMessage;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    check-cast p1, Lcom/haima/hmcp/websocket/messages/TextMessage;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/TextMessage;->mPayload:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onMessage(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v0, "could not call onTextMessage() .. handler already NULL"

    .line 149
    .line 150
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_3
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    check-cast p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/RawTextMessage;->mPayload:[B

    .line 177
    .line 178
    invoke-interface {v0, p1, v2}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onMessage([BZ)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string v0, "could not call onRawTextMessage() .. handler already NULL"

    .line 222
    .line 223
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_5
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    .line 229
    .line 230
    const/4 v3, 0x1

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    check-cast p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;

    .line 234
    .line 235
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_6

    .line 242
    .line 243
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 244
    .line 245
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/BinaryMessage;->mPayload:[B

    .line 250
    .line 251
    invoke-interface {v0, p1, v3}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onMessage([BZ)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 282
    .line 283
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const-string v0, "could not call onBinaryMessage() .. handler already NULL"

    .line 295
    .line 296
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_7
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Ping;

    .line 302
    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Ping;

    .line 306
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 321
    .line 322
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 333
    .line 334
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v3, "WebSocket Ping received"

    .line 346
    .line 347
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p1, Lcom/haima/hmcp/websocket/messages/Ping;->mPayload:[B

    .line 351
    .line 352
    if-nez v0, :cond_8

    .line 353
    .line 354
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 355
    .line 356
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    if-eqz p1, :cond_9

    .line 361
    .line 362
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 363
    .line 364
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-interface {p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onPing()V

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 373
    .line 374
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    if-eqz v0, :cond_9

    .line 379
    .line 380
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 381
    .line 382
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Ping;->mPayload:[B

    .line 387
    .line 388
    invoke-interface {v0, p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onPing([B)V

    .line 389
    .line 390
    .line 391
    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 415
    .line 416
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    const-string v0, "WebSocket Pong sent"

    .line 428
    .line 429
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :cond_a
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Pong;

    .line 435
    .line 436
    if-eqz v0, :cond_f

    .line 437
    .line 438
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Pong;

    .line 439
    .line 440
    iget-object v0, p1, Lcom/haima/hmcp/websocket/messages/Pong;->mPayload:[B

    .line 441
    .line 442
    if-nez v0, :cond_b

    .line 443
    .line 444
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 445
    .line 446
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    if-eqz p1, :cond_c

    .line 451
    .line 452
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 453
    .line 454
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onPong()V

    .line 459
    .line 460
    .line 461
    goto :goto_1

    .line 462
    :cond_b
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 463
    .line 464
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-eqz v0, :cond_c

    .line 469
    .line 470
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 471
    .line 472
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Pong;->mPayload:[B

    .line 477
    .line 478
    invoke-interface {v0, p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onPong([B)V

    .line 479
    .line 480
    .line 481
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 482
    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 484
    .line 485
    .line 486
    move-result-wide v4

    .line 487
    invoke-static {p1, v4, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3702(Lcom/haima/hmcp/websocket/WebSocketConnection;J)J

    .line 488
    .line 489
    .line 490
    sget-object p1, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 491
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v4, "RecvPong = "

    .line 498
    .line 499
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 503
    .line 504
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3700(Lcom/haima/hmcp/websocket/WebSocketConnection;)J

    .line 505
    .line 506
    .line 507
    move-result-wide v4

    .line 508
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 519
    .line 520
    invoke-static {v0, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I

    .line 521
    .line 522
    .line 523
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 524
    .line 525
    invoke-static {v0, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$802(Lcom/haima/hmcp/websocket/WebSocketConnection;I)I

    .line 526
    .line 527
    .line 528
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 529
    .line 530
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eqz v0, :cond_d

    .line 535
    .line 536
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 537
    .line 538
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 543
    .line 544
    .line 545
    :cond_d
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 546
    .line 547
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    if-eqz v0, :cond_e

    .line 552
    .line 553
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 554
    .line 555
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    sget-object v2, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;->RECEIVE_PANG_SUCCESS:Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;

    .line 560
    .line 561
    const-string v3, ""

    .line 562
    .line 563
    invoke-interface {v0, v2, v3}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onHeartBeat(Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler$HeartBeatState;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 578
    .line 579
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 590
    .line 591
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    const-string v0, "WebSocket Pong received"

    .line 603
    .line 604
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_2

    .line 608
    .line 609
    :cond_f
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 610
    .line 611
    const/4 v4, 0x3

    .line 612
    const-string v5, ")"

    .line 613
    .line 614
    if-eqz v0, :cond_13

    .line 615
    .line 616
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Close;

    .line 617
    .line 618
    iget v0, p1, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 619
    .line 620
    const/16 v6, 0x3e8

    .line 621
    .line 622
    if-ne v0, v6, :cond_10

    .line 623
    .line 624
    const/4 v4, 0x1

    .line 625
    :cond_10
    iget-boolean v0, p1, Lcom/haima/hmcp/websocket/messages/Close;->mIsReply:Z

    .line 626
    .line 627
    const-string v7, " - "

    .line 628
    .line 629
    const-string v8, "WebSocket Close received ("

    .line 630
    .line 631
    if-eqz v0, :cond_11

    .line 632
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 647
    .line 648
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 659
    .line 660
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    iget v3, p1, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 680
    .line 681
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget-object v3, p1, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    .line 688
    .line 689
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 703
    .line 704
    new-array v1, v2, [Z

    .line 705
    .line 706
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3800(Lcom/haima/hmcp/websocket/WebSocketConnection;[Z)V

    .line 707
    .line 708
    .line 709
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 710
    .line 711
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    .line 712
    .line 713
    invoke-static {v0, v4, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3900(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_2

    .line 717
    .line 718
    :cond_11
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 719
    .line 720
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_12

    .line 725
    .line 726
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 727
    .line 728
    invoke-static {p1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4100(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)V

    .line 729
    .line 730
    .line 731
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 732
    .line 733
    new-instance v0, Lcom/haima/hmcp/websocket/messages/Close;

    .line 734
    .line 735
    invoke-direct {v0, v6, v3}, Lcom/haima/hmcp/websocket/messages/Close;-><init>(IZ)V

    .line 736
    .line 737
    .line 738
    invoke-static {p1, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3000(Lcom/haima/hmcp/websocket/WebSocketConnection;Lcom/haima/hmcp/websocket/messages/Message;)V

    .line 739
    .line 740
    .line 741
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 742
    .line 743
    invoke-static {p1, v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4002(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z

    .line 744
    .line 745
    .line 746
    goto/16 :goto_2

    .line 747
    .line 748
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    sget-object v3, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 754
    .line 755
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 762
    .line 763
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 774
    .line 775
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    iget v3, p1, Lcom/haima/hmcp/websocket/messages/Close;->mCode:I

    .line 795
    .line 796
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    iget-object v3, p1, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    .line 803
    .line 804
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 818
    .line 819
    new-array v1, v2, [Z

    .line 820
    .line 821
    invoke-static {v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3800(Lcom/haima/hmcp/websocket/WebSocketConnection;[Z)V

    .line 822
    .line 823
    .line 824
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 825
    .line 826
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Close;->mReason:Ljava/lang/String;

    .line 827
    .line 828
    invoke-static {v0, v4, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3900(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_2

    .line 832
    .line 833
    :cond_13
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/ServerHandshake;

    .line 834
    .line 835
    if-eqz v0, :cond_19

    .line 836
    .line 837
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 838
    .line 839
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    if-eqz v0, :cond_14

    .line 844
    .line 845
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 846
    .line 847
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 852
    .line 853
    .line 854
    :cond_14
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 855
    .line 856
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    if-eqz v0, :cond_15

    .line 861
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .line 866
    .line 867
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 868
    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 876
    .line 877
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    iget-object v2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 888
    .line 889
    invoke-static {v2}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    const-string v2, "mSocketTimeoutTask cancel"

    .line 901
    .line 902
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 906
    .line 907
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 912
    .line 913
    .line 914
    :cond_15
    check-cast p1, Lcom/haima/hmcp/websocket/messages/ServerHandshake;

    .line 915
    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    .line 917
    .line 918
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .line 920
    .line 921
    sget-object v2, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 922
    .line 923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 930
    .line 931
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 942
    .line 943
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    const-string v4, "opening handshake received"

    .line 955
    .line 956
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 960
    .line 961
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    if-eqz v0, :cond_18

    .line 966
    .line 967
    :try_start_0
    const-string v0, "12520"

    .line 968
    .line 969
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 970
    .line 971
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    invoke-static {v4}, Lcom/haima/hmcp/utils/Utils;->safeToSocketString(Ljava/net/Socket;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v4

    .line 979
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 980
    .line 981
    invoke-static {v5, v0, v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 985
    .line 986
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/ServerHandshake;->headers:Ljava/util/Map;

    .line 987
    .line 988
    const-string v4, "sec-websocket-protocol"

    .line 989
    .line 990
    const/4 v5, 0x0

    .line 991
    invoke-static {v0, p1, v4, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4200(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object p1

    .line 995
    check-cast p1, Ljava/lang/String;

    .line 996
    .line 997
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 998
    .line 999
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1004
    .line 1005
    invoke-interface {v0, v4}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->setConnection(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1009
    .line 1010
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    new-instance v4, Lcom/haima/hmcp/websocket/types/ConnectionResponse;

    .line 1015
    .line 1016
    invoke-direct {v4, p1}, Lcom/haima/hmcp/websocket/types/ConnectionResponse;-><init>(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {v0, v4}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onConnect(Lcom/haima/hmcp/websocket/types/ConnectionResponse;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1023
    .line 1024
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    invoke-interface {p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onOpen()V

    .line 1029
    .line 1030
    .line 1031
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1032
    .line 1033
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 1034
    .line 1035
    .line 1036
    move-result-object p1

    .line 1037
    if-eqz p1, :cond_16

    .line 1038
    .line 1039
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1040
    .line 1041
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 1042
    .line 1043
    .line 1044
    move-result-object p1

    .line 1045
    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1046
    .line 1047
    .line 1048
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1060
    .line 1061
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1072
    .line 1073
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p1

    .line 1084
    const-string v0, "onOpen() called, ready to rock."

    .line 1085
    .line 1086
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    new-instance p1, Ljava/lang/StringBuffer;

    .line 1090
    .line 1091
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1095
    .line 1096
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    .line 1102
    .line 1103
    const-string v0, " websocket handshake success, "

    .line 1104
    .line 1105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    .line 1107
    .line 1108
    const-string v0, "auto ping interval:"

    .line 1109
    .line 1110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    .line 1112
    .line 1113
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1114
    .line 1115
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1127
    .line 1128
    .line 1129
    const-string v0, "auto ping timeout:"

    .line 1130
    .line 1131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1132
    .line 1133
    .line 1134
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1135
    .line 1136
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingTimeout()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1145
    .line 1146
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1159
    .line 1160
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v4

    .line 1164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1171
    .line 1172
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1191
    .line 1192
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p1

    .line 1196
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    .line 1197
    .line 1198
    .line 1199
    move-result p1

    .line 1200
    if-lez p1, :cond_20

    .line 1201
    .line 1202
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1203
    .line 1204
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p1

    .line 1208
    if-eqz p1, :cond_17

    .line 1209
    .line 1210
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1211
    .line 1212
    invoke-static {p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/concurrent/ScheduledFuture;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p1

    .line 1216
    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1217
    .line 1218
    .line 1219
    :cond_17
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1220
    .line 1221
    const-string v0, "mPingerTask"

    .line 1222
    .line 1223
    invoke-static {p1, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v3

    .line 1227
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1228
    .line 1229
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4400(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v4

    .line 1233
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1234
    .line 1235
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    .line 1240
    .line 1241
    .line 1242
    move-result v0

    .line 1243
    int-to-long v5, v0

    .line 1244
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1245
    .line 1246
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    int-to-long v7, v0

    .line 1255
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1256
    .line 1257
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    invoke-static {p1, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 1262
    .line 1263
    .line 1264
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    const-string v0, "start mPingerTask at Handshake() "

    .line 1270
    .line 1271
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1275
    .line 1276
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getAutoPingInterval()I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object p1

    .line 1291
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .line 1293
    .line 1294
    goto/16 :goto_2

    .line 1295
    .line 1296
    :catch_0
    move-exception p1

    .line 1297
    sget-object v0, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 1298
    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    .line 1303
    .line 1304
    const-string v2, "onMessage exception"

    .line 1305
    .line 1306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object p1

    .line 1316
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    goto/16 :goto_2

    .line 1320
    .line 1321
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    .line 1332
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1333
    .line 1334
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1345
    .line 1346
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object p1

    .line 1357
    const-string v0, "could not call onOpen() .. handler already NULL"

    .line 1358
    .line 1359
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    goto/16 :goto_2

    .line 1363
    .line 1364
    :cond_19
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 1365
    .line 1366
    if-eqz v0, :cond_1a

    .line 1367
    .line 1368
    check-cast p1, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 1369
    .line 1370
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1371
    .line 1372
    const/4 v1, 0x2

    .line 1373
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/CannotConnect;->reason:Ljava/lang/String;

    .line 1374
    .line 1375
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    goto/16 :goto_2

    .line 1379
    .line 1380
    :cond_1a
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/ConnectionLost;

    .line 1381
    .line 1382
    if-eqz v0, :cond_1b

    .line 1383
    .line 1384
    check-cast p1, Lcom/haima/hmcp/websocket/messages/ConnectionLost;

    .line 1385
    .line 1386
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1387
    .line 1388
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/ConnectionLost;->reason:Ljava/lang/String;

    .line 1389
    .line 1390
    invoke-static {v0, v4, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_2

    .line 1394
    .line 1395
    :cond_1b
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/ProtocolViolation;

    .line 1396
    .line 1397
    if-eqz v0, :cond_1c

    .line 1398
    .line 1399
    check-cast p1, Lcom/haima/hmcp/websocket/messages/ProtocolViolation;

    .line 1400
    .line 1401
    iget-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1402
    .line 1403
    const/4 v0, 0x4

    .line 1404
    const-string v1, "WebSocket protocol violation"

    .line 1405
    .line 1406
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    goto :goto_2

    .line 1410
    :cond_1c
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/Error;

    .line 1411
    .line 1412
    if-eqz v0, :cond_1d

    .line 1413
    .line 1414
    check-cast p1, Lcom/haima/hmcp/websocket/messages/Error;

    .line 1415
    .line 1416
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1417
    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1421
    .line 1422
    .line 1423
    const-string v2, "WebSocket internal error ("

    .line 1424
    .line 1425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    .line 1428
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/Error;->mException:Ljava/lang/Exception;

    .line 1429
    .line 1430
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object p1

    .line 1434
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object p1

    .line 1444
    const/4 v1, 0x5

    .line 1445
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    goto :goto_2

    .line 1449
    :cond_1d
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/ServerError;

    .line 1450
    .line 1451
    if-eqz v0, :cond_1e

    .line 1452
    .line 1453
    check-cast p1, Lcom/haima/hmcp/websocket/messages/ServerError;

    .line 1454
    .line 1455
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1456
    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    .line 1461
    .line 1462
    const-string v2, "Server error "

    .line 1463
    .line 1464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    .line 1467
    iget-object p1, p1, Lcom/haima/hmcp/websocket/messages/ServerError;->mStatusMessage:Ljava/lang/String;

    .line 1468
    .line 1469
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object p1

    .line 1476
    const/4 v1, 0x6

    .line 1477
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4500(Lcom/haima/hmcp/websocket/WebSocketConnection;ILjava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    goto :goto_2

    .line 1481
    :cond_1e
    instance-of v0, p1, Lcom/haima/hmcp/websocket/messages/CountlyMessage;

    .line 1482
    .line 1483
    if-eqz v0, :cond_1f

    .line 1484
    .line 1485
    check-cast p1, Lcom/haima/hmcp/websocket/messages/CountlyMessage;

    .line 1486
    .line 1487
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1488
    .line 1489
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v0

    .line 1493
    if-eqz v0, :cond_20

    .line 1494
    .line 1495
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1496
    .line 1497
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    invoke-virtual {p1}, Lcom/haima/hmcp/websocket/messages/CountlyMessage;->toString()Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object p1

    .line 1505
    invoke-interface {v0, p1}, Lcom/haima/hmcp/websocket/interfaces/IWebSocketConnectionHandler;->onMessage(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    goto :goto_2

    .line 1509
    :cond_1f
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$8;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1510
    .line 1511
    invoke-static {v0, p1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$4600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/Object;)V

    .line 1512
    .line 1513
    .line 1514
    :cond_20
    :goto_2
    return-void
.end method
