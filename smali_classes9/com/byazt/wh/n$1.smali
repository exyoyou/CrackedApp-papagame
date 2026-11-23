.class public Lcom/byazt/wh/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/util/SparseArray;

.field public final synthetic tt:Landroid/util/SparseArray;

.field public final synthetic uj:Lcom/byazt/wh/n;

.field public final synthetic ve:Lcom/byazt/wh/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/n;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/wh/n;->sp()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->h()Lcom/byazt/zz/sl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v5, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/16 v8, 0x2000

    .line 36
    .line 37
    const/4 v9, -0x3

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/byazt/wh/n;->sp()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "SELECT * FROM downloader"

    .line 45
    .line 46
    invoke-virtual {v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_d

    .line 55
    .line 56
    new-instance v6, Lcom/byazt/t/DownloadInfo;

    .line 57
    .line 58
    invoke-direct {v6, v2}, Lcom/byazt/t/DownloadInfo;-><init>(Landroid/database/Cursor;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v6, v7}, Lcom/byazt/t/DownloadInfo;->setStatusAtDbInit(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->isCanResumeFromBreakPointStatus()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v12, -0x5

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6, v12}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string v13, "status_not_update_to_db"

    .line 83
    .line 84
    invoke-virtual {v7, v13, v11}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_1

    .line 89
    .line 90
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    const/16 v13, 0xb

    .line 123
    .line 124
    if-ne v7, v11, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 127
    .line 128
    .line 129
    move-result-wide v14

    .line 130
    const-wide/16 v16, 0x0

    .line 131
    .line 132
    cmp-long v7, v14, v16

    .line 133
    .line 134
    if-gtz v7, :cond_3

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eq v7, v9, :cond_4

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eq v7, v13, :cond_4

    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->isFileDataValid()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_4

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->reset()V

    .line 157
    .line 158
    .line 159
    :cond_4
    const/4 v7, 0x0

    .line 160
    :goto_1
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-ne v14, v13, :cond_5

    .line 165
    .line 166
    invoke-virtual {v6, v12}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    invoke-static {v12, v13, v14}, Lcom/byazt/w/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-eqz v12, :cond_8

    .line 186
    .line 187
    const/high16 v12, 0x2000000

    .line 188
    .line 189
    invoke-static {v12}, Lcom/byazt/w/c;->c(I)Z

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    if-eqz v12, :cond_6

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->erase()V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    :goto_2
    const/4 v7, 0x1

    .line 201
    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    .line 202
    .line 203
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_9
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v0, :cond_b

    .line 224
    .line 225
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getTaskKey()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    if-eqz v13, :cond_a

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    :cond_a
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-interface {v0, v12, v13}, Lcom/byazt/zz/sl;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    goto :goto_4

    .line 248
    :cond_b
    const/4 v12, 0x0

    .line 249
    :goto_4
    if-eq v12, v7, :cond_c

    .line 250
    .line 251
    invoke-virtual {v6, v12}, Lcom/byazt/t/DownloadInfo;->setId(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_c
    iget-object v7, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 258
    .line 259
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    invoke-virtual {v7, v12, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_d
    new-array v0, v11, [Landroid/database/Cursor;

    .line 269
    .line 270
    aput-object v2, v0, v10

    .line 271
    .line 272
    invoke-static {v0}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 276
    .line 277
    invoke-static {v0, v3}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 281
    .line 282
    iget-object v6, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 283
    .line 284
    iget-object v7, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-static/range {v2 .. v7}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 287
    .line 288
    .line 289
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 295
    .line 296
    if-eqz v2, :cond_11

    .line 297
    .line 298
    :goto_5
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ge v10, v2, :cond_11

    .line 305
    .line 306
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 307
    .line 308
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_f

    .line 313
    .line 314
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 315
    .line 316
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lcom/byazt/t/DownloadInfo;

    .line 321
    .line 322
    invoke-static {v8}, Lcom/byazt/w/c;->c(I)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_e

    .line 327
    .line 328
    if-eqz v2, :cond_f

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-nez v3, :cond_f

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eq v3, v9, :cond_f

    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 354
    .line 355
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_e
    if-eqz v2, :cond_f

    .line 364
    .line 365
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_f

    .line 370
    .line 371
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 383
    .line 384
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 389
    .line 390
    .line 391
    :cond_f
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-eqz v3, :cond_10

    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    check-cast v3, Ljava/lang/Integer;

    .line 406
    .line 407
    iget-object v4, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_11
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 421
    .line 422
    if-eqz v0, :cond_12

    .line 423
    .line 424
    :goto_8
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 425
    .line 426
    .line 427
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 428
    .line 429
    invoke-static {v0, v11}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Z)Z

    .line 430
    .line 431
    .line 432
    :cond_12
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 433
    .line 434
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 435
    .line 436
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 437
    .line 438
    invoke-virtual {v0, v2, v3}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    :try_start_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 447
    .line 448
    if-eqz v0, :cond_12

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :catchall_1
    move-exception v0

    .line 452
    move-object v2, v0

    .line 453
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 454
    .line 455
    if-eqz v0, :cond_13

    .line 456
    .line 457
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 458
    .line 459
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 460
    .line 461
    .line 462
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 463
    .line 464
    invoke-static {v0, v11}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Z)Z

    .line 465
    .line 466
    .line 467
    :cond_13
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 468
    .line 469
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 470
    .line 471
    iget-object v4, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 472
    .line 473
    invoke-virtual {v0, v3, v4}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 474
    .line 475
    .line 476
    throw v2

    .line 477
    :catchall_2
    move-exception v0

    .line 478
    :try_start_3
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 479
    .line 480
    .line 481
    new-array v0, v11, [Landroid/database/Cursor;

    .line 482
    .line 483
    aput-object v2, v0, v10

    .line 484
    .line 485
    invoke-static {v0}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 486
    .line 487
    .line 488
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 489
    .line 490
    invoke-static {v0, v3}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;)V

    .line 491
    .line 492
    .line 493
    iget-object v2, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 494
    .line 495
    iget-object v6, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 496
    .line 497
    iget-object v7, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 498
    .line 499
    invoke-static/range {v2 .. v7}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 500
    .line 501
    .line 502
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .line 506
    .line 507
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 508
    .line 509
    if-eqz v2, :cond_17

    .line 510
    .line 511
    :goto_9
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 512
    .line 513
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-ge v10, v2, :cond_17

    .line 518
    .line 519
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 520
    .line 521
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_15

    .line 526
    .line 527
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 528
    .line 529
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    check-cast v2, Lcom/byazt/t/DownloadInfo;

    .line 534
    .line 535
    invoke-static {v8}, Lcom/byazt/w/c;->c(I)Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_14

    .line 540
    .line 541
    if-eqz v2, :cond_15

    .line 542
    .line 543
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-nez v3, :cond_15

    .line 548
    .line 549
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-eq v3, v9, :cond_15

    .line 554
    .line 555
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 567
    .line 568
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_14
    if-eqz v2, :cond_15

    .line 577
    .line 578
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-nez v3, :cond_15

    .line 583
    .line 584
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 596
    .line 597
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 602
    .line 603
    .line 604
    :cond_15
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_16

    .line 613
    .line 614
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    check-cast v3, Ljava/lang/Integer;

    .line 619
    .line 620
    iget-object v4, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 621
    .line 622
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 627
    .line 628
    .line 629
    goto :goto_b

    .line 630
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 631
    .line 632
    goto :goto_9

    .line 633
    :cond_17
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 634
    .line 635
    if-eqz v0, :cond_12

    .line 636
    .line 637
    goto/16 :goto_8

    .line 638
    .line 639
    :catchall_3
    move-exception v0

    .line 640
    :try_start_5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 641
    .line 642
    .line 643
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 644
    .line 645
    if-eqz v0, :cond_12

    .line 646
    .line 647
    goto/16 :goto_8

    .line 648
    .line 649
    :catchall_4
    move-exception v0

    .line 650
    move-object v2, v0

    .line 651
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 652
    .line 653
    if-eqz v0, :cond_18

    .line 654
    .line 655
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 656
    .line 657
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 658
    .line 659
    .line 660
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 661
    .line 662
    invoke-static {v0, v11}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Z)Z

    .line 663
    .line 664
    .line 665
    :cond_18
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 666
    .line 667
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 668
    .line 669
    iget-object v4, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 670
    .line 671
    invoke-virtual {v0, v3, v4}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 672
    .line 673
    .line 674
    throw v2

    .line 675
    :catchall_5
    move-exception v0

    .line 676
    move-object v12, v0

    .line 677
    new-array v0, v11, [Landroid/database/Cursor;

    .line 678
    .line 679
    aput-object v2, v0, v10

    .line 680
    .line 681
    invoke-static {v0}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 682
    .line 683
    .line 684
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 685
    .line 686
    invoke-static {v0, v3}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;)V

    .line 687
    .line 688
    .line 689
    iget-object v2, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 690
    .line 691
    iget-object v6, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 692
    .line 693
    iget-object v7, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 694
    .line 695
    invoke-static/range {v2 .. v7}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 696
    .line 697
    .line 698
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .line 702
    .line 703
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 704
    .line 705
    if-eqz v2, :cond_1c

    .line 706
    .line 707
    :goto_c
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 708
    .line 709
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-ge v10, v2, :cond_1c

    .line 714
    .line 715
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 716
    .line 717
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    if-eqz v2, :cond_1a

    .line 722
    .line 723
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 724
    .line 725
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    check-cast v2, Lcom/byazt/t/DownloadInfo;

    .line 730
    .line 731
    invoke-static {v8}, Lcom/byazt/w/c;->c(I)Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-eqz v3, :cond_19

    .line 736
    .line 737
    if-eqz v2, :cond_1a

    .line 738
    .line 739
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    if-nez v3, :cond_1a

    .line 744
    .line 745
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    if-eq v3, v9, :cond_1a

    .line 750
    .line 751
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 763
    .line 764
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 769
    .line 770
    .line 771
    goto :goto_d

    .line 772
    :cond_19
    if-eqz v2, :cond_1a

    .line 773
    .line 774
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkBreakpointAvailable()Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-nez v3, :cond_1a

    .line 779
    .line 780
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 792
    .line 793
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 798
    .line 799
    .line 800
    :cond_1a
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    if-eqz v3, :cond_1b

    .line 809
    .line 810
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    check-cast v3, Ljava/lang/Integer;

    .line 815
    .line 816
    iget-object v4, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 817
    .line 818
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 823
    .line 824
    .line 825
    goto :goto_e

    .line 826
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    .line 827
    .line 828
    goto :goto_c

    .line 829
    :cond_1c
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 830
    .line 831
    if-eqz v0, :cond_1d

    .line 832
    .line 833
    goto :goto_f

    .line 834
    :catchall_6
    move-exception v0

    .line 835
    :try_start_7
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 836
    .line 837
    .line 838
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 839
    .line 840
    if-eqz v0, :cond_1d

    .line 841
    .line 842
    :goto_f
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 843
    .line 844
    .line 845
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 846
    .line 847
    invoke-static {v0, v11}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Z)Z

    .line 848
    .line 849
    .line 850
    :cond_1d
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 851
    .line 852
    iget-object v2, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 853
    .line 854
    iget-object v3, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 855
    .line 856
    invoke-virtual {v0, v2, v3}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 857
    .line 858
    .line 859
    throw v12

    .line 860
    :catchall_7
    move-exception v0

    .line 861
    move-object v2, v0

    .line 862
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 863
    .line 864
    if-eqz v0, :cond_1e

    .line 865
    .line 866
    iget-object v0, v1, Lcom/byazt/wh/n$1;->ve:Lcom/byazt/wh/uj;

    .line 867
    .line 868
    invoke-interface {v0}, Lcom/byazt/wh/uj;->c()V

    .line 869
    .line 870
    .line 871
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 872
    .line 873
    invoke-static {v0, v11}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Z)Z

    .line 874
    .line 875
    .line 876
    :cond_1e
    iget-object v0, v1, Lcom/byazt/wh/n$1;->uj:Lcom/byazt/wh/n;

    .line 877
    .line 878
    iget-object v3, v1, Lcom/byazt/wh/n$1;->c:Landroid/util/SparseArray;

    .line 879
    .line 880
    iget-object v4, v1, Lcom/byazt/wh/n$1;->tt:Landroid/util/SparseArray;

    .line 881
    .line 882
    invoke-virtual {v0, v3, v4}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 883
    .line 884
    .line 885
    throw v2
.end method
