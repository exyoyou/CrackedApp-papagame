.class final Lio/netty/handler/codec/compression/FastLz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BLOCK_TYPE_COMPRESSED:B = 0x1t

.field static final BLOCK_TYPE_NON_COMPRESSED:B = 0x0t

.field static final BLOCK_WITHOUT_CHECKSUM:B = 0x0t

.field static final BLOCK_WITH_CHECKSUM:B = 0x10t

.field static final CHECKSUM_OFFSET:I = 0x4

.field private static final HASH_LOG:I = 0xd

.field private static final HASH_MASK:I = 0x1fff

.field private static final HASH_SIZE:I = 0x2000

.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_AUTO:I = 0x0

.field static final MAGIC_NUMBER:I = 0x464c5a

.field static final MAX_CHUNK_LENGTH:I = 0xffff

.field private static final MAX_COPY:I = 0x20

.field private static final MAX_DISTANCE:I = 0x1fff

.field private static final MAX_FARDISTANCE:I = 0x11ffd

.field private static final MAX_LEN:I = 0x108

.field static final MIN_LENGTH_TO_COMPRESSION:I = 0x20

.field private static final MIN_RECOMENDED_LENGTH_FOR_LEVEL_2:I = 0x10000

.field static final OPTIONS_OFFSET:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static calculateOutputBufferLength(I)I
    .locals 4

    .line 1
    int-to-double v0, p0

    .line 2
    const-wide v2, 0x3ff0f5c28f5c28f6L    # 1.06

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double v0, v0, v2

    .line 8
    .line 9
    double-to-int p0, v0

    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method static compress([BII[BII)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez p5, :cond_1

    .line 8
    .line 9
    const/high16 v4, 0x10000

    .line 10
    .line 11
    if-ge v1, v4, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move/from16 v4, p5

    .line 18
    .line 19
    :goto_0
    add-int/lit8 v5, v1, 0x0

    .line 20
    .line 21
    add-int/lit8 v6, v5, -0x2

    .line 22
    .line 23
    add-int/lit8 v5, v5, -0xc

    .line 24
    .line 25
    const/16 v7, 0x2000

    .line 26
    .line 27
    new-array v8, v7, [I

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    const/4 v10, 0x0

    .line 31
    if-ge v1, v9, :cond_4

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    add-int/lit8 v2, p4, 0x0

    .line 36
    .line 37
    add-int/lit8 v4, v1, -0x1

    .line 38
    .line 39
    int-to-byte v4, v4

    .line 40
    aput-byte v4, p3, v2

    .line 41
    .line 42
    add-int/2addr v6, v3

    .line 43
    const/4 v2, 0x1

    .line 44
    :goto_1
    if-gt v10, v6, :cond_2

    .line 45
    .line 46
    add-int/lit8 v4, v2, 0x1

    .line 47
    .line 48
    add-int v2, p4, v2

    .line 49
    .line 50
    add-int/lit8 v5, v10, 0x1

    .line 51
    .line 52
    add-int v7, p1, v10

    .line 53
    .line 54
    aget-byte v7, v0, v7

    .line 55
    .line 56
    aput-byte v7, p3, v2

    .line 57
    .line 58
    move v2, v4

    .line 59
    move v10, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3
    return v10

    .line 65
    :cond_4
    const/4 v1, 0x0

    .line 66
    :goto_2
    if-ge v1, v7, :cond_5

    .line 67
    .line 68
    aput v10, v8, v1

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    add-int/lit8 v1, p4, 0x0

    .line 74
    .line 75
    const/16 v7, 0x1f

    .line 76
    .line 77
    aput-byte v7, p3, v1

    .line 78
    .line 79
    add-int/lit8 v1, p4, 0x1

    .line 80
    .line 81
    add-int/lit8 v9, p1, 0x0

    .line 82
    .line 83
    aget-byte v9, v0, v9

    .line 84
    .line 85
    aput-byte v9, p3, v1

    .line 86
    .line 87
    add-int/lit8 v1, p4, 0x2

    .line 88
    .line 89
    add-int/lit8 v9, p1, 0x1

    .line 90
    .line 91
    aget-byte v9, v0, v9

    .line 92
    .line 93
    aput-byte v9, p3, v1

    .line 94
    .line 95
    const/4 v9, 0x2

    .line 96
    const/4 v11, 0x3

    .line 97
    const/4 v12, 0x2

    .line 98
    :goto_3
    const/16 v13, 0x20

    .line 99
    .line 100
    if-ge v9, v5, :cond_25

    .line 101
    .line 102
    const-wide/16 v16, 0x0

    .line 103
    .line 104
    if-ne v4, v2, :cond_6

    .line 105
    .line 106
    add-int v18, p1, v9

    .line 107
    .line 108
    aget-byte v1, v0, v18

    .line 109
    .line 110
    add-int/lit8 v10, v18, -0x1

    .line 111
    .line 112
    aget-byte v14, v0, v10

    .line 113
    .line 114
    if-ne v1, v14, :cond_6

    .line 115
    .line 116
    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/lit8 v10, v18, 0x1

    .line 121
    .line 122
    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-ne v1, v10, :cond_6

    .line 127
    .line 128
    add-int/lit8 v1, v9, 0x3

    .line 129
    .line 130
    add-int/lit8 v10, v9, 0x2

    .line 131
    .line 132
    const/4 v14, 0x1

    .line 133
    const-wide/16 v21, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move v1, v9

    .line 137
    move-wide/from16 v21, v16

    .line 138
    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    :goto_4
    const-wide/16 v23, 0x1fff

    .line 142
    .line 143
    if-nez v14, :cond_f

    .line 144
    .line 145
    add-int v10, p1, v1

    .line 146
    .line 147
    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    aget v15, v8, v14

    .line 152
    .line 153
    sub-int v7, v9, v15

    .line 154
    .line 155
    int-to-long v2, v7

    .line 156
    aput v9, v8, v14

    .line 157
    .line 158
    cmp-long v7, v2, v16

    .line 159
    .line 160
    if-eqz v7, :cond_d

    .line 161
    .line 162
    const/4 v7, 0x1

    .line 163
    if-ne v4, v7, :cond_7

    .line 164
    .line 165
    cmp-long v7, v2, v23

    .line 166
    .line 167
    if-ltz v7, :cond_8

    .line 168
    .line 169
    goto/16 :goto_6

    .line 170
    .line 171
    :cond_7
    const-wide/32 v21, 0x11ffd

    .line 172
    .line 173
    .line 174
    cmp-long v7, v2, v21

    .line 175
    .line 176
    if-gez v7, :cond_d

    .line 177
    .line 178
    :cond_8
    add-int/lit8 v7, v15, 0x1

    .line 179
    .line 180
    add-int v14, p1, v15

    .line 181
    .line 182
    aget-byte v14, v0, v14

    .line 183
    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    .line 186
    aget-byte v10, v0, v10

    .line 187
    .line 188
    if-ne v14, v10, :cond_d

    .line 189
    .line 190
    add-int/lit8 v10, v7, 0x1

    .line 191
    .line 192
    add-int v7, p1, v7

    .line 193
    .line 194
    aget-byte v7, v0, v7

    .line 195
    .line 196
    add-int/lit8 v14, v1, 0x1

    .line 197
    .line 198
    add-int v1, p1, v1

    .line 199
    .line 200
    aget-byte v1, v0, v1

    .line 201
    .line 202
    if-ne v7, v1, :cond_d

    .line 203
    .line 204
    add-int/lit8 v1, v10, 0x1

    .line 205
    .line 206
    add-int v7, p1, v10

    .line 207
    .line 208
    aget-byte v7, v0, v7

    .line 209
    .line 210
    add-int/lit8 v10, v14, 0x1

    .line 211
    .line 212
    add-int v14, p1, v14

    .line 213
    .line 214
    aget-byte v14, v0, v14

    .line 215
    .line 216
    if-eq v7, v14, :cond_9

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_9
    const/4 v7, 0x2

    .line 220
    if-ne v4, v7, :cond_c

    .line 221
    .line 222
    cmp-long v7, v2, v23

    .line 223
    .line 224
    if-ltz v7, :cond_c

    .line 225
    .line 226
    add-int/lit8 v7, v10, 0x1

    .line 227
    .line 228
    add-int v10, p1, v10

    .line 229
    .line 230
    aget-byte v10, v0, v10

    .line 231
    .line 232
    add-int/lit8 v14, v1, 0x1

    .line 233
    .line 234
    add-int v1, p1, v1

    .line 235
    .line 236
    aget-byte v1, v0, v1

    .line 237
    .line 238
    if-ne v10, v1, :cond_b

    .line 239
    .line 240
    add-int v1, p1, v7

    .line 241
    .line 242
    aget-byte v1, v0, v1

    .line 243
    .line 244
    add-int/lit8 v10, v14, 0x1

    .line 245
    .line 246
    add-int v7, p1, v14

    .line 247
    .line 248
    aget-byte v7, v0, v7

    .line 249
    .line 250
    if-eq v1, v7, :cond_a

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_a
    const/4 v1, 0x5

    .line 254
    move-wide/from16 v21, v2

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_b
    :goto_5
    add-int/lit8 v1, v11, 0x1

    .line 258
    .line 259
    add-int v2, p4, v11

    .line 260
    .line 261
    add-int/lit8 v3, v9, 0x1

    .line 262
    .line 263
    add-int v7, p1, v9

    .line 264
    .line 265
    aget-byte v7, v0, v7

    .line 266
    .line 267
    aput-byte v7, p3, v2

    .line 268
    .line 269
    add-int/lit8 v12, v12, 0x1

    .line 270
    .line 271
    if-ne v12, v13, :cond_e

    .line 272
    .line 273
    add-int/lit8 v11, v1, 0x1

    .line 274
    .line 275
    add-int v1, p4, v1

    .line 276
    .line 277
    const/16 v2, 0x1f

    .line 278
    .line 279
    aput-byte v2, p3, v1

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_c
    move v10, v1

    .line 283
    move-wide/from16 v21, v2

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_d
    :goto_6
    add-int/lit8 v1, v11, 0x1

    .line 287
    .line 288
    add-int v2, p4, v11

    .line 289
    .line 290
    add-int/lit8 v3, v9, 0x1

    .line 291
    .line 292
    add-int v7, p1, v9

    .line 293
    .line 294
    aget-byte v7, v0, v7

    .line 295
    .line 296
    aput-byte v7, p3, v2

    .line 297
    .line 298
    add-int/lit8 v12, v12, 0x1

    .line 299
    .line 300
    if-ne v12, v13, :cond_e

    .line 301
    .line 302
    add-int/lit8 v11, v1, 0x1

    .line 303
    .line 304
    add-int v1, p4, v1

    .line 305
    .line 306
    const/16 v2, 0x1f

    .line 307
    .line 308
    aput-byte v2, p3, v1

    .line 309
    .line 310
    :goto_7
    move v9, v3

    .line 311
    :goto_8
    const/4 v2, 0x2

    .line 312
    const/4 v3, 0x1

    .line 313
    const/16 v7, 0x1f

    .line 314
    .line 315
    const/4 v10, 0x0

    .line 316
    const/4 v12, 0x0

    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_e
    move v11, v1

    .line 320
    move v9, v3

    .line 321
    const/4 v2, 0x2

    .line 322
    const/4 v3, 0x1

    .line 323
    const/16 v7, 0x1f

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :cond_f
    :goto_9
    const/4 v1, 0x3

    .line 329
    :goto_a
    add-int/2addr v1, v9

    .line 330
    const-wide/16 v2, 0x1

    .line 331
    .line 332
    sub-long v21, v21, v2

    .line 333
    .line 334
    cmp-long v2, v21, v16

    .line 335
    .line 336
    if-nez v2, :cond_11

    .line 337
    .line 338
    add-int v2, p1, v1

    .line 339
    .line 340
    const/4 v3, 0x1

    .line 341
    sub-int/2addr v2, v3

    .line 342
    aget-byte v2, v0, v2

    .line 343
    .line 344
    :goto_b
    if-ge v1, v6, :cond_1b

    .line 345
    .line 346
    add-int/lit8 v3, v10, 0x1

    .line 347
    .line 348
    add-int v7, p1, v10

    .line 349
    .line 350
    aget-byte v7, v0, v7

    .line 351
    .line 352
    if-eq v7, v2, :cond_10

    .line 353
    .line 354
    goto/16 :goto_f

    .line 355
    .line 356
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 357
    .line 358
    move v10, v3

    .line 359
    goto :goto_b

    .line 360
    :cond_11
    add-int/lit8 v2, v10, 0x1

    .line 361
    .line 362
    add-int v3, p1, v10

    .line 363
    .line 364
    aget-byte v3, v0, v3

    .line 365
    .line 366
    add-int/lit8 v7, v1, 0x1

    .line 367
    .line 368
    add-int v1, p1, v1

    .line 369
    .line 370
    aget-byte v1, v0, v1

    .line 371
    .line 372
    if-eq v3, v1, :cond_12

    .line 373
    .line 374
    :goto_c
    move v1, v7

    .line 375
    goto/16 :goto_f

    .line 376
    .line 377
    :cond_12
    add-int/lit8 v1, v2, 0x1

    .line 378
    .line 379
    add-int v2, p1, v2

    .line 380
    .line 381
    aget-byte v2, v0, v2

    .line 382
    .line 383
    add-int/lit8 v3, v7, 0x1

    .line 384
    .line 385
    add-int v7, p1, v7

    .line 386
    .line 387
    aget-byte v7, v0, v7

    .line 388
    .line 389
    if-eq v2, v7, :cond_13

    .line 390
    .line 391
    :goto_d
    move v1, v3

    .line 392
    goto/16 :goto_f

    .line 393
    .line 394
    :cond_13
    add-int/lit8 v2, v1, 0x1

    .line 395
    .line 396
    add-int v1, p1, v1

    .line 397
    .line 398
    aget-byte v1, v0, v1

    .line 399
    .line 400
    add-int/lit8 v7, v3, 0x1

    .line 401
    .line 402
    add-int v3, p1, v3

    .line 403
    .line 404
    aget-byte v3, v0, v3

    .line 405
    .line 406
    if-eq v1, v3, :cond_14

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_14
    add-int/lit8 v1, v2, 0x1

    .line 410
    .line 411
    add-int v2, p1, v2

    .line 412
    .line 413
    aget-byte v2, v0, v2

    .line 414
    .line 415
    add-int/lit8 v3, v7, 0x1

    .line 416
    .line 417
    add-int v7, p1, v7

    .line 418
    .line 419
    aget-byte v7, v0, v7

    .line 420
    .line 421
    if-eq v2, v7, :cond_15

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :cond_15
    add-int/lit8 v2, v1, 0x1

    .line 425
    .line 426
    add-int v1, p1, v1

    .line 427
    .line 428
    aget-byte v1, v0, v1

    .line 429
    .line 430
    add-int/lit8 v7, v3, 0x1

    .line 431
    .line 432
    add-int v3, p1, v3

    .line 433
    .line 434
    aget-byte v3, v0, v3

    .line 435
    .line 436
    if-eq v1, v3, :cond_16

    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_16
    add-int/lit8 v1, v2, 0x1

    .line 440
    .line 441
    add-int v2, p1, v2

    .line 442
    .line 443
    aget-byte v2, v0, v2

    .line 444
    .line 445
    add-int/lit8 v3, v7, 0x1

    .line 446
    .line 447
    add-int v7, p1, v7

    .line 448
    .line 449
    aget-byte v7, v0, v7

    .line 450
    .line 451
    if-eq v2, v7, :cond_17

    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_17
    add-int/lit8 v2, v1, 0x1

    .line 455
    .line 456
    add-int v1, p1, v1

    .line 457
    .line 458
    aget-byte v1, v0, v1

    .line 459
    .line 460
    add-int/lit8 v7, v3, 0x1

    .line 461
    .line 462
    add-int v3, p1, v3

    .line 463
    .line 464
    aget-byte v3, v0, v3

    .line 465
    .line 466
    if-eq v1, v3, :cond_18

    .line 467
    .line 468
    goto :goto_c

    .line 469
    :cond_18
    add-int/lit8 v1, v2, 0x1

    .line 470
    .line 471
    add-int v2, p1, v2

    .line 472
    .line 473
    aget-byte v2, v0, v2

    .line 474
    .line 475
    add-int/lit8 v3, v7, 0x1

    .line 476
    .line 477
    add-int v7, p1, v7

    .line 478
    .line 479
    aget-byte v7, v0, v7

    .line 480
    .line 481
    if-eq v2, v7, :cond_19

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_19
    move v2, v1

    .line 485
    move v1, v3

    .line 486
    :goto_e
    if-ge v1, v6, :cond_1b

    .line 487
    .line 488
    add-int/lit8 v3, v2, 0x1

    .line 489
    .line 490
    add-int v2, p1, v2

    .line 491
    .line 492
    aget-byte v2, v0, v2

    .line 493
    .line 494
    add-int/lit8 v7, v1, 0x1

    .line 495
    .line 496
    add-int v1, p1, v1

    .line 497
    .line 498
    aget-byte v1, v0, v1

    .line 499
    .line 500
    if-eq v2, v1, :cond_1a

    .line 501
    .line 502
    goto/16 :goto_c

    .line 503
    .line 504
    :cond_1a
    move v2, v3

    .line 505
    move v1, v7

    .line 506
    goto :goto_e

    .line 507
    :cond_1b
    :goto_f
    if-eqz v12, :cond_1c

    .line 508
    .line 509
    add-int v2, p4, v11

    .line 510
    .line 511
    sub-int/2addr v2, v12

    .line 512
    const/4 v3, 0x1

    .line 513
    sub-int/2addr v2, v3

    .line 514
    add-int/lit8 v12, v12, -0x1

    .line 515
    .line 516
    int-to-byte v3, v12

    .line 517
    aput-byte v3, p3, v2

    .line 518
    .line 519
    goto :goto_10

    .line 520
    :cond_1c
    add-int/lit8 v11, v11, -0x1

    .line 521
    .line 522
    :goto_10
    const/4 v2, -0x3

    .line 523
    add-int/2addr v1, v2

    .line 524
    sub-int v3, v1, v9

    .line 525
    .line 526
    const-wide/16 v9, 0xe0

    .line 527
    .line 528
    const/4 v7, 0x7

    .line 529
    const-wide/16 v12, 0xff

    .line 530
    .line 531
    const/16 v14, 0x8

    .line 532
    .line 533
    const/4 v15, 0x2

    .line 534
    if-ne v4, v15, :cond_22

    .line 535
    .line 536
    const/16 v2, 0xff

    .line 537
    .line 538
    const/4 v15, -0x1

    .line 539
    cmp-long v16, v21, v23

    .line 540
    .line 541
    if-gez v16, :cond_1f

    .line 542
    .line 543
    if-ge v3, v7, :cond_1d

    .line 544
    .line 545
    add-int/lit8 v2, v11, 0x1

    .line 546
    .line 547
    add-int v7, p4, v11

    .line 548
    .line 549
    shl-int/lit8 v3, v3, 0x5

    .line 550
    .line 551
    int-to-long v9, v3

    .line 552
    ushr-long v14, v21, v14

    .line 553
    .line 554
    add-long/2addr v9, v14

    .line 555
    long-to-int v3, v9

    .line 556
    int-to-byte v3, v3

    .line 557
    aput-byte v3, p3, v7

    .line 558
    .line 559
    add-int/lit8 v3, v2, 0x1

    .line 560
    .line 561
    add-int v2, p4, v2

    .line 562
    .line 563
    and-long v9, v21, v12

    .line 564
    .line 565
    long-to-int v7, v9

    .line 566
    int-to-byte v7, v7

    .line 567
    aput-byte v7, p3, v2

    .line 568
    .line 569
    goto/16 :goto_14

    .line 570
    .line 571
    :cond_1d
    add-int/lit8 v7, v11, 0x1

    .line 572
    .line 573
    add-int v11, p4, v11

    .line 574
    .line 575
    ushr-long v16, v21, v14

    .line 576
    .line 577
    add-long v9, v16, v9

    .line 578
    .line 579
    long-to-int v10, v9

    .line 580
    int-to-byte v9, v10

    .line 581
    aput-byte v9, p3, v11

    .line 582
    .line 583
    add-int/lit8 v3, v3, -0x7

    .line 584
    .line 585
    :goto_11
    if-lt v3, v2, :cond_1e

    .line 586
    .line 587
    add-int/lit8 v9, v7, 0x1

    .line 588
    .line 589
    add-int v7, p4, v7

    .line 590
    .line 591
    aput-byte v15, p3, v7

    .line 592
    .line 593
    add-int/lit16 v3, v3, -0xff

    .line 594
    .line 595
    move v7, v9

    .line 596
    goto :goto_11

    .line 597
    :cond_1e
    add-int/lit8 v2, v7, 0x1

    .line 598
    .line 599
    add-int v7, p4, v7

    .line 600
    .line 601
    int-to-byte v3, v3

    .line 602
    aput-byte v3, p3, v7

    .line 603
    .line 604
    add-int/lit8 v3, v2, 0x1

    .line 605
    .line 606
    add-int v2, p4, v2

    .line 607
    .line 608
    and-long v9, v21, v12

    .line 609
    .line 610
    long-to-int v7, v9

    .line 611
    int-to-byte v7, v7

    .line 612
    aput-byte v7, p3, v2

    .line 613
    .line 614
    goto/16 :goto_14

    .line 615
    .line 616
    :cond_1f
    if-ge v3, v7, :cond_20

    .line 617
    .line 618
    sub-long v21, v21, v23

    .line 619
    .line 620
    add-int/lit8 v2, v11, 0x1

    .line 621
    .line 622
    add-int v7, p4, v11

    .line 623
    .line 624
    shl-int/lit8 v3, v3, 0x5

    .line 625
    .line 626
    const/16 v9, 0x1f

    .line 627
    .line 628
    add-int/2addr v3, v9

    .line 629
    int-to-byte v3, v3

    .line 630
    aput-byte v3, p3, v7

    .line 631
    .line 632
    add-int/lit8 v3, v2, 0x1

    .line 633
    .line 634
    add-int v2, p4, v2

    .line 635
    .line 636
    aput-byte v15, p3, v2

    .line 637
    .line 638
    add-int/lit8 v2, v3, 0x1

    .line 639
    .line 640
    add-int v3, p4, v3

    .line 641
    .line 642
    ushr-long v9, v21, v14

    .line 643
    .line 644
    long-to-int v7, v9

    .line 645
    int-to-byte v7, v7

    .line 646
    aput-byte v7, p3, v3

    .line 647
    .line 648
    add-int/lit8 v3, v2, 0x1

    .line 649
    .line 650
    add-int v2, p4, v2

    .line 651
    .line 652
    and-long v9, v21, v12

    .line 653
    .line 654
    long-to-int v7, v9

    .line 655
    int-to-byte v7, v7

    .line 656
    aput-byte v7, p3, v2

    .line 657
    .line 658
    goto/16 :goto_14

    .line 659
    .line 660
    :cond_20
    sub-long v21, v21, v23

    .line 661
    .line 662
    add-int/lit8 v7, v11, 0x1

    .line 663
    .line 664
    add-int v9, p4, v11

    .line 665
    .line 666
    aput-byte v15, p3, v9

    .line 667
    .line 668
    add-int/lit8 v3, v3, -0x7

    .line 669
    .line 670
    :goto_12
    if-lt v3, v2, :cond_21

    .line 671
    .line 672
    add-int/lit8 v9, v7, 0x1

    .line 673
    .line 674
    add-int v7, p4, v7

    .line 675
    .line 676
    aput-byte v15, p3, v7

    .line 677
    .line 678
    add-int/lit16 v3, v3, -0xff

    .line 679
    .line 680
    move v7, v9

    .line 681
    goto :goto_12

    .line 682
    :cond_21
    add-int/lit8 v2, v7, 0x1

    .line 683
    .line 684
    add-int v7, p4, v7

    .line 685
    .line 686
    int-to-byte v3, v3

    .line 687
    aput-byte v3, p3, v7

    .line 688
    .line 689
    add-int/lit8 v3, v2, 0x1

    .line 690
    .line 691
    add-int v2, p4, v2

    .line 692
    .line 693
    aput-byte v15, p3, v2

    .line 694
    .line 695
    add-int/lit8 v2, v3, 0x1

    .line 696
    .line 697
    add-int v3, p4, v3

    .line 698
    .line 699
    ushr-long v9, v21, v14

    .line 700
    .line 701
    long-to-int v7, v9

    .line 702
    int-to-byte v7, v7

    .line 703
    aput-byte v7, p3, v3

    .line 704
    .line 705
    add-int/lit8 v3, v2, 0x1

    .line 706
    .line 707
    add-int v2, p4, v2

    .line 708
    .line 709
    and-long v9, v21, v12

    .line 710
    .line 711
    long-to-int v7, v9

    .line 712
    int-to-byte v7, v7

    .line 713
    aput-byte v7, p3, v2

    .line 714
    .line 715
    goto :goto_14

    .line 716
    :cond_22
    const/16 v15, 0x106

    .line 717
    .line 718
    if-le v3, v15, :cond_23

    .line 719
    .line 720
    :goto_13
    if-le v3, v15, :cond_23

    .line 721
    .line 722
    add-int/lit8 v16, v11, 0x1

    .line 723
    .line 724
    add-int v11, p4, v11

    .line 725
    .line 726
    ushr-long v19, v21, v14

    .line 727
    .line 728
    add-long v14, v19, v9

    .line 729
    .line 730
    long-to-int v15, v14

    .line 731
    int-to-byte v14, v15

    .line 732
    aput-byte v14, p3, v11

    .line 733
    .line 734
    add-int/lit8 v11, v16, 0x1

    .line 735
    .line 736
    add-int v14, p4, v16

    .line 737
    .line 738
    aput-byte v2, p3, v14

    .line 739
    .line 740
    add-int/lit8 v14, v11, 0x1

    .line 741
    .line 742
    add-int v11, p4, v11

    .line 743
    .line 744
    and-long v9, v21, v12

    .line 745
    .line 746
    long-to-int v10, v9

    .line 747
    int-to-byte v9, v10

    .line 748
    aput-byte v9, p3, v11

    .line 749
    .line 750
    add-int/lit16 v3, v3, -0x106

    .line 751
    .line 752
    move v11, v14

    .line 753
    const-wide/16 v9, 0xe0

    .line 754
    .line 755
    const/16 v14, 0x8

    .line 756
    .line 757
    const/16 v15, 0x106

    .line 758
    .line 759
    goto :goto_13

    .line 760
    :cond_23
    if-ge v3, v7, :cond_24

    .line 761
    .line 762
    add-int/lit8 v2, v11, 0x1

    .line 763
    .line 764
    add-int v7, p4, v11

    .line 765
    .line 766
    shl-int/lit8 v3, v3, 0x5

    .line 767
    .line 768
    int-to-long v9, v3

    .line 769
    const/16 v3, 0x8

    .line 770
    .line 771
    ushr-long v14, v21, v3

    .line 772
    .line 773
    add-long/2addr v9, v14

    .line 774
    long-to-int v3, v9

    .line 775
    int-to-byte v3, v3

    .line 776
    aput-byte v3, p3, v7

    .line 777
    .line 778
    add-int/lit8 v3, v2, 0x1

    .line 779
    .line 780
    add-int v2, p4, v2

    .line 781
    .line 782
    and-long v9, v21, v12

    .line 783
    .line 784
    long-to-int v7, v9

    .line 785
    int-to-byte v7, v7

    .line 786
    aput-byte v7, p3, v2

    .line 787
    .line 788
    goto :goto_14

    .line 789
    :cond_24
    add-int/lit8 v2, v11, 0x1

    .line 790
    .line 791
    add-int v7, p4, v11

    .line 792
    .line 793
    const/16 v9, 0x8

    .line 794
    .line 795
    ushr-long v9, v21, v9

    .line 796
    .line 797
    const-wide/16 v14, 0xe0

    .line 798
    .line 799
    add-long/2addr v9, v14

    .line 800
    long-to-int v10, v9

    .line 801
    int-to-byte v9, v10

    .line 802
    aput-byte v9, p3, v7

    .line 803
    .line 804
    add-int/lit8 v7, v2, 0x1

    .line 805
    .line 806
    add-int v2, p4, v2

    .line 807
    .line 808
    add-int/lit8 v3, v3, -0x7

    .line 809
    .line 810
    int-to-byte v3, v3

    .line 811
    aput-byte v3, p3, v2

    .line 812
    .line 813
    add-int/lit8 v3, v7, 0x1

    .line 814
    .line 815
    add-int v2, p4, v7

    .line 816
    .line 817
    and-long v9, v21, v12

    .line 818
    .line 819
    long-to-int v7, v9

    .line 820
    int-to-byte v7, v7

    .line 821
    aput-byte v7, p3, v2

    .line 822
    .line 823
    :goto_14
    add-int v2, p1, v1

    .line 824
    .line 825
    invoke-static {v0, v2}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    add-int/lit8 v7, v1, 0x1

    .line 830
    .line 831
    aput v1, v8, v2

    .line 832
    .line 833
    add-int v1, p1, v7

    .line 834
    .line 835
    invoke-static {v0, v1}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    add-int/lit8 v9, v7, 0x1

    .line 840
    .line 841
    aput v7, v8, v1

    .line 842
    .line 843
    add-int/lit8 v11, v3, 0x1

    .line 844
    .line 845
    add-int v1, p4, v3

    .line 846
    .line 847
    const/16 v2, 0x1f

    .line 848
    .line 849
    aput-byte v2, p3, v1

    .line 850
    .line 851
    goto/16 :goto_8

    .line 852
    .line 853
    :cond_25
    const/4 v1, 0x1

    .line 854
    add-int/2addr v6, v1

    .line 855
    :goto_15
    if-gt v9, v6, :cond_27

    .line 856
    .line 857
    add-int/lit8 v1, v11, 0x1

    .line 858
    .line 859
    add-int v2, p4, v11

    .line 860
    .line 861
    add-int/lit8 v3, v9, 0x1

    .line 862
    .line 863
    add-int v5, p1, v9

    .line 864
    .line 865
    aget-byte v5, v0, v5

    .line 866
    .line 867
    aput-byte v5, p3, v2

    .line 868
    .line 869
    add-int/lit8 v12, v12, 0x1

    .line 870
    .line 871
    if-ne v12, v13, :cond_26

    .line 872
    .line 873
    add-int/lit8 v11, v1, 0x1

    .line 874
    .line 875
    add-int v1, p4, v1

    .line 876
    .line 877
    const/16 v2, 0x1f

    .line 878
    .line 879
    aput-byte v2, p3, v1

    .line 880
    .line 881
    move v9, v3

    .line 882
    const/4 v12, 0x0

    .line 883
    goto :goto_15

    .line 884
    :cond_26
    move v11, v1

    .line 885
    move v9, v3

    .line 886
    goto :goto_15

    .line 887
    :cond_27
    if-eqz v12, :cond_28

    .line 888
    .line 889
    add-int v0, p4, v11

    .line 890
    .line 891
    sub-int/2addr v0, v12

    .line 892
    const/4 v1, 0x1

    .line 893
    sub-int/2addr v0, v1

    .line 894
    sub-int/2addr v12, v1

    .line 895
    int-to-byte v1, v12

    .line 896
    aput-byte v1, p3, v0

    .line 897
    .line 898
    goto :goto_16

    .line 899
    :cond_28
    add-int/lit8 v11, v11, -0x1

    .line 900
    .line 901
    :goto_16
    const/4 v0, 0x2

    .line 902
    if-ne v4, v0, :cond_29

    .line 903
    .line 904
    aget-byte v0, p3, p4

    .line 905
    .line 906
    or-int/2addr v0, v13

    .line 907
    int-to-byte v0, v0

    .line 908
    aput-byte v0, p3, p4

    .line 909
    .line 910
    :cond_29
    return v11
.end method

.method static decompress([BII[BII)I
    .locals 30

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    aget-byte v2, p0, p1

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    shr-int/2addr v2, v3

    .line 9
    const/4 v4, 0x1

    .line 10
    add-int/2addr v2, v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq v2, v4, :cond_1

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    if-ne v2, v6, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v1, v5

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    aput-object v2, v1, v4

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    aput-object v2, v1, v6

    .line 40
    .line 41
    const-string v2, "invalid level: %d (expected: %d or %d)"

    .line 42
    .line 43
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    add-int/lit8 v6, p1, 0x0

    .line 52
    .line 53
    aget-byte v6, p0, v6

    .line 54
    .line 55
    and-int/lit8 v6, v6, 0x1f

    .line 56
    .line 57
    int-to-long v6, v6

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x1

    .line 60
    const/4 v10, 0x1

    .line 61
    :goto_1
    shr-long v11, v6, v3

    .line 62
    .line 63
    const-wide/16 v13, 0x1f

    .line 64
    .line 65
    and-long/2addr v13, v6

    .line 66
    const/16 v15, 0x8

    .line 67
    .line 68
    shl-long/2addr v13, v15

    .line 69
    const-wide/16 v16, 0x20

    .line 70
    .line 71
    const-wide/16 v18, 0x0

    .line 72
    .line 73
    const-wide/16 v20, 0x1

    .line 74
    .line 75
    cmp-long v22, v6, v16

    .line 76
    .line 77
    if-ltz v22, :cond_d

    .line 78
    .line 79
    sub-long v11, v11, v20

    .line 80
    .line 81
    move-wide/from16 v22, v6

    .line 82
    .line 83
    int-to-long v5, v8

    .line 84
    sub-long v3, v5, v13

    .line 85
    .line 86
    long-to-int v4, v3

    .line 87
    const-wide/16 v24, 0x6

    .line 88
    .line 89
    cmp-long v3, v11, v24

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    if-ne v2, v3, :cond_2

    .line 95
    .line 96
    add-int/lit8 v3, v9, 0x1

    .line 97
    .line 98
    add-int v9, p1, v9

    .line 99
    .line 100
    aget-byte v9, p0, v9

    .line 101
    .line 102
    const/16 v7, 0xff

    .line 103
    .line 104
    and-int/2addr v9, v7

    .line 105
    move/from16 v25, v8

    .line 106
    .line 107
    int-to-long v7, v9

    .line 108
    add-long/2addr v11, v7

    .line 109
    move v9, v3

    .line 110
    move/from16 v26, v10

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    const/16 v8, 0xff

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_2
    move/from16 v25, v8

    .line 117
    .line 118
    :goto_2
    add-int/lit8 v3, v9, 0x1

    .line 119
    .line 120
    add-int v7, p1, v9

    .line 121
    .line 122
    aget-byte v7, p0, v7

    .line 123
    .line 124
    const/16 v8, 0xff

    .line 125
    .line 126
    and-int/2addr v7, v8

    .line 127
    move/from16 v26, v10

    .line 128
    .line 129
    int-to-long v9, v7

    .line 130
    add-long/2addr v11, v9

    .line 131
    move v9, v3

    .line 132
    if-eq v7, v8, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move/from16 v10, v26

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move/from16 v25, v8

    .line 139
    .line 140
    move/from16 v26, v10

    .line 141
    .line 142
    const/16 v8, 0xff

    .line 143
    .line 144
    :goto_3
    const/4 v3, 0x1

    .line 145
    :goto_4
    if-ne v2, v3, :cond_5

    .line 146
    .line 147
    add-int/lit8 v7, v9, 0x1

    .line 148
    .line 149
    add-int v9, p1, v9

    .line 150
    .line 151
    aget-byte v9, p0, v9

    .line 152
    .line 153
    and-int/2addr v9, v8

    .line 154
    sub-int/2addr v4, v9

    .line 155
    goto :goto_5

    .line 156
    :cond_5
    add-int/lit8 v7, v9, 0x1

    .line 157
    .line 158
    add-int v9, p1, v9

    .line 159
    .line 160
    aget-byte v9, p0, v9

    .line 161
    .line 162
    and-int/2addr v9, v8

    .line 163
    sub-int/2addr v4, v9

    .line 164
    if-ne v9, v8, :cond_6

    .line 165
    .line 166
    const-wide/16 v9, 0x1f00

    .line 167
    .line 168
    cmp-long v17, v13, v9

    .line 169
    .line 170
    if-nez v17, :cond_6

    .line 171
    .line 172
    add-int/lit8 v4, v7, 0x1

    .line 173
    .line 174
    add-int v7, p1, v7

    .line 175
    .line 176
    aget-byte v7, p0, v7

    .line 177
    .line 178
    and-int/2addr v7, v8

    .line 179
    shl-int/2addr v7, v15

    .line 180
    int-to-long v9, v7

    .line 181
    add-int/lit8 v7, v4, 0x1

    .line 182
    .line 183
    add-int v4, p1, v4

    .line 184
    .line 185
    aget-byte v4, p0, v4

    .line 186
    .line 187
    and-int/2addr v4, v8

    .line 188
    int-to-long v13, v4

    .line 189
    add-long/2addr v9, v13

    .line 190
    sub-long v8, v5, v9

    .line 191
    .line 192
    const-wide/16 v13, 0x1fff

    .line 193
    .line 194
    sub-long/2addr v8, v13

    .line 195
    long-to-int v4, v8

    .line 196
    :cond_6
    :goto_5
    add-long/2addr v5, v11

    .line 197
    const-wide/16 v8, 0x3

    .line 198
    .line 199
    add-long/2addr v5, v8

    .line 200
    int-to-long v8, v1

    .line 201
    cmp-long v10, v5, v8

    .line 202
    .line 203
    if-lez v10, :cond_7

    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    return v5

    .line 207
    :cond_7
    const/4 v5, 0x0

    .line 208
    add-int/lit8 v6, v4, -0x1

    .line 209
    .line 210
    if-gez v6, :cond_8

    .line 211
    .line 212
    return v5

    .line 213
    :cond_8
    if-ge v7, v0, :cond_9

    .line 214
    .line 215
    add-int/lit8 v5, v7, 0x1

    .line 216
    .line 217
    add-int v6, p1, v7

    .line 218
    .line 219
    aget-byte v6, p0, v6

    .line 220
    .line 221
    const/16 v7, 0xff

    .line 222
    .line 223
    and-int/2addr v6, v7

    .line 224
    int-to-long v6, v6

    .line 225
    move/from16 v8, v25

    .line 226
    .line 227
    move/from16 v10, v26

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_9
    move v5, v7

    .line 231
    move-wide/from16 v6, v22

    .line 232
    .line 233
    move/from16 v8, v25

    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    :goto_6
    if-ne v4, v8, :cond_b

    .line 237
    .line 238
    add-int v4, p4, v4

    .line 239
    .line 240
    const/4 v3, 0x1

    .line 241
    sub-int/2addr v4, v3

    .line 242
    aget-byte v4, p3, v4

    .line 243
    .line 244
    add-int/lit8 v9, v8, 0x1

    .line 245
    .line 246
    add-int v8, p4, v8

    .line 247
    .line 248
    aput-byte v4, p3, v8

    .line 249
    .line 250
    add-int/lit8 v8, v9, 0x1

    .line 251
    .line 252
    add-int v9, p4, v9

    .line 253
    .line 254
    aput-byte v4, p3, v9

    .line 255
    .line 256
    add-int/lit8 v9, v8, 0x1

    .line 257
    .line 258
    add-int v8, p4, v8

    .line 259
    .line 260
    aput-byte v4, p3, v8

    .line 261
    .line 262
    :goto_7
    cmp-long v8, v11, v18

    .line 263
    .line 264
    if-eqz v8, :cond_a

    .line 265
    .line 266
    add-int/lit8 v8, v9, 0x1

    .line 267
    .line 268
    add-int v9, p4, v9

    .line 269
    .line 270
    aput-byte v4, p3, v9

    .line 271
    .line 272
    sub-long v11, v11, v20

    .line 273
    .line 274
    move v9, v8

    .line 275
    goto :goto_7

    .line 276
    :cond_a
    move v8, v9

    .line 277
    const/4 v4, 0x0

    .line 278
    move v9, v5

    .line 279
    goto/16 :goto_b

    .line 280
    .line 281
    :cond_b
    const/4 v3, 0x1

    .line 282
    add-int/lit8 v4, v4, -0x1

    .line 283
    .line 284
    add-int/lit8 v9, v8, 0x1

    .line 285
    .line 286
    add-int v8, p4, v8

    .line 287
    .line 288
    add-int/lit8 v13, v4, 0x1

    .line 289
    .line 290
    add-int v4, p4, v4

    .line 291
    .line 292
    aget-byte v4, p3, v4

    .line 293
    .line 294
    aput-byte v4, p3, v8

    .line 295
    .line 296
    add-int/lit8 v4, v9, 0x1

    .line 297
    .line 298
    add-int v8, p4, v9

    .line 299
    .line 300
    add-int/lit8 v9, v13, 0x1

    .line 301
    .line 302
    add-int v13, p4, v13

    .line 303
    .line 304
    aget-byte v13, p3, v13

    .line 305
    .line 306
    aput-byte v13, p3, v8

    .line 307
    .line 308
    add-int/lit8 v8, v4, 0x1

    .line 309
    .line 310
    add-int v4, p4, v4

    .line 311
    .line 312
    add-int/lit8 v13, v9, 0x1

    .line 313
    .line 314
    add-int v9, p4, v9

    .line 315
    .line 316
    aget-byte v9, p3, v9

    .line 317
    .line 318
    aput-byte v9, p3, v4

    .line 319
    .line 320
    :goto_8
    cmp-long v4, v11, v18

    .line 321
    .line 322
    if-eqz v4, :cond_c

    .line 323
    .line 324
    add-int/lit8 v4, v8, 0x1

    .line 325
    .line 326
    add-int v8, p4, v8

    .line 327
    .line 328
    add-int/lit8 v9, v13, 0x1

    .line 329
    .line 330
    add-int v13, p4, v13

    .line 331
    .line 332
    aget-byte v13, p3, v13

    .line 333
    .line 334
    aput-byte v13, p3, v8

    .line 335
    .line 336
    sub-long v11, v11, v20

    .line 337
    .line 338
    move v8, v4

    .line 339
    move v13, v9

    .line 340
    goto :goto_8

    .line 341
    :cond_c
    move v9, v5

    .line 342
    const/4 v4, 0x0

    .line 343
    goto :goto_b

    .line 344
    :cond_d
    move-wide/from16 v22, v6

    .line 345
    .line 346
    const/4 v3, 0x1

    .line 347
    add-long v6, v22, v20

    .line 348
    .line 349
    int-to-long v4, v8

    .line 350
    add-long/2addr v4, v6

    .line 351
    int-to-long v10, v1

    .line 352
    cmp-long v12, v4, v10

    .line 353
    .line 354
    if-lez v12, :cond_e

    .line 355
    .line 356
    const/4 v4, 0x0

    .line 357
    return v4

    .line 358
    :cond_e
    const/4 v4, 0x0

    .line 359
    int-to-long v10, v9

    .line 360
    add-long/2addr v10, v6

    .line 361
    int-to-long v12, v0

    .line 362
    cmp-long v5, v10, v12

    .line 363
    .line 364
    if-lez v5, :cond_f

    .line 365
    .line 366
    return v4

    .line 367
    :cond_f
    add-int/lit8 v5, v8, 0x1

    .line 368
    .line 369
    add-int v8, p4, v8

    .line 370
    .line 371
    add-int/lit8 v10, v9, 0x1

    .line 372
    .line 373
    add-int v9, p1, v9

    .line 374
    .line 375
    aget-byte v9, p0, v9

    .line 376
    .line 377
    aput-byte v9, p3, v8

    .line 378
    .line 379
    sub-long v6, v6, v20

    .line 380
    .line 381
    :goto_9
    cmp-long v8, v6, v18

    .line 382
    .line 383
    if-eqz v8, :cond_10

    .line 384
    .line 385
    add-int/lit8 v8, v5, 0x1

    .line 386
    .line 387
    add-int v5, p4, v5

    .line 388
    .line 389
    add-int/lit8 v9, v10, 0x1

    .line 390
    .line 391
    add-int v10, p1, v10

    .line 392
    .line 393
    aget-byte v10, p0, v10

    .line 394
    .line 395
    aput-byte v10, p3, v5

    .line 396
    .line 397
    sub-long v6, v6, v20

    .line 398
    .line 399
    move v5, v8

    .line 400
    move v10, v9

    .line 401
    goto :goto_9

    .line 402
    :cond_10
    if-ge v10, v0, :cond_11

    .line 403
    .line 404
    const/4 v8, 0x1

    .line 405
    goto :goto_a

    .line 406
    :cond_11
    const/4 v8, 0x0

    .line 407
    :goto_a
    if-eqz v8, :cond_12

    .line 408
    .line 409
    add-int/lit8 v6, v10, 0x1

    .line 410
    .line 411
    add-int v7, p1, v10

    .line 412
    .line 413
    aget-byte v7, p0, v7

    .line 414
    .line 415
    const/16 v9, 0xff

    .line 416
    .line 417
    and-int/2addr v7, v9

    .line 418
    int-to-long v9, v7

    .line 419
    move/from16 v27, v8

    .line 420
    .line 421
    move v8, v5

    .line 422
    move-wide/from16 v28, v9

    .line 423
    .line 424
    move v9, v6

    .line 425
    move/from16 v10, v27

    .line 426
    .line 427
    move-wide/from16 v6, v28

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_12
    move v9, v10

    .line 431
    move v10, v8

    .line 432
    move v8, v5

    .line 433
    :goto_b
    if-nez v10, :cond_13

    .line 434
    .line 435
    return v8

    .line 436
    :cond_13
    const/4 v3, 0x5

    .line 437
    const/4 v4, 0x1

    .line 438
    const/4 v5, 0x0

    .line 439
    goto/16 :goto_1
.end method

.method private static hashFunction([BI)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    shr-int/lit8 p1, v0, 0x3

    .line 12
    .line 13
    xor-int/2addr p0, p1

    .line 14
    xor-int/2addr p0, v0

    .line 15
    and-int/lit16 p0, p0, 0x1fff

    .line 16
    .line 17
    return p0
.end method

.method private static readU16([BI)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    aget-byte p0, p0, p1

    .line 7
    .line 8
    and-int/lit16 p0, p0, 0xff

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    aget-byte v0, p0, v0

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    aget-byte p0, p0, p1

    .line 18
    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    or-int/2addr p0, v0

    .line 22
    return p0
.end method
