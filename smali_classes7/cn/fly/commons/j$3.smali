.class Lcn/fly/commons/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/j;


# direct methods
.method constructor <init>(Lcn/fly/commons/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    const-string v0, "DM "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "DM ck start"

    .line 9
    .line 10
    new-array v4, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 16
    .line 17
    invoke-static {v2}, Lcn/fly/commons/j;->b(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_9

    .line 23
    .line 24
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 25
    .line 26
    invoke-static {v2}, Lcn/fly/commons/j;->b(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_9

    .line 35
    .line 36
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 42
    .line 43
    invoke-static {v4}, Lcn/fly/commons/j;->b(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_6

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/util/HashMap;

    .line 79
    .line 80
    new-instance v8, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    if-eqz v6, :cond_5

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-nez v9, :cond_5

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_5

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    check-cast v10, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Ljava/util/ArrayList;

    .line 124
    .line 125
    new-instance v11, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    if-eqz v9, :cond_3

    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-nez v12, :cond_3

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_3

    .line 147
    .line 148
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    check-cast v12, Ljava/lang/String;

    .line 153
    .line 154
    iget-object v13, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 155
    .line 156
    invoke-static {v13, v12}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_2

    .line 161
    .line 162
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-nez v9, :cond_4

    .line 171
    .line 172
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string v9, "gcfg"

    .line 177
    .line 178
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_1

    .line 183
    .line 184
    const-string v9, "FCOMMON"

    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_1

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    goto :goto_1

    .line 194
    :cond_5
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-nez v6, :cond_0

    .line 199
    .line 200
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 209
    if-nez v4, :cond_8

    .line 210
    .line 211
    :try_start_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v7, "DM busi w 2 cac: "

    .line 221
    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    new-array v7, v1, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-virtual {v4, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 238
    .line 239
    invoke-static {v4}, Lcn/fly/commons/j;->c(Lcn/fly/commons/j;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 248
    .line 249
    const-wide/16 v7, 0xbb8

    .line 250
    .line 251
    invoke-virtual {v4, v7, v8, v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_7

    .line 256
    .line 257
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 258
    .line 259
    invoke-static {v4}, Lcn/fly/commons/j;->d(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 264
    .line 265
    .line 266
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 267
    .line 268
    invoke-static {v4}, Lcn/fly/commons/j;->d(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 280
    .line 281
    invoke-static {v4}, Lcn/fly/commons/j;->d(Lcn/fly/commons/j;)Ljava/util/HashMap;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v2, v4}, Lcn/fly/commons/ae;->c(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    .line 287
    .line 288
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 289
    .line 290
    invoke-static {v2}, Lcn/fly/commons/j;->c(Lcn/fly/commons/j;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .line 300
    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    :catchall_0
    move-exception v2

    .line 304
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    new-array v7, v1, [Ljava/lang/Object;

    .line 328
    .line 329
    invoke-virtual {v4, v2, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 330
    .line 331
    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :catchall_1
    move-exception v2

    .line 335
    :try_start_4
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    new-array v7, v1, [Ljava/lang/Object;

    .line 359
    .line 360
    invoke-virtual {v4, v2, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 361
    .line 362
    .line 363
    :try_start_5
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 364
    .line 365
    invoke-static {v2}, Lcn/fly/commons/j;->c(Lcn/fly/commons/j;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :catchall_2
    move-exception v2

    .line 378
    :try_start_6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    new-array v7, v1, [Ljava/lang/Object;

    .line 402
    .line 403
    invoke-virtual {v4, v2, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :catchall_3
    move-exception v2

    .line 408
    :try_start_7
    iget-object v3, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 409
    .line 410
    invoke-static {v3}, Lcn/fly/commons/j;->c(Lcn/fly/commons/j;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :catchall_4
    move-exception v3

    .line 423
    :try_start_8
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    new-array v6, v1, [Ljava/lang/Object;

    .line 447
    .line 448
    invoke-virtual {v4, v3, v5, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 449
    .line 450
    .line 451
    :goto_3
    throw v2

    .line 452
    :cond_8
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    const-string v4, "DM busi no avai dm"

    .line 457
    .line 458
    new-array v6, v1, [Ljava/lang/Object;

    .line 459
    .line 460
    invoke-virtual {v2, v4, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 461
    .line 462
    .line 463
    goto :goto_4

    .line 464
    :cond_9
    const/4 v5, 0x1

    .line 465
    :goto_4
    :try_start_9
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 466
    .line 467
    invoke-static {v2}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    if-eqz v2, :cond_d

    .line 472
    .line 473
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 474
    .line 475
    invoke-static {v2}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-nez v2, :cond_d

    .line 484
    .line 485
    new-instance v2, Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .line 489
    .line 490
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 491
    .line 492
    invoke-static {v4}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    if-eqz v6, :cond_b

    .line 505
    .line 506
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    check-cast v6, Ljava/lang/String;

    .line 511
    .line 512
    iget-object v7, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 513
    .line 514
    invoke-static {v7, v6}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;Ljava/lang/String;)Z

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-eqz v7, :cond_a

    .line 519
    .line 520
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    if-nez v4, :cond_c

    .line 529
    .line 530
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v7, "DM prx w 2 cac: "

    .line 540
    .line 541
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    new-array v7, v1, [Ljava/lang/Object;

    .line 552
    .line 553
    invoke-virtual {v4, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 554
    .line 555
    .line 556
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 557
    .line 558
    invoke-static {v4}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 563
    .line 564
    .line 565
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 566
    .line 567
    invoke-static {v4}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 572
    .line 573
    .line 574
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    iget-object v4, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 579
    .line 580
    invoke-static {v4}, Lcn/fly/commons/j;->e(Lcn/fly/commons/j;)Ljava/util/ArrayList;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    invoke-virtual {v2, v4}, Lcn/fly/commons/ae;->a(Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 585
    .line 586
    .line 587
    goto :goto_6

    .line 588
    :cond_c
    :try_start_a
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    const-string v4, "DM prx no avai dm"

    .line 593
    .line 594
    new-array v6, v1, [Ljava/lang/Object;

    .line 595
    .line 596
    invoke-virtual {v2, v4, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 597
    .line 598
    .line 599
    const/4 v2, 0x0

    .line 600
    goto :goto_8

    .line 601
    :catchall_5
    move-exception v2

    .line 602
    const/4 v4, 0x0

    .line 603
    goto :goto_7

    .line 604
    :cond_d
    :goto_6
    const/4 v2, 0x1

    .line 605
    goto :goto_8

    .line 606
    :catchall_6
    move-exception v2

    .line 607
    const/4 v4, 0x1

    .line 608
    :goto_7
    :try_start_b
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    new-instance v7, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    new-array v8, v1, [Ljava/lang/Object;

    .line 632
    .line 633
    invoke-virtual {v6, v2, v7, v8}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 634
    .line 635
    .line 636
    move v2, v4

    .line 637
    :goto_8
    if-nez v5, :cond_e

    .line 638
    .line 639
    if-nez v2, :cond_e

    .line 640
    .line 641
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 642
    .line 643
    invoke-static {v2, v3}, Lcn/fly/commons/j;->a(Lcn/fly/commons/j;Z)Z

    .line 644
    .line 645
    .line 646
    iget-object v2, p0, Lcn/fly/commons/j$3;->a:Lcn/fly/commons/j;

    .line 647
    .line 648
    invoke-static {v2}, Lcn/fly/commons/j;->f(Lcn/fly/commons/j;)V

    .line 649
    .line 650
    .line 651
    goto :goto_9

    .line 652
    :cond_e
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    const-wide/16 v3, 0x0

    .line 657
    .line 658
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v2, v3}, Lcn/fly/commons/ae;->a(Ljava/lang/Long;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 663
    .line 664
    .line 665
    goto :goto_9

    .line 666
    :catchall_7
    move-exception v2

    .line 667
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    new-array v1, v1, [Ljava/lang/Object;

    .line 691
    .line 692
    invoke-virtual {v3, v2, v0, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 693
    .line 694
    .line 695
    :goto_9
    return-void
.end method
