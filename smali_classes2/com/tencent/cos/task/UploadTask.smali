.class public Lcom/tencent/cos/task/UploadTask;
.super Lcom/tencent/cos/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.UploadTask"


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
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 12

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 11
    .line 12
    invoke-virtual {p0, v4}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Lokhttp3/Request$Builder;

    .line 17
    .line 18
    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    sget-object v6, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    new-instance v1, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_1

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ljava/util/Map$Entry;

    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 150
    .line 151
    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 152
    .line 153
    .line 154
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v0, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_3

    .line 187
    .line 188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Ljava/util/Map$Entry;

    .line 193
    .line 194
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v7, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    goto :goto_2

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 212
    .line 213
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->isUploadFlag()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const-string v6, "\""

    .line 226
    .line 227
    const-string v7, "form-data; name=\""

    .line 228
    .line 229
    const-string v8, "Content-Disposition"

    .line 230
    .line 231
    const/4 v9, 0x2

    .line 232
    if-eqz v5, :cond_4

    .line 233
    .line 234
    :try_start_1
    new-array v5, v9, [Ljava/lang/String;

    .line 235
    .line 236
    aput-object v8, v5, v2

    .line 237
    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 247
    .line 248
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    aput-object v10, v5, v3

    .line 263
    .line 264
    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    new-instance v10, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    .line 269
    .line 270
    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 271
    .line 272
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    invoke-direct {v10, p0, v11, v1}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/File;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v5, v10}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    :cond_4
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 284
    .line 285
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    if-eqz v5, :cond_5

    .line 290
    .line 291
    new-array v5, v9, [Ljava/lang/String;

    .line 292
    .line 293
    aput-object v8, v5, v2

    .line 294
    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 304
    .line 305
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    aput-object v10, v5, v3

    .line 320
    .line 321
    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    new-instance v10, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    .line 326
    .line 327
    iget-object v11, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 328
    .line 329
    invoke-virtual {v11}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    invoke-direct {v10, p0, v11, v1}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;[BLjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v5, v10}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    if-eqz v1, :cond_6

    .line 347
    .line 348
    new-array v1, v9, [Ljava/lang/String;

    .line 349
    .line 350
    aput-object v8, v1, v2

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 361
    .line 362
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    aput-object v2, v1, v3

    .line 377
    .line 378
    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    new-instance v2, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;

    .line 383
    .line 384
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 385
    .line 386
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    const/4 v8, 0x0

    .line 391
    iget-object v5, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 392
    .line 393
    invoke-virtual {v5}, Lcom/tencent/cos/network/HttpRequest;->getLength()J

    .line 394
    .line 395
    .line 396
    move-result-wide v9

    .line 397
    move-object v5, v2

    .line 398
    move-object v6, p0

    .line 399
    invoke-direct/range {v5 .. v10}, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/InputStream;Ljava/lang/String;J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1, v2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    :cond_6
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :goto_3
    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 419
    .line 420
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    iput-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 425
    .line 426
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 427
    .line 428
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    .line 433
    .line 434
    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 435
    .line 436
    .line 437
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 444
    .line 445
    .line 446
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 451
    .line 452
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    if-eqz v1, :cond_8

    .line 457
    .line 458
    iget v1, v0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 459
    .line 460
    if-nez v1, :cond_7

    .line 461
    .line 462
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 463
    .line 464
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 469
    .line 470
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 475
    .line 476
    .line 477
    goto :goto_4

    .line 478
    :cond_7
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 479
    .line 480
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 485
    .line 486
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 491
    .line 492
    .line 493
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 494
    .line 495
    if-eqz v1, :cond_9

    .line 496
    .line 497
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 498
    .line 499
    .line 500
    :cond_9
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    .line 501
    .line 502
    const-string v2, "completed"

    .line 503
    .line 504
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    .line 506
    .line 507
    return-object v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    iget-boolean v1, p0, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 510
    .line 511
    const-string v2, "}"

    .line 512
    .line 513
    const-string v4, ",message:"

    .line 514
    .line 515
    const-string v5, "{code:"

    .line 516
    .line 517
    if-eqz v1, :cond_c

    .line 518
    .line 519
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 520
    .line 521
    if-eqz v0, :cond_a

    .line 522
    .line 523
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 524
    .line 525
    .line 526
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    sget-object v1, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 547
    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 564
    .line 565
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 570
    .line 571
    .line 572
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 577
    .line 578
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    if-eqz v1, :cond_b

    .line 583
    .line 584
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 585
    .line 586
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    check-cast v1, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 591
    .line 592
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 593
    .line 594
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 599
    .line 600
    .line 601
    :cond_b
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    .line 602
    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    .line 608
    const-string v3, " task "

    .line 609
    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 614
    .line 615
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v3, "  is canceled"

    .line 627
    .line 628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    return-object v0

    .line 639
    :cond_c
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 640
    .line 641
    iget-object v6, p0, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 642
    .line 643
    invoke-virtual {v6}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    invoke-static {v1, v6, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    if-eqz v1, :cond_e

    .line 652
    .line 653
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 654
    .line 655
    if-eqz v1, :cond_d

    .line 656
    .line 657
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 658
    .line 659
    .line 660
    :cond_d
    iget v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 661
    .line 662
    add-int/2addr v1, v3

    .line 663
    iput v1, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 664
    .line 665
    sget-object v1, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    .line 666
    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v3, ";retry ="

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    iget v3, p0, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 685
    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-static {v1, v2, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p0}, Lcom/tencent/cos/task/UploadTask;->doPostRequest()Lcom/tencent/cos/model/COSResult;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    return-object v0

    .line 701
    :cond_e
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 702
    .line 703
    if-eqz v1, :cond_f

    .line 704
    .line 705
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 706
    .line 707
    .line 708
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    sget-object v3, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 717
    .line 718
    invoke-virtual {v3}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    const-string v4, " "

    .line 733
    .line 734
    const-string v5, ""

    .line 735
    .line 736
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    .line 747
    .line 748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v1, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 756
    .line 757
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 762
    .line 763
    .line 764
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 769
    .line 770
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    if-eqz v2, :cond_10

    .line 775
    .line 776
    iget-object v2, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 777
    .line 778
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    iget-object v3, p0, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 783
    .line 784
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 789
    .line 790
    .line 791
    :cond_10
    sget-object v2, Lcom/tencent/cos/task/UploadTask;->TAG:Ljava/lang/String;

    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    .line 799
    .line 800
    return-object v1
.end method
