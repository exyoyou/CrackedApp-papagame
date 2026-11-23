.class public Lcom/sdk/d/c$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "seq"

    .line 4
    .line 5
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/sdk/d/c$c;

    .line 8
    .line 9
    iget v0, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v0, v4, :cond_d

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v0, v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, v2, Lcom/sdk/d/c$c;->a:Lcom/sdk/d/c;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/sdk/d/c$c;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/sdk/a/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v6, "PriorityAsyncTask"

    .line 30
    .line 31
    const-string v7, "HttpHandler onProgressUpdate \u5f00\u59cb"

    .line 32
    .line 33
    invoke-static {v6, v7, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    iget-object v6, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 37
    .line 38
    sget-object v7, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    .line 39
    .line 40
    if-eq v6, v7, :cond_e

    .line 41
    .line 42
    if-eqz v2, :cond_e

    .line 43
    .line 44
    array-length v6, v2

    .line 45
    if-eqz v6, :cond_e

    .line 46
    .line 47
    iget-object v6, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    aget-object v3, v2, v3

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eq v3, v4, :cond_c

    .line 62
    .line 63
    const/4 v6, 0x3

    .line 64
    if-eq v3, v5, :cond_a

    .line 65
    .line 66
    const-string v7, ""

    .line 67
    .line 68
    if-eq v3, v6, :cond_7

    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    if-eq v3, v6, :cond_2

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    array-length v3, v2

    .line 76
    if-eq v3, v5, :cond_3

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_3
    sget-object v3, Lcom/sdk/a/c$a;->f:Lcom/sdk/a/c$a;

    .line 81
    .line 82
    iput-object v3, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 83
    .line 84
    iget-object v3, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    .line 85
    .line 86
    aget-object v2, v2, v4

    .line 87
    .line 88
    check-cast v2, Lcom/sdk/a/f;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/sdk/a/e;->b:Ljava/lang/String;

    .line 93
    .line 94
    check-cast v3, Lcom/sdk/g/a;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    move-object v0, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, v2, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Ljava/lang/String;

    .line 106
    .line 107
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "code"

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    const-string v0, "msg"

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    const-string v0, "status"

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const-string v5, "obj"

    .line 131
    .line 132
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-static {v10}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-static {v13}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-static {v12}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    iget-object v14, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 171
    .line 172
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->getMobileLog()Lcom/sdk/f/b;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v0, v0, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 177
    .line 178
    const/4 v15, 0x1

    .line 179
    const-string v16, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    .line 180
    .line 181
    const v17, 0x49bb3

    .line 182
    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    move-object/from16 v19, v0

    .line 187
    .line 188
    invoke-virtual/range {v14 .. v19}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lcom/sdk/g/b;->j:Ljava/lang/String;

    .line 192
    .line 193
    sget-boolean v1, Lcom/sdk/g/b;->k:Z

    .line 194
    .line 195
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v2, "\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    .line 200
    .line 201
    invoke-static {v0, v2, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 202
    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_5
    iget-object v8, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 207
    .line 208
    move v9, v4

    .line 209
    move v11, v0

    .line 210
    invoke-virtual/range {v8 .. v13}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const/16 v2, 0x64

    .line 232
    .line 233
    if-ne v0, v2, :cond_6

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :catchall_0
    move-exception v0

    .line 243
    move v9, v4

    .line 244
    goto :goto_1

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    const/4 v9, 0x1

    .line 247
    :goto_1
    iget-object v2, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 248
    .line 249
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-static {v4, v1, v7}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iput-object v4, v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v2}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302003(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v8, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 267
    .line 268
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->getMobileLog()Lcom/sdk/f/b;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v13, v2, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 273
    .line 274
    const-string v10, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    .line 275
    .line 276
    const v11, 0x49bb3

    .line 277
    .line 278
    .line 279
    const/4 v12, 0x0

    .line 280
    invoke-virtual/range {v8 .. v13}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    sget-object v2, Lcom/sdk/g/b;->j:Ljava/lang/String;

    .line 284
    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v5, "\u8fd4\u56de\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sget-boolean v4, Lcom/sdk/g/b;->k:Z

    .line 307
    .line 308
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-static {v2, v0, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 313
    .line 314
    .line 315
    iget-object v0, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_e

    .line 328
    .line 329
    iget-object v0, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 330
    .line 331
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v2, v1, v7}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iput-object v1, v0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 340
    .line 341
    iget-object v0, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 342
    .line 343
    iget-object v0, v0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v0}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_e

    .line 354
    .line 355
    iget-object v0, v3, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 356
    .line 357
    const-string v1, "seqAndroidEmpty"

    .line 358
    .line 359
    iput-object v1, v0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :cond_7
    array-length v1, v2

    .line 364
    if-eq v1, v6, :cond_8

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_8
    sget-object v1, Lcom/sdk/a/c$a;->d:Lcom/sdk/a/c$a;

    .line 368
    .line 369
    iput-object v1, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 370
    .line 371
    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    .line 372
    .line 373
    aget-object v1, v2, v4

    .line 374
    .line 375
    check-cast v1, Ljava/lang/Integer;

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    aget-object v2, v2, v5

    .line 382
    .line 383
    check-cast v2, Ljava/lang/String;

    .line 384
    .line 385
    check-cast v0, Lcom/sdk/g/a;

    .line 386
    .line 387
    iget-object v0, v0, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    .line 388
    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iget-object v3, v0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    .line 405
    .line 406
    if-eqz v3, :cond_9

    .line 407
    .line 408
    const v4, 0x49bb2

    .line 409
    .line 410
    .line 411
    invoke-interface {v3, v1, v4, v2}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const/4 v2, 0x0

    .line 415
    iput-object v2, v0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    .line 416
    .line 417
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    sget-object v0, Lcom/sdk/g/b;->j:Ljava/lang/String;

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_a
    array-length v1, v2

    .line 424
    if-eq v1, v6, :cond_b

    .line 425
    .line 426
    goto :goto_2

    .line 427
    :cond_b
    sget-object v1, Lcom/sdk/a/c$a;->c:Lcom/sdk/a/c$a;

    .line 428
    .line 429
    iput-object v1, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    .line 432
    .line 433
    aget-object v1, v2, v4

    .line 434
    .line 435
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 440
    .line 441
    .line 442
    aget-object v1, v2, v5

    .line 443
    .line 444
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    goto :goto_2

    .line 455
    :cond_c
    sget-object v1, Lcom/sdk/a/c$a;->b:Lcom/sdk/a/c$a;

    .line 456
    .line 457
    iput-object v1, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    goto :goto_2

    .line 465
    :cond_d
    iget-object v0, v2, Lcom/sdk/d/c$c;->a:Lcom/sdk/d/c;

    .line 466
    .line 467
    iget-object v1, v2, Lcom/sdk/d/c$c;->b:[Ljava/lang/Object;

    .line 468
    .line 469
    aget-object v1, v1, v3

    .line 470
    .line 471
    iget-object v0, v0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 474
    .line 475
    .line 476
    :cond_e
    :goto_2
    return-void
.end method
