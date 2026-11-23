.class Lcom/cloudplay/messagesdk/socket/b/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/b/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

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
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->o(Lcom/cloudplay/messagesdk/socket/b/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "createHandler() "

    .line 8
    .line 9
    const-string v2, "WebSocketConnection"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ",onClose called already, ignore message."

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/o;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onMessage(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ",could not call onTextMessage() .. handler already NULL"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_2
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/l;->a:[B

    .line 123
    .line 124
    invoke-interface {v0, p1, v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onMessage([BZ)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, ",could not call onRawTextMessage() .. handler already NULL"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_4
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    .line 161
    .line 162
    const/4 v4, 0x1

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;->a:[B

    .line 182
    .line 183
    invoke-interface {v0, p1, v4}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onMessage([BZ)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v0, "createHandler()"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, ",could not call onBinaryMessage() .. handler already NULL"

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :cond_6
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/h;

    .line 222
    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/h;

    .line 226
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ",WebSocket Ping received"

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/h;->a:[B

    .line 257
    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 261
    .line 262
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onPing()V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_7
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/h;->a:[B

    .line 278
    .line 279
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onPing([B)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_8
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/j;

    .line 285
    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/j;

    .line 289
    .line 290
    iget-object v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/j;->a:[B

    .line 291
    .line 292
    if-nez v0, :cond_9

    .line 293
    .line 294
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onPong()V

    .line 301
    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/j;->a:[B

    .line 311
    .line 312
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onPong([B)V

    .line 313
    .line 314
    .line 315
    :goto_0
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 316
    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v5

    .line 321
    invoke-static {p1, v5, v6}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;J)J

    .line 322
    .line 323
    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 333
    .line 334
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v0, " PingPongTimeout RecvPong = "

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 347
    .line 348
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->A(Lcom/cloudplay/messagesdk/socket/b/d;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v5

    .line 352
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 363
    .line 364
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->j(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    if-eqz p1, :cond_a

    .line 369
    .line 370
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 371
    .line 372
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->j(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-nez p1, :cond_a

    .line 381
    .line 382
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 383
    .line 384
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->j(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_a

    .line 393
    .line 394
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->j(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-interface {p1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 401
    .line 402
    .line 403
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 412
    .line 413
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v0, ",WebSocket Pong received"

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_b
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;

    .line 435
    .line 436
    const/4 v5, 0x3

    .line 437
    const-string v6, ")"

    .line 438
    .line 439
    if-eqz v0, :cond_f

    .line 440
    .line 441
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/d;

    .line 442
    .line 443
    iget v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 444
    .line 445
    const/16 v7, 0x3e8

    .line 446
    .line 447
    if-ne v0, v7, :cond_c

    .line 448
    .line 449
    const/4 v5, 0x1

    .line 450
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v8, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 459
    .line 460
    invoke-static {v8}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v8, " crossbarCloseCode:"

    .line 468
    .line 469
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v8, ",close.mCode:"

    .line 476
    .line 477
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget v8, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 481
    .line 482
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v8, ",close.mIsReply:"

    .line 486
    .line 487
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget-boolean v8, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->c:Z

    .line 491
    .line 492
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v8, ",mActive:"

    .line 496
    .line 497
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget-object v8, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 501
    .line 502
    invoke-static {v8}, Lcom/cloudplay/messagesdk/socket/b/d;->q(Lcom/cloudplay/messagesdk/socket/b/d;)Z

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    iget-boolean v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->c:Z

    .line 517
    .line 518
    const-string v8, " - "

    .line 519
    .line 520
    const-string v9, ",WebSocket Close received ("

    .line 521
    .line 522
    if-eqz v0, :cond_d

    .line 523
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 533
    .line 534
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget v1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 545
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 568
    .line 569
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->s(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 570
    .line 571
    .line 572
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 573
    .line 574
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {v0, v5, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :cond_d
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 582
    .line 583
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->q(Lcom/cloudplay/messagesdk/socket/b/d;)Z

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-eqz v0, :cond_e

    .line 588
    .line 589
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 590
    .line 591
    invoke-static {p1, v3}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;Z)V

    .line 592
    .line 593
    .line 594
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 595
    .line 596
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/d;

    .line 597
    .line 598
    invoke-direct {v0, v7, v4}, Lcom/cloudplay/messagesdk/socket/b/g/d;-><init>(IZ)V

    .line 599
    .line 600
    .line 601
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    .line 602
    .line 603
    .line 604
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 605
    .line 606
    invoke-static {p1, v3}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;Z)Z

    .line 607
    .line 608
    .line 609
    goto/16 :goto_1

    .line 610
    .line 611
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 620
    .line 621
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    iget v1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-object v1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 655
    .line 656
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->s(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 657
    .line 658
    .line 659
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 660
    .line 661
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    .line 662
    .line 663
    invoke-static {v0, v5, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_1

    .line 667
    .line 668
    :cond_f
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/n;

    .line 669
    .line 670
    if-eqz v0, :cond_12

    .line 671
    .line 672
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 673
    .line 674
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->m(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    if-eqz v0, :cond_10

    .line 679
    .line 680
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 681
    .line 682
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->m(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-nez v0, :cond_10

    .line 691
    .line 692
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 693
    .line 694
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->m(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-nez v0, :cond_10

    .line 703
    .line 704
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 705
    .line 706
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->m(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledFuture;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 711
    .line 712
    .line 713
    :cond_10
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/n;

    .line 714
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 724
    .line 725
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v3, ",opening handshake received"

    .line 733
    .line 734
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 745
    .line 746
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    if-eqz v0, :cond_11

    .line 751
    .line 752
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 753
    .line 754
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/n;->a:Ljava/util/Map;

    .line 755
    .line 756
    const-string v3, "sec-websocket-protocol"

    .line 757
    .line 758
    const/4 v4, 0x0

    .line 759
    invoke-static {v0, p1, v3, v4}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    check-cast p1, Ljava/lang/String;

    .line 764
    .line 765
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 766
    .line 767
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 772
    .line 773
    invoke-interface {v0, v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->setConnection(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 774
    .line 775
    .line 776
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 777
    .line 778
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    new-instance v3, Lcom/cloudplay/messagesdk/socket/b/h/a;

    .line 783
    .line 784
    invoke-direct {v3, p1}, Lcom/cloudplay/messagesdk/socket/b/h/a;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-interface {v0, v3}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onConnect(Lcom/cloudplay/messagesdk/socket/b/h/a;)V

    .line 788
    .line 789
    .line 790
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 791
    .line 792
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->p(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IWebSocketConnectionHandler;->onOpen()V

    .line 797
    .line 798
    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 808
    .line 809
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    const-string v0, ",onOpen() called, ready to rock."

    .line 817
    .line 818
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 829
    .line 830
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 831
    .line 832
    .line 833
    move-result-object p1

    .line 834
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a()I

    .line 835
    .line 836
    .line 837
    move-result p1

    .line 838
    if-lez p1, :cond_18

    .line 839
    .line 840
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 841
    .line 842
    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/d;->x(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 847
    .line 848
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->t(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 853
    .line 854
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a()I

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    int-to-long v2, v2

    .line 863
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 864
    .line 865
    invoke-static {v4}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 866
    .line 867
    .line 868
    move-result-object v4

    .line 869
    invoke-virtual {v4}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a()I

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    int-to-long v4, v4

    .line 874
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 875
    .line 876
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 881
    .line 882
    .line 883
    goto/16 :goto_1

    .line 884
    .line 885
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 894
    .line 895
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    const-string v0, ",could not call onOpen() .. handler already NULL"

    .line 903
    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object p1

    .line 911
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_1

    .line 915
    .line 916
    :cond_12
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/b;

    .line 917
    .line 918
    if-eqz v0, :cond_13

    .line 919
    .line 920
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/b;

    .line 921
    .line 922
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 923
    .line 924
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/b;->a:Ljava/lang/String;

    .line 925
    .line 926
    const/4 v1, 0x2

    .line 927
    invoke-static {v0, v1, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 928
    .line 929
    .line 930
    goto/16 :goto_1

    .line 931
    .line 932
    :cond_13
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/e;

    .line 933
    .line 934
    if-eqz v0, :cond_14

    .line 935
    .line 936
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/e;

    .line 937
    .line 938
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 939
    .line 940
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/e;->a:Ljava/lang/String;

    .line 941
    .line 942
    invoke-static {v0, v5, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_1

    .line 946
    .line 947
    :cond_14
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/k;

    .line 948
    .line 949
    if-eqz v0, :cond_15

    .line 950
    .line 951
    iget-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 952
    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    .line 954
    .line 955
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .line 957
    .line 958
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 959
    .line 960
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    const-string v1, ",WebSocket protocol violation"

    .line 968
    .line 969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const/4 v1, 0x4

    .line 977
    invoke-static {p1, v1, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 978
    .line 979
    .line 980
    goto :goto_1

    .line 981
    :cond_15
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/f;

    .line 982
    .line 983
    if-eqz v0, :cond_16

    .line 984
    .line 985
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/f;

    .line 986
    .line 987
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 988
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .line 993
    .line 994
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 995
    .line 996
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v2, ",WebSocket internal error ("

    .line 1004
    .line 1005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/f;->a:Ljava/lang/Exception;

    .line 1009
    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p1

    .line 1014
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p1

    .line 1024
    const/4 v1, 0x5

    .line 1025
    invoke-static {v0, v1, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    goto :goto_1

    .line 1029
    :cond_16
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/m;

    .line 1030
    .line 1031
    if-eqz v0, :cond_17

    .line 1032
    .line 1033
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/m;

    .line 1034
    .line 1035
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 1036
    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 1043
    .line 1044
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    const-string v2, ",Server error "

    .line 1052
    .line 1053
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/m;->a:Ljava/lang/String;

    .line 1057
    .line 1058
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p1

    .line 1065
    const/4 v1, 0x6

    .line 1066
    invoke-static {v0, v1, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;ILjava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_1

    .line 1070
    :cond_17
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$d;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 1071
    .line 1072
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    :cond_18
    :goto_1
    return-void
.end method
