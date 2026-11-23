.class Lcn/fly/commons/y$2;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/y;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/y;


# direct methods
.method constructor <init>(Lcn/fly/commons/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/y$2;->a:Lcn/fly/commons/y;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .line 1
    const-string v0, "ait"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcn/fly/commons/z;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    new-instance v3, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "004ifch"

    .line 17
    .line 18
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "1"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v4, "006ciiLdgJe db"

    .line 28
    .line 29
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {}, Lcn/fly/commons/q;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v4, "006Mehdbehcc6eNci"

    .line 41
    .line 42
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionInt()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v4, "007%deQcbh+cjcidb"

    .line 58
    .line 59
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v4, "005[cecjcbKef"

    .line 71
    .line 72
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getModel()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v4, "006ciiiCdgdi"

    .line 84
    .line 85
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v4, "002hSeh"

    .line 97
    .line 98
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v4, "dc"

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-static {v5}, Lcn/fly/commons/ad;->a(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v4, "clv"

    .line 131
    .line 132
    sget v6, Lcn/fly/FlySDK;->SDK_VERSION_CODE:I

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lcn/fly/commons/z;->f()J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    const-wide/16 v8, 0x0

    .line 150
    .line 151
    cmp-long v4, v6, v8

    .line 152
    .line 153
    if-lez v4, :cond_0

    .line 154
    .line 155
    const-string v4, "acv"

    .line 156
    .line 157
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getAppVersionName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const-string v4, "cvit"

    .line 165
    .line 166
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_0
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v6, "key_ched_od"

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-virtual {v4, v6, v7}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    if-nez v6, :cond_1

    .line 189
    .line 190
    :try_start_1
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v6}, Lcn/fly/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-static {v6, v4}, Lcn/fly/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    const/4 v8, 0x2

    .line 203
    invoke-static {v6, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const-string v6, "0043cecjchcb"

    .line 208
    .line 209
    invoke-static {v6}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :catchall_0
    move-exception v6

    .line 218
    :try_start_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v8, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    :cond_1
    :goto_0
    invoke-static {}, Lcn/fly/commons/f;->b()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-nez v8, :cond_2

    .line 234
    .line 235
    const-string v8, "004]cbcfchcb"

    .line 236
    .line 237
    invoke-static {v8}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_2
    new-instance v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;

    .line 245
    .line 246
    invoke-direct {v8}, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 247
    .line 248
    .line 249
    const/16 v9, 0x1388

    .line 250
    .line 251
    iput v9, v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 252
    .line 253
    const/16 v9, 0xbb8

    .line 254
    .line 255
    iput v9, v8, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 256
    .line 257
    new-instance v9, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcn/fly/commons/j;->a()Lcn/fly/commons/j;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    const-string v11, "gcfg"

    .line 267
    .line 268
    invoke-virtual {v10, v11}, Lcn/fly/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v10, "007kick;di%bAde"

    .line 276
    .line 277
    invoke-static {v10}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    new-instance v10, Lcn/fly/tools/network/NetworkHelper;

    .line 289
    .line 290
    invoke-direct {v10}, Lcn/fly/tools/network/NetworkHelper;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10, v9, v3, v7, v8}, Lcn/fly/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const-string v8, "004b*cjcb)e"

    .line 302
    .line 303
    invoke-static {v8}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    const-string v9, "200"

    .line 316
    .line 317
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_c

    .line 322
    .line 323
    const-string v3, "004Mcb5chc"

    .line 324
    .line 325
    invoke-static {v3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    check-cast v3, Ljava/util/HashMap;

    .line 334
    .line 335
    if-eqz v3, :cond_b

    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-nez v7, :cond_b

    .line 342
    .line 343
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v7, v5}, Lcn/fly/commons/z;->e(I)Lcn/fly/commons/z;

    .line 348
    .line 349
    .line 350
    const-string v7, "wd"

    .line 351
    .line 352
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    if-eqz v7, :cond_3

    .line 357
    .line 358
    check-cast v7, Ljava/lang/Integer;

    .line 359
    .line 360
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    goto :goto_1

    .line 365
    :cond_3
    const/4 v7, 0x0

    .line 366
    :goto_1
    const-string v8, "wf"

    .line 367
    .line 368
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    if-eqz v8, :cond_4

    .line 373
    .line 374
    check-cast v8, Ljava/lang/Integer;

    .line 375
    .line 376
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    goto :goto_2

    .line 381
    :cond_4
    const/4 v8, 0x0

    .line 382
    :goto_2
    const-string v9, "ds"

    .line 383
    .line 384
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    if-eqz v9, :cond_5

    .line 389
    .line 390
    check-cast v9, Ljava/lang/Boolean;

    .line 391
    .line 392
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    goto :goto_3

    .line 397
    :cond_5
    const/4 v9, 0x0

    .line 398
    :goto_3
    const-string v10, "cdt"

    .line 399
    .line 400
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    if-eqz v10, :cond_6

    .line 405
    .line 406
    check-cast v10, Ljava/lang/Integer;

    .line 407
    .line 408
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    goto :goto_4

    .line 413
    :cond_6
    new-instance v10, Ljava/security/SecureRandom;

    .line 414
    .line 415
    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    .line 416
    .line 417
    .line 418
    const/16 v11, 0x1e

    .line 419
    .line 420
    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    .line 421
    .line 422
    .line 423
    move-result v10

    .line 424
    add-int/lit16 v10, v10, 0x10e

    .line 425
    .line 426
    :goto_4
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    instance-of v11, v0, Ljava/lang/Long;

    .line 431
    .line 432
    if-eqz v11, :cond_8

    .line 433
    .line 434
    check-cast v0, Ljava/lang/Long;

    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 437
    .line 438
    .line 439
    move-result-wide v11

    .line 440
    const-wide/32 v13, 0x5265c00

    .line 441
    .line 442
    .line 443
    cmp-long v0, v1, v11

    .line 444
    .line 445
    if-nez v0, :cond_7

    .line 446
    .line 447
    int-to-long v0, v7

    .line 448
    mul-long v0, v0, v13

    .line 449
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 451
    .line 452
    .line 453
    move-result-wide v13

    .line 454
    add-long/2addr v0, v13

    .line 455
    goto :goto_5

    .line 456
    :cond_7
    int-to-long v0, v7

    .line 457
    mul-long v0, v0, v13

    .line 458
    .line 459
    add-long/2addr v0, v11

    .line 460
    :goto_5
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    const-string v13, "key_nat"

    .line 465
    .line 466
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v2, v13, v0}, Lcn/fly/commons/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/z;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0, v11, v12}, Lcn/fly/commons/z;->a(J)Lcn/fly/commons/z;

    .line 475
    .line 476
    .line 477
    :cond_8
    const-string v0, "ccd"

    .line 478
    .line 479
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    instance-of v1, v0, Ljava/lang/Integer;

    .line 484
    .line 485
    if-eqz v1, :cond_9

    .line 486
    .line 487
    check-cast v0, Ljava/lang/Integer;

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    goto :goto_6

    .line 494
    :cond_9
    const/4 v0, 0x0

    .line 495
    :goto_6
    invoke-static {}, Lcn/fly/commons/z;->a()Lcn/fly/commons/z;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v1, v7}, Lcn/fly/commons/z;->d(I)Lcn/fly/commons/z;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    const-string v2, "key_wt_tms"

    .line 504
    .line 505
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-virtual {v1, v2, v3}, Lcn/fly/commons/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/z;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    const-string v2, "key_iksccd"

    .line 514
    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v1, v2, v3}, Lcn/fly/commons/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/z;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v1, v9}, Lcn/fly/commons/z;->a(Z)Lcn/fly/commons/z;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    const-string v2, "key_cdt"

    .line 528
    .line 529
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-virtual {v1, v2, v3}, Lcn/fly/commons/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/z;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Lcn/fly/commons/z;->h()Z

    .line 538
    .line 539
    .line 540
    if-eqz v9, :cond_a

    .line 541
    .line 542
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v1, "[PRE] ds"

    .line 547
    .line 548
    new-array v2, v5, [Ljava/lang/Object;

    .line 549
    .line 550
    invoke-virtual {v0, v1, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 551
    .line 552
    .line 553
    iget-object v0, p0, Lcn/fly/commons/y$2;->a:Lcn/fly/commons/y;

    .line 554
    .line 555
    invoke-static {v0}, Lcn/fly/commons/y;->a(Lcn/fly/commons/y;)V

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_a
    const/4 v1, 0x1

    .line 560
    if-ne v0, v1, :cond_d

    .line 561
    .line 562
    invoke-static {}, Lcn/fly/commons/b;->a()Lcn/fly/commons/b;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0, v4, v6}, Lcn/fly/commons/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto :goto_7

    .line 570
    :cond_b
    new-instance v0, Ljava/lang/Throwable;

    .line 571
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v2, "data is illegal: "

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v0

    .line 593
    :cond_c
    new-instance v0, Ljava/lang/Throwable;

    .line 594
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .line 599
    .line 600
    const-string v2, "response is illegal: "

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 616
    :catchall_1
    move-exception v0

    .line 617
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 622
    .line 623
    .line 624
    :cond_d
    :goto_7
    return-void
.end method
