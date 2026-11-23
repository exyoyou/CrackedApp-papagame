.class Lcom/cloudplay/messagesdk/socket/b/d$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/socket/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method private constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/d$f;-><init>(Lcom/cloudplay/messagesdk/socket/b/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

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
    const-string v2, "HM WebSocketConnector:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "wss"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 46
    .line 47
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/net/Socket;)Ljava/net/Socket;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 60
    .line 61
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/net/Socket;)Ljava/net/Socket;

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/h/b;->m()[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/h/b;->m()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v0, v1, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/net/Socket;[Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 112
    .line 113
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->d(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 118
    .line 119
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->e(Lcom/cloudplay/messagesdk/socket/b/d;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/h/b;->k()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->l()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->n()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->c(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/net/Socket;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 184
    .line 185
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->j()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v2, 0x1

    .line 194
    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->x(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 215
    .line 216
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->f(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->g(Lcom/cloudplay/messagesdk/socket/b/d;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lcom/cloudplay/messagesdk/socket/b/g/c;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 232
    .line 233
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->d(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, ":"

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 246
    .line 247
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->e(Lcom/cloudplay/messagesdk/socket/b/d;)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-direct {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/g/c;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 262
    .line 263
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->h(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/g/c;->b:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->i(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/g/c;->c:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->k(Lcom/cloudplay/messagesdk/socket/b/d;)[Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/g/c;->e:[Ljava/lang/String;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 286
    .line 287
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->l(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/Map;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/g/c;->f:Ljava/util/Map;

    .line 292
    .line 293
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 294
    .line 295
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Lcom/cloudplay/messagesdk/socket/b/g/g;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 299
    .line 300
    invoke-static {v0, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Z)Z

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->x(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 310
    .line 311
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->n(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 316
    .line 317
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->d()I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    int-to-long v3, v3

    .line 326
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 327
    .line 328
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->b(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    .line 334
    .line 335
    goto :goto_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 338
    .line 339
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    new-instance v2, Lcom/cloudplay/messagesdk/socket/b/g/f;

    .line 344
    .line 345
    invoke-direct {v2, v0}, Lcom/cloudplay/messagesdk/socket/b/g/f;-><init>(Ljava/lang/Exception;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 353
    .line 354
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/b;

    .line 359
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 366
    .line 367
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v3, ",Could not connect to WebSocket server"

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/b/g/b;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :goto_1
    return-void

    .line 390
    :catch_1
    move-exception v0

    .line 391
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$f;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 392
    .line 393
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    new-instance v2, Lcom/cloudplay/messagesdk/socket/b/g/b;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-direct {v2, v0}, Lcom/cloudplay/messagesdk/socket/b/g/b;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    return-void
.end method
