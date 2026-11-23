.class Lcn/fly/tools/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/d;->a(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcn/fly/tools/b/d;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/d;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 4
    .line 5
    invoke-static {v2}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    sget-object v3, Lcn/fly/tools/c/a;->c:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    const-wide/16 v7, 0xdac

    .line 25
    .line 26
    const/16 v9, 0x10

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    :try_start_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    new-instance v12, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v13, "dhs stch: "

    .line 39
    .line 40
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v13, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 44
    .line 45
    iget-object v14, v1, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v13, v14}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    new-array v13, v10, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v11, v12, v13}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    new-instance v11, Ljava/io/File;

    .line 64
    .line 65
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    const-string v13, "003%cbcbQg"

    .line 74
    .line 75
    invoke-static {v13}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v12, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 83
    .line 84
    iget-object v13, v1, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v12, v13}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-nez v12, :cond_1

    .line 91
    .line 92
    invoke-static {v10}, Lcn/fly/tools/b/d;->a(Z)Z

    .line 93
    .line 94
    .line 95
    invoke-static {v11}, Lcn/fly/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 96
    .line 97
    .line 98
    :try_start_2
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v12

    .line 104
    sub-long/2addr v12, v3

    .line 105
    invoke-static {v11, v12, v13}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;J)J

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v11, "dhs ctd: "

    .line 118
    .line 119
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 123
    .line 124
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    new-array v11, v10, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v3, v4, v11}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 139
    .line 140
    .line 141
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 142
    .line 143
    invoke-static {v3}, Lcn/fly/tools/b/d;->e(Lcn/fly/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v11, "dhs tt "

    .line 162
    .line 163
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 167
    .line 168
    invoke-static {v11}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v11

    .line 172
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    new-array v10, v10, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-virtual {v3, v4, v10}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 185
    .line 186
    invoke-static {v3}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    cmp-long v10, v3, v7

    .line 191
    .line 192
    if-lez v10, :cond_0

    .line 193
    .line 194
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 195
    .line 196
    invoke-virtual {v3}, Lcn/fly/tools/b/d;->b()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v3, v9, :cond_0

    .line 201
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v7, "-t-"

    .line 210
    .line 211
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 215
    .line 216
    invoke-static {v7}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v7

    .line 220
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v4, "-d-"

    .line 231
    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 236
    .line 237
    invoke-static {v4}, Lcn/fly/tools/b/d;->h(Lcn/fly/tools/b/d;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v7

    .line 241
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v4, "-l-"

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 250
    .line 251
    invoke-static {v4}, Lcn/fly/tools/b/d;->g(Lcn/fly/tools/b/d;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v7

    .line 255
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v4, " "

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    new-instance v7, Ljava/lang/Throwable;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-direct {v7, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v8, ""

    .line 282
    .line 283
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-object v8, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 287
    .line 288
    invoke-static {v8}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v4, v6, v5, v7, v3}, Lcn/fly/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 303
    return-void

    .line 304
    :cond_1
    :try_start_3
    iget-object v12, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 305
    .line 306
    invoke-virtual {v12, v10}, Lcn/fly/tools/b/d;->a(I)V

    .line 307
    .line 308
    .line 309
    iget-object v12, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 310
    .line 311
    iget-object v13, v1, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v12, v13}, Lcn/fly/tools/b/d;->b(Lcn/fly/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    if-eqz v13, :cond_3

    .line 322
    .line 323
    invoke-static {v10}, Lcn/fly/tools/b/d;->a(Z)Z

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    const-string v12, ""

    .line 331
    .line 332
    const-string v13, ""

    .line 333
    .line 334
    const/4 v14, -0x1

    .line 335
    const/4 v15, 0x4

    .line 336
    invoke-virtual {v11, v14, v15, v12, v13}, Lcn/fly/commons/h;->a(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 337
    .line 338
    .line 339
    :try_start_4
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 340
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 342
    .line 343
    .line 344
    move-result-wide v12

    .line 345
    sub-long/2addr v12, v3

    .line 346
    invoke-static {v11, v12, v13}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;J)J

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v11, "dhs ctd: "

    .line 359
    .line 360
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 364
    .line 365
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    new-array v11, v10, [Ljava/lang/Object;

    .line 373
    .line 374
    invoke-virtual {v3, v4, v11}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 375
    .line 376
    .line 377
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 380
    .line 381
    .line 382
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 383
    .line 384
    invoke-static {v3}, Lcn/fly/tools/b/d;->e(Lcn/fly/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 389
    .line 390
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v11, "dhs tt "

    .line 403
    .line 404
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 408
    .line 409
    invoke-static {v11}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 410
    .line 411
    .line 412
    move-result-wide v11

    .line 413
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    new-array v10, v10, [Ljava/lang/Object;

    .line 421
    .line 422
    invoke-virtual {v3, v4, v10}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 423
    .line 424
    .line 425
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 426
    .line 427
    invoke-static {v3}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 428
    .line 429
    .line 430
    move-result-wide v3

    .line 431
    cmp-long v10, v3, v7

    .line 432
    .line 433
    if-lez v10, :cond_2

    .line 434
    .line 435
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 436
    .line 437
    invoke-virtual {v3}, Lcn/fly/tools/b/d;->b()I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-ne v3, v9, :cond_2

    .line 442
    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v7, "-t-"

    .line 451
    .line 452
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 456
    .line 457
    invoke-static {v7}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v7

    .line 461
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    const-string v4, "-d-"

    .line 472
    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 477
    .line 478
    invoke-static {v4}, Lcn/fly/tools/b/d;->h(Lcn/fly/tools/b/d;)J

    .line 479
    .line 480
    .line 481
    move-result-wide v7

    .line 482
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v4, "-l-"

    .line 486
    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 491
    .line 492
    invoke-static {v4}, Lcn/fly/tools/b/d;->g(Lcn/fly/tools/b/d;)J

    .line 493
    .line 494
    .line 495
    move-result-wide v7

    .line 496
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v4, " "

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    new-instance v7, Ljava/lang/Throwable;

    .line 509
    .line 510
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-direct {v7, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v8, ""

    .line 523
    .line 524
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    iget-object v8, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 528
    .line 529
    invoke-static {v8}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v4, v6, v5, v7, v3}, Lcn/fly/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 544
    return-void

    .line 545
    :cond_3
    :try_start_5
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->isInMainProcess()Z

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    if-nez v13, :cond_5

    .line 550
    .line 551
    new-instance v13, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getCurrentProcessName()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v14

    .line 560
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v14, ""

    .line 564
    .line 565
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v13

    .line 572
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 577
    .line 578
    .line 579
    move-result v15

    .line 580
    if-eqz v15, :cond_4

    .line 581
    .line 582
    const-string v15, ""

    .line 583
    .line 584
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v13

    .line 588
    :cond_4
    const-string v14, ":"

    .line 589
    .line 590
    const-string v15, ""

    .line 591
    .line 592
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    new-instance v14, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v15, "_"

    .line 605
    .line 606
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 616
    :try_start_6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 617
    .line 618
    .line 619
    move-result-object v14

    .line 620
    new-instance v15, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    const-string v5, "dhs cld nm "

    .line 626
    .line 627
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    new-array v15, v10, [Ljava/lang/Object;

    .line 638
    .line 639
    invoke-virtual {v14, v5, v15}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 640
    .line 641
    .line 642
    goto :goto_0

    .line 643
    :catchall_0
    :cond_5
    move-object v13, v12

    .line 644
    :catchall_1
    :goto_0
    :try_start_7
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 645
    .line 646
    invoke-static {v5, v11, v13}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    const/4 v11, 0x1

    .line 651
    if-eqz v5, :cond_6

    .line 652
    .line 653
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 654
    .line 655
    .line 656
    move-result v13

    .line 657
    if-eqz v13, :cond_6

    .line 658
    .line 659
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 660
    .line 661
    .line 662
    move-result v13

    .line 663
    if-eqz v13, :cond_6

    .line 664
    .line 665
    const/4 v13, 0x1

    .line 666
    goto :goto_1

    .line 667
    :cond_6
    const/4 v13, 0x0

    .line 668
    :goto_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 669
    .line 670
    .line 671
    move-result-object v14

    .line 672
    new-instance v15, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string v6, "dhs cac: "

    .line 678
    .line 679
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    new-array v15, v10, [Ljava/lang/Object;

    .line 690
    .line 691
    invoke-virtual {v14, v6, v15}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 692
    .line 693
    .line 694
    invoke-static {v5}, Lcn/fly/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    if-eqz v13, :cond_9

    .line 699
    .line 700
    iget-object v13, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 701
    .line 702
    const/4 v14, 0x5

    .line 703
    invoke-virtual {v13, v14}, Lcn/fly/tools/b/d;->a(I)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v13

    .line 710
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 711
    .line 712
    .line 713
    move-result-object v14

    .line 714
    new-instance v15, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .line 718
    .line 719
    const-string v7, "dhs m5: "

    .line 720
    .line 721
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v7

    .line 731
    new-array v8, v10, [Ljava/lang/Object;

    .line 732
    .line 733
    invoke-virtual {v14, v7, v8}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 734
    .line 735
    .line 736
    if-nez v13, :cond_7

    .line 737
    .line 738
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 739
    .line 740
    const/4 v7, 0x6

    .line 741
    invoke-virtual {v6, v7}, Lcn/fly/tools/b/d;->a(I)V

    .line 742
    .line 743
    .line 744
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 745
    .line 746
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 747
    .line 748
    invoke-static {v6, v7}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    invoke-static {v6, v7, v5, v12}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    goto :goto_2

    .line 757
    :cond_7
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 758
    .line 759
    .line 760
    move-result-object v7

    .line 761
    new-instance v8, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    const-string v12, "dhs tbm: "

    .line 767
    .line 768
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-object v12, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 772
    .line 773
    invoke-static {v12}, Lcn/fly/tools/b/d;->b(Lcn/fly/tools/b/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 774
    .line 775
    .line 776
    move-result-object v12

    .line 777
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 778
    .line 779
    .line 780
    move-result v12

    .line 781
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    new-array v12, v10, [Ljava/lang/Object;

    .line 789
    .line 790
    invoke-virtual {v7, v8, v12}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 791
    .line 792
    .line 793
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 794
    .line 795
    invoke-static {v7}, Lcn/fly/tools/b/d;->b(Lcn/fly/tools/b/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 800
    .line 801
    .line 802
    move-result v7

    .line 803
    if-eqz v7, :cond_8

    .line 804
    .line 805
    goto :goto_2

    .line 806
    :cond_8
    const-string v6, ""

    .line 807
    .line 808
    goto :goto_2

    .line 809
    :cond_9
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 810
    .line 811
    const/16 v7, 0x8

    .line 812
    .line 813
    invoke-virtual {v6, v7}, Lcn/fly/tools/b/d;->a(I)V

    .line 814
    .line 815
    .line 816
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 817
    .line 818
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->a:Ljava/lang/String;

    .line 819
    .line 820
    invoke-static {v6, v7}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    invoke-static {v6, v7, v5, v12}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v6

    .line 828
    :goto_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 829
    .line 830
    .line 831
    move-result-object v7

    .line 832
    new-instance v8, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .line 836
    .line 837
    const-string v11, "dhs cl:  tm5: "

    .line 838
    .line 839
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    const-string v11, ", cm5: "

    .line 846
    .line 847
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    iget-object v11, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 851
    .line 852
    invoke-static {v11}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v11

    .line 856
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    new-array v11, v10, [Ljava/lang/Object;

    .line 864
    .line 865
    invoke-virtual {v7, v8, v11}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 866
    .line 867
    .line 868
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 869
    .line 870
    .line 871
    move-result v7

    .line 872
    if-nez v7, :cond_c

    .line 873
    .line 874
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 875
    .line 876
    invoke-static {v7}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v7

    .line 880
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    move-result v7

    .line 884
    if-nez v7, :cond_c

    .line 885
    .line 886
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 887
    .line 888
    invoke-static {v7, v5}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;Ljava/io/File;)V

    .line 889
    .line 890
    .line 891
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 892
    .line 893
    invoke-static {v7, v5, v6}, Lcn/fly/tools/b/d;->b(Lcn/fly/tools/b/d;Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    .line 894
    .line 895
    .line 896
    move-result-object v6

    .line 897
    if-eqz v6, :cond_a

    .line 898
    .line 899
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 900
    .line 901
    .line 902
    move-result v7

    .line 903
    if-nez v7, :cond_a

    .line 904
    .line 905
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 906
    .line 907
    .line 908
    move-result-object v7

    .line 909
    const-string v8, "dhs l succ"

    .line 910
    .line 911
    new-array v11, v10, [Ljava/lang/Object;

    .line 912
    .line 913
    invoke-virtual {v7, v8, v11}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 914
    .line 915
    .line 916
    new-instance v7, Lcn/fly/tools/b/f;

    .line 917
    .line 918
    invoke-direct {v7, v6}, Lcn/fly/tools/b/f;-><init>(Ljava/util/HashMap;)V

    .line 919
    .line 920
    .line 921
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 922
    .line 923
    invoke-static {v5}, Lcn/fly/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-static {v6, v5}, Lcn/fly/tools/b/d;->d(Lcn/fly/tools/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 931
    .line 932
    invoke-static {v5}, Lcn/fly/tools/b/d;->d(Lcn/fly/tools/b/d;)Landroid/content/Context;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    invoke-static {v5}, Lcn/fly/tools/b/c;->a(Landroid/content/Context;)Lcn/fly/tools/b/c;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    invoke-virtual {v5, v7}, Lcn/fly/tools/b/c;->a(Lcn/fly/tools/b/a;)Z

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    invoke-static {v5}, Lcn/fly/tools/b/d;->a(Z)Z

    .line 945
    .line 946
    .line 947
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 948
    .line 949
    invoke-virtual {v5, v9}, Lcn/fly/tools/b/d;->a(I)V

    .line 950
    .line 951
    .line 952
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 953
    .line 954
    .line 955
    move-result-object v5

    .line 956
    const-string v6, "dhs fin"

    .line 957
    .line 958
    new-array v7, v10, [Ljava/lang/Object;

    .line 959
    .line 960
    invoke-virtual {v5, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 961
    .line 962
    .line 963
    goto :goto_3

    .line 964
    :cond_a
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 965
    .line 966
    .line 967
    move-result v6

    .line 968
    if-eqz v6, :cond_b

    .line 969
    .line 970
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 971
    .line 972
    .line 973
    :catchall_2
    :cond_b
    :try_start_9
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 974
    .line 975
    .line 976
    move-result-object v5

    .line 977
    const-string v6, "dhs l fail"

    .line 978
    .line 979
    new-array v7, v10, [Ljava/lang/Object;

    .line 980
    .line 981
    invoke-virtual {v5, v6, v7}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 982
    .line 983
    .line 984
    :cond_c
    :goto_3
    :try_start_a
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 985
    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 987
    .line 988
    .line 989
    move-result-wide v6

    .line 990
    sub-long/2addr v6, v3

    .line 991
    invoke-static {v5, v6, v7}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;J)J

    .line 992
    .line 993
    .line 994
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    new-instance v4, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    const-string v5, "dhs ctd: "

    .line 1004
    .line 1005
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1009
    .line 1010
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    new-array v5, v10, [Ljava/lang/Object;

    .line 1018
    .line 1019
    invoke-virtual {v3, v4, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1020
    .line 1021
    .line 1022
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1023
    .line 1024
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1025
    .line 1026
    .line 1027
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1028
    .line 1029
    invoke-static {v3}, Lcn/fly/tools/b/d;->e(Lcn/fly/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1034
    .line 1035
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    const-string v5, "dhs tt "

    .line 1048
    .line 1049
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1053
    .line 1054
    invoke-static {v5}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v5

    .line 1058
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    new-array v5, v10, [Ljava/lang/Object;

    .line 1066
    .line 1067
    invoke-virtual {v3, v4, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1068
    .line 1069
    .line 1070
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1071
    .line 1072
    invoke-static {v3}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v3

    .line 1076
    const-wide/16 v5, 0xdac

    .line 1077
    .line 1078
    cmp-long v7, v3, v5

    .line 1079
    .line 1080
    if-lez v7, :cond_d

    .line 1081
    .line 1082
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1083
    .line 1084
    invoke-virtual {v3}, Lcn/fly/tools/b/d;->b()I

    .line 1085
    .line 1086
    .line 1087
    move-result v3

    .line 1088
    if-ne v3, v9, :cond_d

    .line 1089
    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    const-string v5, "-t-"

    .line 1098
    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1103
    .line 1104
    invoke-static {v5}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1105
    .line 1106
    .line 1107
    move-result-wide v5

    .line 1108
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    const-string v4, "-d-"

    .line 1119
    .line 1120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1124
    .line 1125
    invoke-static {v4}, Lcn/fly/tools/b/d;->h(Lcn/fly/tools/b/d;)J

    .line 1126
    .line 1127
    .line 1128
    move-result-wide v4

    .line 1129
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    const-string v4, "-l-"

    .line 1133
    .line 1134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1138
    .line 1139
    invoke-static {v4}, Lcn/fly/tools/b/d;->g(Lcn/fly/tools/b/d;)J

    .line 1140
    .line 1141
    .line 1142
    move-result-wide v4

    .line 1143
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    const-string v4, " "

    .line 1147
    .line 1148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v4

    .line 1155
    new-instance v5, Ljava/lang/Throwable;

    .line 1156
    .line 1157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    invoke-direct {v5, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    const-string v6, ""

    .line 1170
    .line 1171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1175
    .line 1176
    invoke-static {v6}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v6

    .line 1180
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    const/16 v6, 0xb

    .line 1188
    .line 1189
    const/4 v7, 0x3

    .line 1190
    :goto_4
    invoke-virtual {v4, v7, v6, v5, v3}, Lcn/fly/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_5

    .line 1194
    .line 1195
    :catchall_3
    move-exception v0

    .line 1196
    move-object v5, v0

    .line 1197
    :try_start_b
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v6

    .line 1201
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    const-string v8, "dhs oops: "

    .line 1207
    .line 1208
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v8

    .line 1215
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v7

    .line 1222
    new-array v8, v10, [Ljava/lang/Object;

    .line 1223
    .line 1224
    invoke-virtual {v6, v7, v8}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1225
    .line 1226
    .line 1227
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v6

    .line 1231
    invoke-virtual {v6, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1232
    .line 1233
    .line 1234
    :try_start_c
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1235
    .line 1236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1237
    .line 1238
    .line 1239
    move-result-wide v6

    .line 1240
    sub-long/2addr v6, v3

    .line 1241
    invoke-static {v5, v6, v7}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;J)J

    .line 1242
    .line 1243
    .line 1244
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1251
    .line 1252
    .line 1253
    const-string v5, "dhs ctd: "

    .line 1254
    .line 1255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1259
    .line 1260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v4

    .line 1267
    new-array v5, v10, [Ljava/lang/Object;

    .line 1268
    .line 1269
    invoke-virtual {v3, v4, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1270
    .line 1271
    .line 1272
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1273
    .line 1274
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1275
    .line 1276
    .line 1277
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1278
    .line 1279
    invoke-static {v3}, Lcn/fly/tools/b/d;->e(Lcn/fly/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1284
    .line 1285
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .line 1296
    .line 1297
    const-string v5, "dhs tt "

    .line 1298
    .line 1299
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    .line 1302
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1303
    .line 1304
    invoke-static {v5}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1305
    .line 1306
    .line 1307
    move-result-wide v5

    .line 1308
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v4

    .line 1315
    new-array v5, v10, [Ljava/lang/Object;

    .line 1316
    .line 1317
    invoke-virtual {v3, v4, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1318
    .line 1319
    .line 1320
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1321
    .line 1322
    invoke-static {v3}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v3

    .line 1326
    const-wide/16 v5, 0xdac

    .line 1327
    .line 1328
    cmp-long v7, v3, v5

    .line 1329
    .line 1330
    if-lez v7, :cond_d

    .line 1331
    .line 1332
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1333
    .line 1334
    invoke-virtual {v3}, Lcn/fly/tools/b/d;->b()I

    .line 1335
    .line 1336
    .line 1337
    move-result v3

    .line 1338
    if-ne v3, v9, :cond_d

    .line 1339
    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    .line 1346
    .line 1347
    const-string v5, "-t-"

    .line 1348
    .line 1349
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    .line 1352
    iget-object v5, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1353
    .line 1354
    invoke-static {v5}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1355
    .line 1356
    .line 1357
    move-result-wide v5

    .line 1358
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v4

    .line 1365
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    const-string v4, "-d-"

    .line 1369
    .line 1370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    .line 1373
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1374
    .line 1375
    invoke-static {v4}, Lcn/fly/tools/b/d;->h(Lcn/fly/tools/b/d;)J

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v4

    .line 1379
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    const-string v4, "-l-"

    .line 1383
    .line 1384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1388
    .line 1389
    invoke-static {v4}, Lcn/fly/tools/b/d;->g(Lcn/fly/tools/b/d;)J

    .line 1390
    .line 1391
    .line 1392
    move-result-wide v4

    .line 1393
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    const-string v4, " "

    .line 1397
    .line 1398
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v4

    .line 1405
    new-instance v5, Ljava/lang/Throwable;

    .line 1406
    .line 1407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v3

    .line 1411
    invoke-direct {v5, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .line 1418
    .line 1419
    const-string v6, ""

    .line 1420
    .line 1421
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1425
    .line 1426
    invoke-static {v6}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v3

    .line 1437
    const/16 v6, 0xb

    .line 1438
    .line 1439
    const/4 v7, 0x3

    .line 1440
    goto/16 :goto_4

    .line 1441
    .line 1442
    :cond_d
    :goto_5
    sget-object v3, Lcn/fly/tools/c/a;->c:Ljava/lang/ThreadLocal;

    .line 1443
    .line 1444
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1445
    .line 1446
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1447
    .line 1448
    .line 1449
    monitor-exit v2

    .line 1450
    return-void

    .line 1451
    :catchall_4
    move-exception v0

    .line 1452
    move-object v5, v0

    .line 1453
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1454
    .line 1455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1456
    .line 1457
    .line 1458
    move-result-wide v7

    .line 1459
    sub-long/2addr v7, v3

    .line 1460
    invoke-static {v6, v7, v8}, Lcn/fly/tools/b/d;->a(Lcn/fly/tools/b/d;J)J

    .line 1461
    .line 1462
    .line 1463
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .line 1471
    .line 1472
    const-string v6, "dhs ctd: "

    .line 1473
    .line 1474
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1478
    .line 1479
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v4

    .line 1486
    new-array v6, v10, [Ljava/lang/Object;

    .line 1487
    .line 1488
    invoke-virtual {v3, v4, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1489
    .line 1490
    .line 1491
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1492
    .line 1493
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1494
    .line 1495
    .line 1496
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1497
    .line 1498
    invoke-static {v3}, Lcn/fly/tools/b/d;->e(Lcn/fly/tools/b/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v3

    .line 1502
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->b:Ljava/util/concurrent/CountDownLatch;

    .line 1503
    .line 1504
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1514
    .line 1515
    .line 1516
    const-string v6, "dhs tt "

    .line 1517
    .line 1518
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1522
    .line 1523
    invoke-static {v6}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1524
    .line 1525
    .line 1526
    move-result-wide v6

    .line 1527
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v4

    .line 1534
    new-array v6, v10, [Ljava/lang/Object;

    .line 1535
    .line 1536
    invoke-virtual {v3, v4, v6}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1537
    .line 1538
    .line 1539
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1540
    .line 1541
    invoke-static {v3}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1542
    .line 1543
    .line 1544
    move-result-wide v3

    .line 1545
    const-wide/16 v6, 0xdac

    .line 1546
    .line 1547
    cmp-long v8, v3, v6

    .line 1548
    .line 1549
    if-lez v8, :cond_e

    .line 1550
    .line 1551
    iget-object v3, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1552
    .line 1553
    invoke-virtual {v3}, Lcn/fly/tools/b/d;->b()I

    .line 1554
    .line 1555
    .line 1556
    move-result v3

    .line 1557
    if-ne v3, v9, :cond_e

    .line 1558
    .line 1559
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    const-string v6, "-t-"

    .line 1567
    .line 1568
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    iget-object v6, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1572
    .line 1573
    invoke-static {v6}, Lcn/fly/tools/b/d;->f(Lcn/fly/tools/b/d;)J

    .line 1574
    .line 1575
    .line 1576
    move-result-wide v6

    .line 1577
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v4

    .line 1584
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    const-string v4, "-d-"

    .line 1588
    .line 1589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    .line 1592
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1593
    .line 1594
    invoke-static {v4}, Lcn/fly/tools/b/d;->h(Lcn/fly/tools/b/d;)J

    .line 1595
    .line 1596
    .line 1597
    move-result-wide v6

    .line 1598
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    const-string v4, "-l-"

    .line 1602
    .line 1603
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    iget-object v4, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1607
    .line 1608
    invoke-static {v4}, Lcn/fly/tools/b/d;->g(Lcn/fly/tools/b/d;)J

    .line 1609
    .line 1610
    .line 1611
    move-result-wide v6

    .line 1612
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1613
    .line 1614
    .line 1615
    const-string v4, " "

    .line 1616
    .line 1617
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    invoke-static {}, Lcn/fly/commons/h;->a()Lcn/fly/commons/h;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v4

    .line 1624
    new-instance v6, Ljava/lang/Throwable;

    .line 1625
    .line 1626
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v3

    .line 1630
    invoke-direct {v6, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1634
    .line 1635
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .line 1637
    .line 1638
    const-string v7, ""

    .line 1639
    .line 1640
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    .line 1642
    .line 1643
    iget-object v7, v1, Lcn/fly/tools/b/d$1;->c:Lcn/fly/tools/b/d;

    .line 1644
    .line 1645
    invoke-static {v7}, Lcn/fly/tools/b/d;->c(Lcn/fly/tools/b/d;)Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v7

    .line 1649
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v3

    .line 1656
    const/16 v7, 0xb

    .line 1657
    .line 1658
    const/4 v8, 0x3

    .line 1659
    invoke-virtual {v4, v8, v7, v6, v3}, Lcn/fly/commons/h;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1660
    .line 1661
    .line 1662
    :cond_e
    throw v5

    .line 1663
    :catchall_5
    move-exception v0

    .line 1664
    move-object v3, v0

    .line 1665
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1666
    throw v3
.end method
