.class public Lcom/tencent/cos/task/DownloadTask;
.super Lcom/tencent/cos/task/Task;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.DownloadTask"


# instance fields
.field private break_download_flag:Z

.field private downloadUrl:Ljava/lang/String;

.field private localPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/task/Task;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getDownloadUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getSavePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private makeDir(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 79
    .line 80
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/tencent/cos/task/DownloadTask;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {p0, v2}, Lcom/tencent/cos/task/DownloadTask;->makeDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .line 109
    .line 110
    const-string v2, "/"

    .line 111
    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_1
    move-object v8, v1

    .line 135
    goto :goto_2

    .line 136
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto :goto_1

    .line 165
    :goto_2
    new-instance v1, Ljava/io/File;

    .line 166
    .line 167
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 171
    .line 172
    .line 173
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    const-wide/16 v3, 0x0

    .line 175
    .line 176
    if-nez v2, :cond_2

    .line 177
    .line 178
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catch_0
    move-exception v1

    .line 189
    :try_start_3
    sget-object v2, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {v2, v5, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :goto_3
    move-wide v1, v3

    .line 199
    goto :goto_4

    .line 200
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    :goto_4
    iget-boolean v5, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    .line 205
    .line 206
    if-nez v5, :cond_3

    .line 207
    .line 208
    move-wide v4, v3

    .line 209
    goto :goto_5

    .line 210
    :cond_3
    move-wide v4, v1

    .line 211
    :goto_5
    sget-object v1, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v3, "offset ="

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, " ;path ="

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, "; filelen ="

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    move-object v3, p0

    .line 250
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/cos/task/DownloadTask;->downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;

    .line 251
    .line 252
    .line 253
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    return-object v0

    .line 255
    :catch_1
    move-exception v1

    .line 256
    sget-object v2, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    .line 257
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v4, "connection exception"

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    iget-boolean v3, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 283
    .line 284
    if-eqz v3, :cond_6

    .line 285
    .line 286
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 287
    .line 288
    if-eqz v0, :cond_4

    .line 289
    .line 290
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 291
    .line 292
    .line 293
    :cond_4
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    .line 294
    .line 295
    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 296
    .line 297
    .line 298
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 299
    .line 300
    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    iput v3, v0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 305
    .line 306
    const-string v3, " task is canceled"

    .line 307
    .line 308
    iput-object v3, v0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 309
    .line 310
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 311
    .line 312
    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 313
    .line 314
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 315
    .line 316
    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 317
    .line 318
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    if-eqz v3, :cond_5

    .line 325
    .line 326
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 327
    .line 328
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 333
    .line 334
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 335
    .line 336
    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v3, v4, v0}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 341
    .line 342
    .line 343
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v4, "task: "

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 354
    .line 355
    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v4}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v4, " canceled"

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    return-object v0

    .line 383
    :cond_6
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 384
    .line 385
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 386
    .line 387
    invoke-virtual {v4}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    invoke-static {v3, v4, v1}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_8

    .line 396
    .line 397
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 398
    .line 399
    if-eqz v3, :cond_7

    .line 400
    .line 401
    invoke-interface {v3}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 402
    .line 403
    .line 404
    :cond_7
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 405
    .line 406
    add-int/2addr v3, v0

    .line 407
    iput v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 408
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v3, ";retry ="

    .line 422
    .line 423
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 427
    .line 428
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-static {v2, v0, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Lcom/tencent/cos/task/DownloadTask;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    return-object v0

    .line 443
    :cond_8
    new-instance v0, Lcom/tencent/cos/model/GetObjectResult;

    .line 444
    .line 445
    invoke-direct {v0}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 446
    .line 447
    .line 448
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 449
    .line 450
    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    iput v3, v0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    iput-object v3, v0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 461
    .line 462
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 463
    .line 464
    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 465
    .line 466
    iget-object v3, p0, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 467
    .line 468
    iput-object v3, v0, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 469
    .line 470
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 471
    .line 472
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-eqz v3, :cond_9

    .line 477
    .line 478
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 479
    .line 480
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 485
    .line 486
    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v3, v4, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 491
    .line 492
    .line 493
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-static {v2, v3, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    iput-object v4, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 10
    .line 11
    :try_start_0
    new-instance v5, Lokhttp3/Request$Builder;

    .line 12
    .line 13
    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 23
    .line 24
    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v8, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v6, "Range"

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v8, "bytes="

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v8, "-"

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iput-object v5, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 108
    .line 109
    iget-object v5, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 110
    .line 111
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const/16 v6, 0x400

    .line 116
    .line 117
    new-array v7, v6, [B

    .line 118
    .line 119
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 128
    .line 129
    const-string v9, "rw"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    move-object/from16 v10, p5

    .line 132
    .line 133
    :try_start_2
    invoke-direct {v8, v10, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_3
    invoke-virtual {v8, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 137
    .line 138
    .line 139
    iget-object v4, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 146
    .line 147
    const-wide/16 v11, 0x0

    .line 148
    .line 149
    :goto_1
    invoke-virtual {v5, v7, v0, v6}, Ljava/io/InputStream;->read([BII)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    const/4 v13, -0x1

    .line 154
    if-eq v9, v13, :cond_2

    .line 155
    .line 156
    cmp-long v13, v11, p3

    .line 157
    .line 158
    if-gtz v13, :cond_2

    .line 159
    .line 160
    invoke-virtual {v8, v7, v0, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 161
    .line 162
    .line 163
    int-to-long v13, v9

    .line 164
    add-long v17, v11, v13

    .line 165
    .line 166
    if-eqz v4, :cond_1

    .line 167
    .line 168
    iget-object v9, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 169
    .line 170
    invoke-virtual {v9}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    add-long v13, v17, v2

    .line 175
    .line 176
    move-object v11, v4

    .line 177
    move-wide/from16 v15, p3

    .line 178
    .line 179
    invoke-interface/range {v11 .. v16}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V

    .line 180
    .line 181
    .line 182
    :cond_1
    move-wide/from16 v11, v17

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    new-instance v4, Lcom/tencent/cos/model/GetObjectResult;

    .line 186
    .line 187
    invoke-direct {v4}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 188
    .line 189
    .line 190
    iput v0, v4, Lcom/tencent/cos/model/COSResult;->code:I

    .line 191
    .line 192
    const-string v0, "success"

    .line 193
    .line 194
    iput-object v0, v4, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v0, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v0, v4, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v0, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 201
    .line 202
    iput-object v0, v4, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 219
    .line 220
    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-interface {v0, v6, v4}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 225
    .line 226
    .line 227
    :cond_3
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 228
    .line 229
    if-eqz v0, :cond_4

    .line 230
    .line 231
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .line 233
    .line 234
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    move-object v2, v0

    .line 240
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catch_1
    move-exception v0

    .line 248
    move-object v2, v0

    .line 249
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    :goto_3
    return-object v4

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    move-object v2, v0

    .line 255
    goto :goto_4

    .line 256
    :catch_2
    move-exception v0

    .line 257
    goto :goto_6

    .line 258
    :catch_3
    move-exception v0

    .line 259
    goto :goto_5

    .line 260
    :catchall_1
    move-exception v0

    .line 261
    move-object v2, v0

    .line 262
    move-object v8, v4

    .line 263
    :goto_4
    move-object v4, v5

    .line 264
    goto/16 :goto_e

    .line 265
    .line 266
    :catch_4
    move-exception v0

    .line 267
    move-object/from16 v10, p5

    .line 268
    .line 269
    :goto_5
    move-object v8, v4

    .line 270
    :goto_6
    move-object v4, v5

    .line 271
    goto :goto_7

    .line 272
    :catchall_2
    move-exception v0

    .line 273
    move-object v2, v0

    .line 274
    move-object v8, v4

    .line 275
    goto/16 :goto_e

    .line 276
    .line 277
    :catch_5
    move-exception v0

    .line 278
    move-object/from16 v10, p5

    .line 279
    .line 280
    move-object v8, v4

    .line 281
    :goto_7
    :try_start_6
    sget-object v5, Lcom/tencent/cos/task/DownloadTask;->TAG:Ljava/lang/String;

    .line 282
    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v7, "connection exception "

    .line 289
    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {v5, v6, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    iget-boolean v6, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 308
    .line 309
    if-eqz v6, :cond_9

    .line 310
    .line 311
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 312
    .line 313
    if-eqz v2, :cond_5

    .line 314
    .line 315
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 316
    .line 317
    .line 318
    :cond_5
    new-instance v2, Lcom/tencent/cos/model/GetObjectResult;

    .line 319
    .line 320
    invoke-direct {v2}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 321
    .line 322
    .line 323
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 324
    .line 325
    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    iput v3, v2, Lcom/tencent/cos/model/COSResult;->code:I

    .line 330
    .line 331
    const-string v3, "task is canceled"

    .line 332
    .line 333
    iput-object v3, v2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 336
    .line 337
    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 340
    .line 341
    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 342
    .line 343
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    if-eqz v3, :cond_6

    .line 350
    .line 351
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lcom/tencent/cos/task/listener/IDownloadTaskListener;

    .line 358
    .line 359
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 360
    .line 361
    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-interface {v3, v6, v2}, Lcom/tencent/cos/task/listener/IDownloadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 366
    .line 367
    .line 368
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v6, "task: "

    .line 374
    .line 375
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 379
    .line 380
    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    invoke-virtual {v6}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v6, " canceled"

    .line 392
    .line 393
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v5, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 405
    .line 406
    .line 407
    if-eqz v4, :cond_7

    .line 408
    .line 409
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :catch_6
    move-exception v0

    .line 414
    move-object v3, v0

    .line 415
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    .line 419
    .line 420
    :try_start_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :catch_7
    move-exception v0

    .line 425
    move-object v3, v0

    .line 426
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    :cond_8
    :goto_9
    return-object v2

    .line 430
    :cond_9
    :try_start_9
    iget v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 431
    .line 432
    iget-object v7, v1, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 433
    .line 434
    invoke-virtual {v7}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    invoke-static {v6, v7, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-eqz v6, :cond_d

    .line 443
    .line 444
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 445
    .line 446
    if-eqz v6, :cond_a

    .line 447
    .line 448
    invoke-interface {v6}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 449
    .line 450
    .line 451
    :cond_a
    iget v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 452
    .line 453
    add-int/lit8 v6, v6, 0x1

    .line 454
    .line 455
    iput v6, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 456
    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v7, ";retry ="

    .line 470
    .line 471
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget v7, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 475
    .line 476
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    invoke-static {v5, v6, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/cos/task/DownloadTask;->downloadSlice(JJLjava/lang/String;)Lcom/tencent/cos/model/COSResult;

    .line 487
    .line 488
    .line 489
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 490
    if-eqz v4, :cond_b

    .line 491
    .line 492
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 493
    .line 494
    .line 495
    goto :goto_a

    .line 496
    :catch_8
    move-exception v0

    .line 497
    move-object v3, v0

    .line 498
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    :cond_b
    :goto_a
    if-eqz v8, :cond_c

    .line 502
    .line 503
    :try_start_b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 504
    .line 505
    .line 506
    goto :goto_b

    .line 507
    :catch_9
    move-exception v0

    .line 508
    move-object v3, v0

    .line 509
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    :cond_c
    :goto_b
    return-object v2

    .line 513
    :cond_d
    :try_start_c
    new-instance v2, Lcom/tencent/cos/model/GetObjectResult;

    .line 514
    .line 515
    invoke-direct {v2}, Lcom/tencent/cos/model/GetObjectResult;-><init>()V

    .line 516
    .line 517
    .line 518
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 519
    .line 520
    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    iput v3, v2, Lcom/tencent/cos/model/COSResult;->code:I

    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    iput-object v3, v2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 531
    .line 532
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 533
    .line 534
    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->downloadUrl:Ljava/lang/String;

    .line 535
    .line 536
    iget-object v3, v1, Lcom/tencent/cos/task/DownloadTask;->localPath:Ljava/lang/String;

    .line 537
    .line 538
    iput-object v3, v2, Lcom/tencent/cos/model/GetObjectResult;->localPath:Ljava/lang/String;

    .line 539
    .line 540
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 541
    .line 542
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    if-eqz v3, :cond_e

    .line 547
    .line 548
    iget-object v3, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 549
    .line 550
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 555
    .line 556
    invoke-virtual {v6}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-interface {v3, v6, v2}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 561
    .line 562
    .line 563
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-static {v5, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 568
    .line 569
    .line 570
    if-eqz v4, :cond_f

    .line 571
    .line 572
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 573
    .line 574
    .line 575
    goto :goto_c

    .line 576
    :catch_a
    move-exception v0

    .line 577
    move-object v3, v0

    .line 578
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    :cond_f
    :goto_c
    if-eqz v8, :cond_10

    .line 582
    .line 583
    :try_start_e
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :catch_b
    move-exception v0

    .line 588
    move-object v3, v0

    .line 589
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    :cond_10
    :goto_d
    return-object v2

    .line 593
    :catchall_3
    move-exception v0

    .line 594
    move-object v2, v0

    .line 595
    :goto_e
    if-eqz v4, :cond_11

    .line 596
    .line 597
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 598
    .line 599
    .line 600
    goto :goto_f

    .line 601
    :catch_c
    move-exception v0

    .line 602
    move-object v3, v0

    .line 603
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    :cond_11
    :goto_f
    if-eqz v8, :cond_12

    .line 607
    .line 608
    :try_start_10
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 609
    .line 610
    .line 611
    goto :goto_10

    .line 612
    :catch_d
    move-exception v0

    .line 613
    move-object v3, v0

    .line 614
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    :cond_12
    :goto_10
    throw v2
.end method

.method protected getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "/"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "?"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public pause()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/cos/task/DownloadTask;->break_download_flag:Z

    .line 3
    .line 4
    return v0
.end method
