.class public Lcom/join/mgps/Util/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/Filepath;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/wufan91/"

    .line 2
    .line 3
    const-string v1, "PrefDef"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "isFirst35"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v2, "firstShowUserPermiss"

    .line 20
    .line 21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string v1, "storage"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/join/mgps/pref/PrefDef_;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x0

    .line 66
    if-nez v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->sdcardData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-array v8, v3, [Ljava/lang/Class;

    .line 93
    .line 94
    const-class v9, Lcom/join/mgps/dto/Filepath;

    .line 95
    .line 96
    aput-object v9, v8, v6

    .line 97
    .line 98
    const-class v9, Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v7, v9, v8}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v2, v5, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/util/List;

    .line 109
    .line 110
    :cond_1
    if-nez v2, :cond_2

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-lez v5, :cond_3

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_14

    .line 132
    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/join/mgps/dto/Filepath;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const-string v7, "getVolumePaths"

    .line 167
    .line 168
    new-array v8, v6, [Ljava/lang/Class;

    .line 169
    .line 170
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    new-array v7, v6, [Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    .line 182
    if-nez v1, :cond_4

    .line 183
    .line 184
    sget-object p0, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 185
    .line 186
    new-instance v0, Lcom/join/mgps/dto/Filepath;

    .line 187
    .line 188
    invoke-direct {v0}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 195
    .line 196
    .line 197
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 204
    .line 205
    .line 206
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 213
    .line 214
    .line 215
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    return-object v2

    .line 224
    :cond_4
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 225
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    sget-object v8, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v8, "/mgpapa/"

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v7, Ljava/io/File;

    .line 249
    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    sget-object v9, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-eqz v8, :cond_6

    .line 275
    .line 276
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_6

    .line 281
    .line 282
    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_6

    .line 290
    .line 291
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v8}, Lq5/f;->d()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    if-eqz v9, :cond_6

    .line 308
    .line 309
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    check-cast v9, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 314
    .line 315
    sget-object v10, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 316
    .line 317
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_5

    .line 330
    .line 331
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    new-instance v11, Ljava/io/File;

    .line 348
    .line 349
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    if-eqz v11, :cond_5

    .line 357
    .line 358
    invoke-virtual {v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    invoke-virtual {v10, v9}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :catch_0
    move-exception v5

    .line 373
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    .line 375
    .line 376
    :cond_6
    const/4 v5, 0x0

    .line 377
    :goto_2
    array-length v7, v1

    .line 378
    if-ge v5, v7, :cond_12

    .line 379
    .line 380
    new-instance v7, Ljava/io/File;

    .line 381
    .line 382
    aget-object v8, v1, v5

    .line 383
    .line 384
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-eqz v8, :cond_11

    .line 392
    .line 393
    new-instance v8, Lcom/join/mgps/dto/Filepath;

    .line 394
    .line 395
    invoke-direct {v8}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 396
    .line 397
    .line 398
    aget-object v9, v1, v5

    .line 399
    .line 400
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 405
    .line 406
    const-string v11, "ddMMyyyy_HHmmss"

    .line 407
    .line 408
    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v11, Ljava/util/Date;

    .line 412
    .line 413
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    new-instance v11, Ljava/io/File;

    .line 421
    .line 422
    new-instance v12, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v13, "test_"

    .line 428
    .line 429
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-direct {v11, v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    const-string v10, "AA58-160F"

    .line 447
    .line 448
    if-eqz v7, :cond_a

    .line 449
    .line 450
    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 451
    .line 452
    .line 453
    const-string v7, "1"

    .line 454
    .line 455
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-nez v7, :cond_9

    .line 460
    .line 461
    const-string v7, "extSdCard"

    .line 462
    .line 463
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    if-nez v7, :cond_9

    .line 468
    .line 469
    const-string v7, "sdcard_ext"

    .line 470
    .line 471
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    if-nez v7, :cond_9

    .line 476
    .line 477
    const-string v7, "sdcard-ext"

    .line 478
    .line 479
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    if-nez v7, :cond_9

    .line 484
    .line 485
    const-string v7, "ext_sdcard"

    .line 486
    .line 487
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    if-nez v7, :cond_9

    .line 492
    .line 493
    const-string v7, "SD_CARD"

    .line 494
    .line 495
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    if-nez v7, :cond_9

    .line 500
    .line 501
    const-string v7, "sdcard2"

    .line 502
    .line 503
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    if-nez v7, :cond_9

    .line 508
    .line 509
    const-string v7, "extra_sd"

    .line 510
    .line 511
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    if-nez v7, :cond_9

    .line 516
    .line 517
    const-string v7, "extrasd_bind"

    .line 518
    .line 519
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    if-nez v7, :cond_9

    .line 524
    .line 525
    const-string v7, "ext_sd"

    .line 526
    .line 527
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v7

    .line 531
    if-nez v7, :cond_9

    .line 532
    .line 533
    const-string v7, "external_SD"

    .line 534
    .line 535
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 536
    .line 537
    .line 538
    move-result v7

    .line 539
    if-nez v7, :cond_9

    .line 540
    .line 541
    const-string v7, "extSdCard "

    .line 542
    .line 543
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-nez v7, :cond_9

    .line 548
    .line 549
    const-string v7, "ext"

    .line 550
    .line 551
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-nez v7, :cond_9

    .line 556
    .line 557
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_7

    .line 562
    .line 563
    goto :goto_3

    .line 564
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8, v3}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 583
    .line 584
    .line 585
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    if-lez v7, :cond_8

    .line 590
    .line 591
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    check-cast v7, Lcom/join/mgps/dto/Filepath;

    .line 596
    .line 597
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    if-eqz v7, :cond_8

    .line 602
    .line 603
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 604
    .line 605
    .line 606
    aget-object v7, v1, v5

    .line 607
    .line 608
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 609
    .line 610
    .line 611
    move-result-wide v10

    .line 612
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 613
    .line 614
    .line 615
    aget-object v7, v1, v5

    .line 616
    .line 617
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 618
    .line 619
    .line 620
    move-result-wide v10

    .line 621
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    goto/16 :goto_5

    .line 631
    .line 632
    :cond_8
    aget-object v7, v1, v5

    .line 633
    .line 634
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 635
    .line 636
    .line 637
    move-result-wide v10

    .line 638
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 639
    .line 640
    .line 641
    aget-object v7, v1, v5

    .line 642
    .line 643
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 644
    .line 645
    .line 646
    move-result-wide v10

    .line 647
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    goto/16 :goto_5

    .line 657
    .line 658
    :cond_9
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v7

    .line 673
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 677
    .line 678
    .line 679
    new-instance v7, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v10, ""

    .line 688
    .line 689
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 697
    .line 698
    .line 699
    move-result-wide v11

    .line 700
    invoke-virtual {v8, v11, v12}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 701
    .line 702
    .line 703
    new-instance v7, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 719
    .line 720
    .line 721
    move-result-wide v10

    .line 722
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    goto/16 :goto_5

    .line 732
    .line 733
    :cond_a
    const-string v7, "0"

    .line 734
    .line 735
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 736
    .line 737
    .line 738
    move-result v7

    .line 739
    if-eqz v7, :cond_b

    .line 740
    .line 741
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-eqz v7, :cond_c

    .line 746
    .line 747
    :cond_b
    const-string v7, "/sdcard"

    .line 748
    .line 749
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    if-eqz v7, :cond_e

    .line 754
    .line 755
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v8, v3}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 774
    .line 775
    .line 776
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 777
    .line 778
    .line 779
    move-result v7

    .line 780
    if-lez v7, :cond_d

    .line 781
    .line 782
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v7

    .line 786
    check-cast v7, Lcom/join/mgps/dto/Filepath;

    .line 787
    .line 788
    invoke-virtual {v7}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    .line 789
    .line 790
    .line 791
    move-result v7

    .line 792
    if-eqz v7, :cond_d

    .line 793
    .line 794
    goto/16 :goto_5

    .line 795
    .line 796
    :cond_d
    aget-object v7, v1, v5

    .line 797
    .line 798
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 799
    .line 800
    .line 801
    move-result-wide v10

    .line 802
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 803
    .line 804
    .line 805
    aget-object v7, v1, v5

    .line 806
    .line 807
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 808
    .line 809
    .line 810
    move-result-wide v10

    .line 811
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    goto :goto_5

    .line 821
    :cond_e
    aget-object v7, v1, v5

    .line 822
    .line 823
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 824
    .line 825
    .line 826
    move-result-wide v10

    .line 827
    const-wide/16 v12, 0x0

    .line 828
    .line 829
    cmp-long v7, v10, v12

    .line 830
    .line 831
    if-lez v7, :cond_f

    .line 832
    .line 833
    aget-object v7, v1, v5

    .line 834
    .line 835
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 836
    .line 837
    .line 838
    move-result-wide v10

    .line 839
    cmp-long v7, v10, v12

    .line 840
    .line 841
    :cond_f
    aget-object v7, v1, v5

    .line 842
    .line 843
    invoke-static {v7}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 844
    .line 845
    .line 846
    move-result-wide v10

    .line 847
    cmp-long v7, v10, v12

    .line 848
    .line 849
    if-lez v7, :cond_11

    .line 850
    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    const-string v10, "/Android/data/"

    .line 860
    .line 861
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v7

    .line 878
    const/4 v10, 0x0

    .line 879
    invoke-virtual {p0, v10}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v8, v7}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    new-instance v10, Ljava/io/File;

    .line 886
    .line 887
    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 891
    .line 892
    .line 893
    move-result v7

    .line 894
    if-nez v7, :cond_10

    .line 895
    .line 896
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 897
    .line 898
    .line 899
    move-result v7

    .line 900
    goto :goto_4

    .line 901
    :cond_10
    const/4 v7, 0x1

    .line 902
    :goto_4
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 903
    .line 904
    .line 905
    aget-object v10, v1, v5

    .line 906
    .line 907
    invoke-static {v10}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 908
    .line 909
    .line 910
    move-result-wide v10

    .line 911
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 912
    .line 913
    .line 914
    aget-object v10, v1, v5

    .line 915
    .line 916
    invoke-static {v10}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 917
    .line 918
    .line 919
    move-result-wide v10

    .line 920
    invoke-virtual {v8, v10, v11}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    if-eqz v7, :cond_11

    .line 927
    .line 928
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    :cond_11
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 932
    .line 933
    goto/16 :goto_2

    .line 934
    .line 935
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 936
    .line 937
    .line 938
    move-result p0

    .line 939
    if-nez p0, :cond_13

    .line 940
    .line 941
    sget-object p0, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 942
    .line 943
    new-instance v0, Lcom/join/mgps/dto/Filepath;

    .line 944
    .line 945
    invoke-direct {v0}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 952
    .line 953
    .line 954
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 955
    .line 956
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 957
    .line 958
    .line 959
    move-result-wide v5

    .line 960
    invoke-virtual {v0, v5, v6}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 961
    .line 962
    .line 963
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 964
    .line 965
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 966
    .line 967
    .line 968
    move-result-wide v5

    .line 969
    invoke-virtual {v0, v5, v6}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 970
    .line 971
    .line 972
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    :cond_13
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 981
    .line 982
    .line 983
    move-result-object p0

    .line 984
    invoke-virtual {p0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object p0

    .line 988
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 993
    .line 994
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->sdcardData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-virtual {v0, p0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 1002
    .line 1003
    .line 1004
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .line 1008
    .line 1009
    const-string v0, "EndTime "

    .line 1010
    .line 1011
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v0

    .line 1018
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object p0

    .line 1025
    const-string v0, "sdCard "

    .line 1026
    .line 1027
    invoke-static {v0, p0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    return-object v2

    .line 1031
    :catch_1
    sget-object p0, Lcom/join/mgps/Util/z;->f:Ljava/lang/String;

    .line 1032
    .line 1033
    new-instance v0, Lcom/join/mgps/dto/Filepath;

    .line 1034
    .line 1035
    invoke-direct {v0}, Lcom/join/mgps/dto/Filepath;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathHome(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/Filepath;->setIslocal(Z)V

    .line 1042
    .line 1043
    .line 1044
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 1045
    .line 1046
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v3

    .line 1050
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAllsize(J)V

    .line 1051
    .line 1052
    .line 1053
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 1054
    .line 1055
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v3

    .line 1059
    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/dto/Filepath;->setAvailable(J)V

    .line 1060
    .line 1061
    .line 1062
    sget-object p0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 1063
    .line 1064
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/Filepath;->setPathRoot(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    return-object v2
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-wide v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/os/StatFs;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-wide v0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    return-wide v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/f2;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/f2;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 1
    const-string v0, "mounted"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Android/data/"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "/cache/"

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v0, 0x0

    .line 79
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object p0, v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "transfer"

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
