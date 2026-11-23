.class Lcom/haima/hmcp/utils/FileDownloadUtil$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/FileDownloadUtil;->speedTest(Landroid/content/Context;Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

.field final synthetic val$jsonMap:Ljava/util/Map;

.field final synthetic val$listener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/FileDownloadUtil;Ljava/util/Map;Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$listener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "speed test->"

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    const-string v3, "error"

    .line 8
    .line 9
    const-string v4, "speed test->speed test is running"

    .line 10
    .line 11
    const-string v5, "FileDownloadUtil"

    .line 12
    .line 13
    invoke-static {v5, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v4, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v4, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 22
    .line 23
    const-string v6, "running"

    .line 24
    .line 25
    const-string v7, "status"

    .line 26
    .line 27
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v4, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v6, "13704"

    .line 41
    .line 42
    invoke-static {v6, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v9, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 46
    .line 47
    invoke-static {v9}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$000(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget v9, v9, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->playTime:I

    .line 52
    .line 53
    const/16 v10, 0x3e8

    .line 54
    .line 55
    mul-int/lit16 v9, v9, 0x3e8

    .line 56
    .line 57
    int-to-long v11, v9

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v13, "speed test->we have "

    .line 64
    .line 65
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/4 v13, 0x2

    .line 69
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v14, " thread to down file."

    .line 73
    .line 74
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {v5, v9}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-array v9, v13, [Ljava/net/URLConnection;

    .line 85
    .line 86
    new-instance v14, Lcom/haima/hmcp/utils/ThreadProgressTracker;

    .line 87
    .line 88
    invoke-direct {v14}, Lcom/haima/hmcp/utils/ThreadProgressTracker;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v15, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v16

    .line 100
    const/4 v4, 0x0

    .line 101
    :goto_0
    if-ge v4, v13, :cond_0

    .line 102
    .line 103
    new-instance v13, Ljava/net/URL;

    .line 104
    .line 105
    iget-object v8, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 106
    .line 107
    invoke-static {v8}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$000(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    iget-object v8, v8, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->url:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v13, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    move-object/from16 v19, v0

    .line 126
    .line 127
    const-string v0, "speed test->openConnection success  url: "

    .line 128
    .line 129
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 v0, 0x3e8

    .line 143
    .line 144
    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 148
    .line 149
    .line 150
    aput-object v8, v9, v4

    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    move-object/from16 v0, v19

    .line 155
    .line 156
    const/16 v10, 0x3e8

    .line 157
    .line 158
    const/4 v13, 0x2

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    move-object/from16 v19, v0

    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v20

    .line 166
    sub-long v20, v20, v16

    .line 167
    .line 168
    const-wide/16 v16, 0x7d0

    .line 169
    .line 170
    cmp-long v0, v20, v16

    .line 171
    .line 172
    if-ltz v0, :cond_2

    .line 173
    .line 174
    const-string v0, "speed test->speed Timeout"

    .line 175
    .line 176
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    .line 183
    .line 184
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 185
    .line 186
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 190
    .line 191
    const-string v4, "time out"

    .line 192
    .line 193
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v6, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    .line 217
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v8, 0x0

    .line 225
    invoke-interface {v0, v8, v4}, Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;->onCompletion(FLcom/haima/hmcp/utils/SpeedGather;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .line 227
    .line 228
    :cond_1
    return-void

    .line 229
    :cond_2
    sub-long v11, v11, v20

    .line 230
    .line 231
    move-object v4, v2

    .line 232
    move-object v8, v3

    .line 233
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v10, "speed test->speed running time: "

    .line 243
    .line 244
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    :goto_1
    const/4 v10, 0x2

    .line 259
    if-ge v0, v10, :cond_3

    .line 260
    .line 261
    new-instance v13, Lcom/haima/hmcp/utils/ClientThread;

    .line 262
    .line 263
    aget-object v10, v9, v0

    .line 264
    .line 265
    invoke-direct {v13, v10, v14}, Lcom/haima/hmcp/utils/ClientThread;-><init>(Ljava/net/URLConnection;Lcom/haima/hmcp/utils/ThreadProgressTracker;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_3
    const/16 v0, 0x64

    .line 278
    .line 279
    filled-new-array {v0}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v9, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .line 287
    .line 288
    const/4 v10, 0x0

    .line 289
    :goto_2
    const/4 v13, 0x1

    .line 290
    if-ge v10, v13, :cond_4

    .line 291
    .line 292
    :try_start_2
    new-instance v13, Lcom/haima/hmcp/utils/SpeedGather;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .line 294
    move-object/from16 v16, v6

    .line 295
    .line 296
    :try_start_3
    aget v6, v0, v10

    .line 297
    .line 298
    move-object/from16 v17, v0

    .line 299
    .line 300
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$000(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-direct {v13, v6, v2, v3, v0}, Lcom/haima/hmcp/utils/SpeedGather;-><init>(IJLcom/haima/hmcp/utils/SpeedGather$URLInfo;)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v10, v10, 0x1

    .line 313
    .line 314
    move-object/from16 v6, v16

    .line 315
    .line 316
    move-object/from16 v0, v17

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    goto :goto_3

    .line 321
    :catch_1
    move-exception v0

    .line 322
    move-object/from16 v16, v6

    .line 323
    .line 324
    :goto_3
    move-object/from16 v2, v16

    .line 325
    .line 326
    goto/16 :goto_d

    .line 327
    .line 328
    :cond_4
    move-object/from16 v16, v6

    .line 329
    .line 330
    const-wide/16 v20, 0x0

    .line 331
    .line 332
    move-wide/from16 v22, v20

    .line 333
    .line 334
    const/4 v0, 0x0

    .line 335
    :goto_4
    cmp-long v6, v22, v11

    .line 336
    .line 337
    if-gez v6, :cond_6

    .line 338
    .line 339
    iget-object v6, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 340
    .line 341
    invoke-static {v6}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$200(Lcom/haima/hmcp/utils/FileDownloadUtil;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_5

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_5
    const-wide/16 v22, 0xa

    .line 349
    .line 350
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_6
    :goto_5
    const/4 v0, 0x0

    .line 355
    :goto_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-ge v0, v6, :cond_7

    .line 360
    .line 361
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    check-cast v6, Lcom/haima/hmcp/utils/ClientThread;

    .line 366
    .line 367
    invoke-virtual {v6}, Lcom/haima/hmcp/utils/ClientThread;->requestExit()V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v0, v0, 0x1

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_7
    const/4 v0, 0x1

    .line 374
    :goto_7
    invoke-virtual {v14}, Lcom/haima/hmcp/utils/ThreadProgressTracker;->getThreadsDone()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-ne v6, v10, :cond_8

    .line 383
    .line 384
    const/4 v0, 0x1

    .line 385
    :cond_8
    if-eqz v0, :cond_9

    .line 386
    .line 387
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    if-eqz v10, :cond_9

    .line 396
    .line 397
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    check-cast v10, Lcom/haima/hmcp/utils/ClientThread;

    .line 402
    .line 403
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_9
    move-object v6, v14

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 409
    .line 410
    .line 411
    move-result-wide v13

    .line 412
    move-wide/from16 v22, v11

    .line 413
    .line 414
    sub-long v10, v13, v2

    .line 415
    .line 416
    move-wide/from16 v24, v2

    .line 417
    .line 418
    move-object/from16 v18, v6

    .line 419
    .line 420
    move-wide/from16 v2, v20

    .line 421
    .line 422
    const/4 v12, 0x0

    .line 423
    :goto_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    if-ge v12, v6, :cond_a

    .line 428
    .line 429
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    check-cast v6, Lcom/haima/hmcp/utils/ClientThread;

    .line 434
    .line 435
    invoke-virtual {v6}, Lcom/haima/hmcp/utils/ClientThread;->getTotalDownloadLen()J

    .line 436
    .line 437
    .line 438
    move-result-wide v26

    .line 439
    add-long v2, v2, v26

    .line 440
    .line 441
    add-int/lit8 v12, v12, 0x1

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_a
    const/4 v6, 0x0

    .line 445
    :goto_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    if-ge v6, v12, :cond_b

    .line 450
    .line 451
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v12

    .line 455
    check-cast v12, Lcom/haima/hmcp/utils/SpeedGather;

    .line 456
    .line 457
    invoke-virtual {v12, v13, v14, v2, v3}, Lcom/haima/hmcp/utils/SpeedGather;->speedTest(JJ)V

    .line 458
    .line 459
    .line 460
    add-int/lit8 v6, v6, 0x1

    .line 461
    .line 462
    goto :goto_a

    .line 463
    :cond_b
    if-eqz v0, :cond_f

    .line 464
    .line 465
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 466
    .line 467
    invoke-static {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$200(Lcom/haima/hmcp/utils/FileDownloadUtil;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 472
    .line 473
    if-nez v0, :cond_c

    .line 474
    .line 475
    long-to-float v0, v2

    .line 476
    long-to-float v12, v10

    .line 477
    div-float/2addr v12, v6

    .line 478
    div-float/2addr v0, v12

    .line 479
    new-instance v12, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    const-string v13, "speed test->total_len: "

    .line 485
    .line 486
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v2, "; total_time: "

    .line 493
    .line 494
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v2, "; downloadSpeed: "

    .line 501
    .line 502
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_c
    const/4 v0, 0x0

    .line 517
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    move-object/from16 v3, v19

    .line 523
    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v10, " test speed finish, stopSpeedTest:"

    .line 539
    .line 540
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    iget-object v10, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 544
    .line 545
    invoke-static {v10}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$200(Lcom/haima/hmcp/utils/FileDownloadUtil;)Z

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget-object v2, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 560
    .line 561
    invoke-static {v2}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$200(Lcom/haima/hmcp/utils/FileDownloadUtil;)Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_d

    .line 566
    .line 567
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 568
    .line 569
    const/4 v2, 0x0

    .line 570
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$202(Lcom/haima/hmcp/utils/FileDownloadUtil;Z)Z

    .line 571
    .line 572
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v2, " is already stop and do not call back"

    .line 593
    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    return-void

    .line 605
    :cond_d
    iget-object v2, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 606
    .line 607
    invoke-static {v2}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    if-eqz v2, :cond_e

    .line 612
    .line 613
    iget-object v2, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$listener:Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 614
    .line 615
    div-float/2addr v0, v6

    .line 616
    const/4 v6, 0x0

    .line 617
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    check-cast v3, Lcom/haima/hmcp/utils/SpeedGather;

    .line 622
    .line 623
    invoke-interface {v2, v0, v3}, Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;->onCompletion(FLcom/haima/hmcp/utils/SpeedGather;)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_e

    .line 627
    .line 628
    :cond_e
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 629
    .line 630
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 631
    .line 632
    .line 633
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 634
    .line 635
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 639
    .line 640
    const-string v2, "call back is null"

    .line 641
    .line 642
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 646
    .line 647
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    move-object/from16 v2, v16

    .line 656
    .line 657
    :try_start_4
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 658
    .line 659
    .line 660
    goto :goto_e

    .line 661
    :catch_2
    move-exception v0

    .line 662
    goto :goto_d

    .line 663
    :cond_f
    move-object/from16 v14, v18

    .line 664
    .line 665
    move-wide/from16 v2, v24

    .line 666
    .line 667
    const/4 v13, 0x1

    .line 668
    move-wide/from16 v28, v10

    .line 669
    .line 670
    move-wide/from16 v11, v22

    .line 671
    .line 672
    move-wide/from16 v22, v28

    .line 673
    .line 674
    goto/16 :goto_4

    .line 675
    .line 676
    :catch_3
    move-exception v0

    .line 677
    goto :goto_c

    .line 678
    :catchall_0
    move-exception v0

    .line 679
    throw v0

    .line 680
    :catch_4
    move-exception v0

    .line 681
    move-object v4, v2

    .line 682
    move-object v8, v3

    .line 683
    :goto_c
    move-object v2, v6

    .line 684
    :goto_d
    iget-object v3, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 685
    .line 686
    invoke-static {v3}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    if-eqz v3, :cond_10

    .line 691
    .line 692
    iget-object v3, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->this$0:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 693
    .line 694
    invoke-static {v3}, Lcom/haima/hmcp/utils/FileDownloadUtil;->access$100(Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    const/4 v6, 0x0

    .line 699
    const/4 v9, 0x0

    .line 700
    invoke-interface {v3, v9, v6}, Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;->onCompletion(FLcom/haima/hmcp/utils/SpeedGather;)V

    .line 701
    .line 702
    .line 703
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    invoke-static {v5, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    iget-object v3, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 714
    .line 715
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 716
    .line 717
    .line 718
    iget-object v3, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 719
    .line 720
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    iget-object v3, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 724
    .line 725
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    iget-object v0, v1, Lcom/haima/hmcp/utils/FileDownloadUtil$3;->val$jsonMap:Ljava/util/Map;

    .line 733
    .line 734
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :goto_e
    return-void
.end method
