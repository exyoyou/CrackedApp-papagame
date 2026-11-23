.class Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/websocket/WebSocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketConnector"
.end annotation


# instance fields
.field private mNeedParseIp:Z

.field final synthetic this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->mNeedParseIp:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const-string v0, " mName="

    .line 2
    .line 3
    const-string v1, " mSocket="

    .line 4
    .line 5
    const-string v2, "12200"

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "WebSocketConnector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_WEBSOCKET_CONNECT_TIMEOUT_SWITCH:Z

    .line 17
    .line 18
    const-string v4, ","

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v5, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 36
    .line 37
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 48
    .line 49
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v5, "mSocketTimeoutTask start="

    .line 61
    .line 62
    invoke-static {v3, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 66
    .line 67
    const-string v5, "mSocketTimeoutTask"

    .line 68
    .line 69
    invoke-static {v3, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 74
    .line 75
    invoke-static {v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-object v7, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getSocketConnectTimeout()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    add-int/lit16 v7, v7, 0x3e8

    .line 90
    .line 91
    int-to-long v7, v7

    .line 92
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    .line 94
    invoke-interface {v5, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v3, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1402(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 99
    .line 100
    .line 101
    :cond_0
    :try_start_0
    const-string v3, "wss"

    .line 102
    .line 103
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 104
    .line 105
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 116
    .line 117
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v3, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1702(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/Socket;)Ljava/net/Socket;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 130
    .line 131
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v3, v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1702(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/Socket;)Ljava/net/Socket;

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getTLSEnabledProtocols()[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_2

    .line 153
    .line 154
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget-object v6, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 161
    .line 162
    invoke-static {v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v6}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getTLSEnabledProtocols()[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v3, v5, v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1800(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/Socket;[Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    iget-boolean v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->mNeedParseIp:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    const/4 v6, 0x2

    .line 177
    const/4 v7, 0x1

    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    :try_start_1
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 181
    .line 182
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    iget-object v9, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 187
    .line 188
    invoke-static {v9}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v8, v9}, Lcom/haima/hmcp/dns/DnsManager;->getHostAddressSync(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-static {v3, v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    sget-object v8, Lcom/haima/hmcp/websocket/WebSocketConnection;->TAG:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 213
    .line 214
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 225
    .line 226
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const-string v4, "connect url: %s host: %s with DnsManager reslove ip: %s"

    .line 238
    .line 239
    const/4 v8, 0x3

    .line 240
    new-array v9, v8, [Ljava/lang/Object;

    .line 241
    .line 242
    iget-object v10, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 243
    .line 244
    invoke-static {v10}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/URI;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    aput-object v10, v9, v5

    .line 253
    .line 254
    iget-object v10, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 255
    .line 256
    invoke-static {v10}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    aput-object v10, v9, v7

    .line 261
    .line 262
    iget-object v10, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 263
    .line 264
    invoke-static {v10}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    aput-object v10, v9, v6

    .line 269
    .line 270
    invoke-static {v3, v4, v9}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    const-string v3, "12511"

    .line 274
    .line 275
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 276
    .line 277
    const-string v9, "websocket:%s,url: %s, host: %s -> ip: %s"

    .line 278
    .line 279
    const/4 v10, 0x4

    .line 280
    new-array v10, v10, [Ljava/lang/Object;

    .line 281
    .line 282
    iget-object v11, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 283
    .line 284
    invoke-static {v11}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    aput-object v11, v10, v5

    .line 289
    .line 290
    iget-object v11, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 291
    .line 292
    invoke-static {v11}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2000(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/URI;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    aput-object v11, v10, v7

    .line 301
    .line 302
    iget-object v11, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 303
    .line 304
    invoke-static {v11}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    aput-object v11, v10, v6

    .line 309
    .line 310
    iget-object v11, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 311
    .line 312
    invoke-static {v11}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    aput-object v11, v10, v8

    .line 317
    .line 318
    invoke-static {v4, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 323
    .line 324
    invoke-static {v4}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {v8, v3, v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :catch_0
    move-exception v3

    .line 333
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v8, "WebSocketConnector -> DnsManager.getHostAddress got Exception: "

    .line 339
    .line 340
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-static {v3}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 355
    .line 356
    invoke-static {v4, v2, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1300(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 360
    .line 361
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-static {v3, v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 369
    .line 370
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 371
    .line 372
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 373
    .line 374
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    iget-object v9, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 379
    .line 380
    invoke-static {v9}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    invoke-direct {v4, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    invoke-static {v3, v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2102(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 388
    .line 389
    .line 390
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 391
    .line 392
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetSocketAddress;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    sget-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 401
    .line 402
    if-eqz v4, :cond_4

    .line 403
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    const-string v8, "countly debug inetAddress:  mWsReslovedIp="

    .line 410
    .line 411
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 415
    .line 416
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v8, " inetAddress="

    .line 424
    .line 425
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 435
    .line 436
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 447
    .line 448
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-static {v2, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :cond_4
    if-nez v3, :cond_5

    .line 463
    .line 464
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 465
    .line 466
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 467
    .line 468
    .line 469
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 470
    .line 471
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    new-instance v4, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 476
    .line 477
    const-string v8, "InetSocketAddress(%s,%s).getAddress failed"

    .line 478
    .line 479
    new-array v6, v6, [Ljava/lang/Object;

    .line 480
    .line 481
    iget-object v9, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 482
    .line 483
    invoke-static {v9}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    aput-object v9, v6, v5

    .line 488
    .line 489
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 490
    .line 491
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    aput-object v5, v6, v7

    .line 500
    .line 501
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-direct {v4, v5}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-interface {v3, v4}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    :cond_5
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    sget-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 517
    .line 518
    if-eqz v4, :cond_6

    .line 519
    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    const-string v8, "countly debug address:  mWsReslovedIp="

    .line 526
    .line 527
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 531
    .line 532
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v8, " address="

    .line 540
    .line 541
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 551
    .line 552
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 563
    .line 564
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-static {v2, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    :cond_6
    if-nez v3, :cond_7

    .line 579
    .line 580
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 581
    .line 582
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 583
    .line 584
    .line 585
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 586
    .line 587
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    new-instance v4, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 592
    .line 593
    const-string v8, "mInetAddress.getAddress() failed,mWsReslovedIp:%s,mWsPort%s"

    .line 594
    .line 595
    new-array v6, v6, [Ljava/lang/Object;

    .line 596
    .line 597
    iget-object v9, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 598
    .line 599
    invoke-static {v9}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    aput-object v9, v6, v5

    .line 604
    .line 605
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 606
    .line 607
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    aput-object v5, v6, v7

    .line 616
    .line 617
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-direct {v4, v5}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-interface {v3, v4}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    return-void

    .line 628
    :cond_7
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 629
    .line 630
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    invoke-static {v5, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-static {v4, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2202(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 639
    .line 640
    .line 641
    sget-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 642
    .line 643
    const-string v4, " mInetAddress="

    .line 644
    .line 645
    if-eqz v3, :cond_8

    .line 646
    .line 647
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    const-string v5, "countly debug before connect:  mWsReslovedIp="

    .line 653
    .line 654
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 658
    .line 659
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 670
    .line 671
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetAddress;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 682
    .line 683
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 694
    .line 695
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_8
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 710
    .line 711
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 716
    .line 717
    iget-object v6, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 718
    .line 719
    invoke-static {v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetAddress;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    iget-object v8, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 724
    .line 725
    invoke-static {v8}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 726
    .line 727
    .line 728
    move-result v8

    .line 729
    invoke-direct {v5, v6, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 730
    .line 731
    .line 732
    iget-object v6, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 733
    .line 734
    invoke-static {v6}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 735
    .line 736
    .line 737
    move-result-object v6

    .line 738
    invoke-virtual {v6}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getSocketConnectTimeout()I

    .line 739
    .line 740
    .line 741
    move-result v6

    .line 742
    invoke-virtual {v3, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 743
    .line 744
    .line 745
    sget-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 746
    .line 747
    if-eqz v3, :cond_9

    .line 748
    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    const-string v5, "countly debug after connect:  mWsReslovedIp="

    .line 755
    .line 756
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 760
    .line 761
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 772
    .line 773
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2200(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/InetAddress;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 784
    .line 785
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 796
    .line 797
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    :cond_9
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 812
    .line 813
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 818
    .line 819
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    invoke-virtual {v4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getSocketReceiveTimeout()I

    .line 824
    .line 825
    .line 826
    move-result v4

    .line 827
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 828
    .line 829
    .line 830
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 831
    .line 832
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 837
    .line 838
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    invoke-virtual {v4}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getTcpNoDelay()Z

    .line 843
    .line 844
    .line 845
    move-result v4

    .line 846
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 847
    .line 848
    .line 849
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 850
    .line 851
    const-string v3, "mExecutor"

    .line 852
    .line 853
    invoke-static {v0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-static {v0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2302(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 858
    .line 859
    .line 860
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 861
    .line 862
    invoke-virtual {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->isConnected()Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-eqz v0, :cond_a

    .line 867
    .line 868
    :try_start_4
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 869
    .line 870
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2400(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 871
    .line 872
    .line 873
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 874
    .line 875
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2500(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 876
    .line 877
    .line 878
    new-instance v0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;

    .line 879
    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .line 884
    .line 885
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 886
    .line 887
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v4

    .line 891
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v4, ":"

    .line 895
    .line 896
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 900
    .line 901
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1200(Lcom/haima/hmcp/websocket/WebSocketConnection;)I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-direct {v0, v3}, Lcom/haima/hmcp/websocket/messages/ClientHandshake;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 916
    .line 917
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2600(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    iput-object v3, v0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    .line 922
    .line 923
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 924
    .line 925
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    iput-object v3, v0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mQuery:Ljava/lang/String;

    .line 930
    .line 931
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 932
    .line 933
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2800(Lcom/haima/hmcp/websocket/WebSocketConnection;)[Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    iput-object v3, v0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    .line 938
    .line 939
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 940
    .line 941
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$2900(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/util/Map;

    .line 942
    .line 943
    .line 944
    move-result-object v3

    .line 945
    iput-object v3, v0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHeaderList:Ljava/util/Map;

    .line 946
    .line 947
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 948
    .line 949
    invoke-static {v3, v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3000(Lcom/haima/hmcp/websocket/WebSocketConnection;Lcom/haima/hmcp/websocket/messages/Message;)V

    .line 950
    .line 951
    .line 952
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 953
    .line 954
    invoke-static {v0, v7}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3102(Lcom/haima/hmcp/websocket/WebSocketConnection;Z)Z

    .line 955
    .line 956
    .line 957
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 958
    .line 959
    const-string v3, "mHandShakeTask"

    .line 960
    .line 961
    invoke-static {v0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$600(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 966
    .line 967
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3300(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/Runnable;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    iget-object v5, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 972
    .line 973
    invoke-static {v5}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$500(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/types/WebSocketOptions;

    .line 974
    .line 975
    .line 976
    move-result-object v5

    .line 977
    invoke-virtual {v5}, Lcom/haima/hmcp/websocket/types/WebSocketOptions;->getHandShakeTimeoutSec()I

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    int-to-long v5, v5

    .line 982
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 983
    .line 984
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    invoke-static {v0, v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$3202(Lcom/haima/hmcp/websocket/WebSocketConnection;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 989
    .line 990
    .line 991
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 992
    .line 993
    if-eqz v0, :cond_b

    .line 994
    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-string v3, "countly debug ClientHandshake  mName="

    .line 1001
    .line 1002
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    iget-object v3, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1006
    .line 1007
    invoke-static {v3}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1018
    .line 1019
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1031
    .line 1032
    .line 1033
    goto :goto_2

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    iget-object v1, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1036
    .line 1037
    invoke-static {v1}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    new-instance v2, Lcom/haima/hmcp/websocket/messages/Error;

    .line 1042
    .line 1043
    invoke-direct {v2, v0}, Lcom/haima/hmcp/websocket/messages/Error;-><init>(Ljava/lang/Exception;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-interface {v1, v2}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 1047
    .line 1048
    .line 1049
    goto :goto_2

    .line 1050
    :cond_a
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1051
    .line 1052
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 1053
    .line 1054
    .line 1055
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1056
    .line 1057
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    new-instance v1, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 1062
    .line 1063
    const-string v2, "Could not connect to WebSocket server"

    .line 1064
    .line 1065
    invoke-direct {v1, v2}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-interface {v0, v1}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    :cond_b
    :goto_2
    return-void

    .line 1072
    :catch_2
    move-exception v3

    .line 1073
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1074
    .line 1075
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1079
    .line 1080
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v4

    .line 1084
    new-instance v5, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 1085
    .line 1086
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v6

    .line 1090
    invoke-direct {v5, v6}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-interface {v4, v5}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    sget-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 1097
    .line 1098
    if-eqz v4, :cond_c

    .line 1099
    .line 1100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    .line 1104
    .line 1105
    const-string v5, "countly debug Exception:  e.getMessage()="

    .line 1106
    .line 1107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v3

    .line 1114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1121
    .line 1122
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1133
    .line 1134
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    :cond_c
    return-void

    .line 1149
    :catch_3
    move-exception v3

    .line 1150
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1151
    .line 1152
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$000(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    .line 1153
    .line 1154
    .line 1155
    iget-object v4, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1156
    .line 1157
    invoke-static {v4}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$100(Lcom/haima/hmcp/websocket/WebSocketConnection;)Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v4

    .line 1161
    new-instance v5, Lcom/haima/hmcp/websocket/messages/CannotConnect;

    .line 1162
    .line 1163
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v6

    .line 1167
    invoke-direct {v5, v6}, Lcom/haima/hmcp/websocket/messages/CannotConnect;-><init>(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-interface {v4, v5}, Lcom/haima/hmcp/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 1171
    .line 1172
    .line 1173
    sget-boolean v4, Lcom/haima/hmcp/Constants;->CONFIG_COUNTLY_DEBUG_SWITCH:Z

    .line 1174
    .line 1175
    if-eqz v4, :cond_d

    .line 1176
    .line 1177
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    const-string v5, "countly debug IOException:  e.getMessage()="

    .line 1183
    .line 1184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v3

    .line 1191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1198
    .line 1199
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    iget-object v0, p0, Lcom/haima/hmcp/websocket/WebSocketConnection$WebSocketConnector;->this$0:Lcom/haima/hmcp/websocket/WebSocketConnection;

    .line 1210
    .line 1211
    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->access$1700(Lcom/haima/hmcp/websocket/WebSocketConnection;)Ljava/net/Socket;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    :cond_d
    return-void
.end method
