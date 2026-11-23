.class public Lcom/kwad/sdk/core/imageloader/utils/BlurUtils;
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

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 36
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xb4L
        .end annotation
    .end param

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :cond_1
    move-object/from16 v3, p0

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    if-gtz v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    mul-int v13, v11, v12

    .line 36
    .line 37
    new-array v14, v13, [I

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v3, v2

    .line 43
    move-object v4, v14

    .line 44
    move v6, v11

    .line 45
    move v9, v11

    .line 46
    move v10, v12

    .line 47
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v11, -0x1

    .line 51
    .line 52
    add-int/lit8 v4, v12, -0x1

    .line 53
    .line 54
    add-int v5, v0, v0

    .line 55
    .line 56
    add-int/2addr v5, v1

    .line 57
    new-array v6, v13, [I

    .line 58
    .line 59
    new-array v7, v13, [I

    .line 60
    .line 61
    new-array v8, v13, [I

    .line 62
    .line 63
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    new-array v9, v9, [I

    .line 68
    .line 69
    add-int/lit8 v10, v5, 0x1

    .line 70
    .line 71
    shr-int/2addr v10, v1

    .line 72
    mul-int v10, v10, v10

    .line 73
    .line 74
    mul-int/lit16 v13, v10, 0x100

    .line 75
    .line 76
    new-array v15, v13, [I

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    :goto_1
    if-ge v1, v13, :cond_3

    .line 80
    .line 81
    div-int v17, v1, v10

    .line 82
    .line 83
    aput v17, v15, v1

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v1, 0x3

    .line 89
    filled-new-array {v5, v1}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, [[I

    .line 100
    .line 101
    add-int/lit8 v10, v0, 0x1

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    :goto_2
    const/16 v19, 0x2

    .line 109
    .line 110
    if-ge v13, v12, :cond_8

    .line 111
    .line 112
    move-object/from16 p2, v2

    .line 113
    .line 114
    neg-int v2, v0

    .line 115
    move/from16 v28, v12

    .line 116
    .line 117
    const/16 v20, 0x0

    .line 118
    .line 119
    const/16 v21, 0x0

    .line 120
    .line 121
    const/16 v22, 0x0

    .line 122
    .line 123
    const/16 v23, 0x0

    .line 124
    .line 125
    const/16 v24, 0x0

    .line 126
    .line 127
    const/16 v25, 0x0

    .line 128
    .line 129
    const/16 v26, 0x0

    .line 130
    .line 131
    const/16 v27, 0x0

    .line 132
    .line 133
    move v12, v2

    .line 134
    const/4 v2, 0x0

    .line 135
    :goto_3
    const v29, 0xff00

    .line 136
    .line 137
    .line 138
    const/high16 v30, 0xff0000

    .line 139
    .line 140
    if-gt v12, v0, :cond_5

    .line 141
    .line 142
    move/from16 v31, v4

    .line 143
    .line 144
    move-object/from16 v32, v9

    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    add-int v9, v17, v9

    .line 156
    .line 157
    aget v9, v14, v9

    .line 158
    .line 159
    add-int v33, v12, v0

    .line 160
    .line 161
    aget-object v33, v1, v33

    .line 162
    .line 163
    and-int v30, v9, v30

    .line 164
    .line 165
    shr-int/lit8 v30, v30, 0x10

    .line 166
    .line 167
    aput v30, v33, v4

    .line 168
    .line 169
    and-int v29, v9, v29

    .line 170
    .line 171
    shr-int/lit8 v29, v29, 0x8

    .line 172
    .line 173
    const/16 v16, 0x1

    .line 174
    .line 175
    aput v29, v33, v16

    .line 176
    .line 177
    and-int/lit16 v9, v9, 0xff

    .line 178
    .line 179
    aput v9, v33, v19

    .line 180
    .line 181
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    sub-int v9, v10, v9

    .line 186
    .line 187
    aget v29, v33, v4

    .line 188
    .line 189
    mul-int v4, v29, v9

    .line 190
    .line 191
    add-int/2addr v2, v4

    .line 192
    aget v4, v33, v16

    .line 193
    .line 194
    mul-int v30, v4, v9

    .line 195
    .line 196
    add-int v20, v20, v30

    .line 197
    .line 198
    aget v30, v33, v19

    .line 199
    .line 200
    mul-int v9, v9, v30

    .line 201
    .line 202
    add-int v21, v21, v9

    .line 203
    .line 204
    if-lez v12, :cond_4

    .line 205
    .line 206
    add-int v25, v25, v29

    .line 207
    .line 208
    add-int v26, v26, v4

    .line 209
    .line 210
    add-int v27, v27, v30

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_4
    add-int v22, v22, v29

    .line 214
    .line 215
    add-int v23, v23, v4

    .line 216
    .line 217
    add-int v24, v24, v30

    .line 218
    .line 219
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 220
    .line 221
    move/from16 v4, v31

    .line 222
    .line 223
    move-object/from16 v9, v32

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_5
    move/from16 v31, v4

    .line 227
    .line 228
    move-object/from16 v32, v9

    .line 229
    .line 230
    move v9, v0

    .line 231
    move v4, v2

    .line 232
    const/4 v2, 0x0

    .line 233
    :goto_5
    if-ge v2, v11, :cond_7

    .line 234
    .line 235
    aget v12, v15, v4

    .line 236
    .line 237
    aput v12, v6, v17

    .line 238
    .line 239
    aget v12, v15, v20

    .line 240
    .line 241
    aput v12, v7, v17

    .line 242
    .line 243
    aget v12, v15, v21

    .line 244
    .line 245
    aput v12, v8, v17

    .line 246
    .line 247
    sub-int v4, v4, v22

    .line 248
    .line 249
    sub-int v20, v20, v23

    .line 250
    .line 251
    sub-int v21, v21, v24

    .line 252
    .line 253
    sub-int v12, v9, v0

    .line 254
    .line 255
    add-int/2addr v12, v5

    .line 256
    rem-int/2addr v12, v5

    .line 257
    aget-object v12, v1, v12

    .line 258
    .line 259
    const/16 v33, 0x0

    .line 260
    .line 261
    aget v34, v12, v33

    .line 262
    .line 263
    sub-int v22, v22, v34

    .line 264
    .line 265
    const/16 v16, 0x1

    .line 266
    .line 267
    aget v33, v12, v16

    .line 268
    .line 269
    sub-int v23, v23, v33

    .line 270
    .line 271
    aget v33, v12, v19

    .line 272
    .line 273
    sub-int v24, v24, v33

    .line 274
    .line 275
    if-nez v13, :cond_6

    .line 276
    .line 277
    add-int v33, v2, v0

    .line 278
    .line 279
    move-object/from16 v34, v15

    .line 280
    .line 281
    add-int/lit8 v15, v33, 0x1

    .line 282
    .line 283
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    aput v15, v32, v2

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_6
    move-object/from16 v34, v15

    .line 291
    .line 292
    :goto_6
    aget v15, v32, v2

    .line 293
    .line 294
    add-int v15, v18, v15

    .line 295
    .line 296
    aget v15, v14, v15

    .line 297
    .line 298
    and-int v33, v15, v30

    .line 299
    .line 300
    shr-int/lit8 v33, v33, 0x10

    .line 301
    .line 302
    const/16 v35, 0x0

    .line 303
    .line 304
    aput v33, v12, v35

    .line 305
    .line 306
    and-int v35, v15, v29

    .line 307
    .line 308
    shr-int/lit8 v35, v35, 0x8

    .line 309
    .line 310
    const/16 v16, 0x1

    .line 311
    .line 312
    aput v35, v12, v16

    .line 313
    .line 314
    and-int/lit16 v15, v15, 0xff

    .line 315
    .line 316
    aput v15, v12, v19

    .line 317
    .line 318
    add-int v25, v25, v33

    .line 319
    .line 320
    add-int v26, v26, v35

    .line 321
    .line 322
    add-int v27, v27, v15

    .line 323
    .line 324
    add-int v4, v4, v25

    .line 325
    .line 326
    add-int v20, v20, v26

    .line 327
    .line 328
    add-int v21, v21, v27

    .line 329
    .line 330
    add-int/lit8 v9, v9, 0x1

    .line 331
    .line 332
    rem-int/2addr v9, v5

    .line 333
    rem-int v12, v9, v5

    .line 334
    .line 335
    aget-object v12, v1, v12

    .line 336
    .line 337
    const/4 v15, 0x0

    .line 338
    aget v33, v12, v15

    .line 339
    .line 340
    add-int v22, v22, v33

    .line 341
    .line 342
    const/4 v15, 0x1

    .line 343
    aget v35, v12, v15

    .line 344
    .line 345
    add-int v23, v23, v35

    .line 346
    .line 347
    aget v12, v12, v19

    .line 348
    .line 349
    add-int v24, v24, v12

    .line 350
    .line 351
    sub-int v25, v25, v33

    .line 352
    .line 353
    sub-int v26, v26, v35

    .line 354
    .line 355
    sub-int v27, v27, v12

    .line 356
    .line 357
    add-int/lit8 v17, v17, 0x1

    .line 358
    .line 359
    add-int/lit8 v2, v2, 0x1

    .line 360
    .line 361
    move-object/from16 v15, v34

    .line 362
    .line 363
    goto/16 :goto_5

    .line 364
    .line 365
    :cond_7
    move-object/from16 v34, v15

    .line 366
    .line 367
    add-int v18, v18, v11

    .line 368
    .line 369
    add-int/lit8 v13, v13, 0x1

    .line 370
    .line 371
    move-object/from16 v2, p2

    .line 372
    .line 373
    move/from16 v12, v28

    .line 374
    .line 375
    move/from16 v4, v31

    .line 376
    .line 377
    move-object/from16 v9, v32

    .line 378
    .line 379
    goto/16 :goto_2

    .line 380
    .line 381
    :cond_8
    move-object/from16 p2, v2

    .line 382
    .line 383
    move/from16 v31, v4

    .line 384
    .line 385
    move-object/from16 v32, v9

    .line 386
    .line 387
    move/from16 v28, v12

    .line 388
    .line 389
    move-object/from16 v34, v15

    .line 390
    .line 391
    const/4 v4, 0x0

    .line 392
    :goto_7
    if-ge v4, v11, :cond_e

    .line 393
    .line 394
    neg-int v2, v0

    .line 395
    mul-int v3, v2, v11

    .line 396
    .line 397
    move/from16 v21, v5

    .line 398
    .line 399
    move-object/from16 v22, v14

    .line 400
    .line 401
    const/4 v9, 0x0

    .line 402
    const/4 v12, 0x0

    .line 403
    const/4 v13, 0x0

    .line 404
    const/4 v15, 0x0

    .line 405
    const/16 v17, 0x0

    .line 406
    .line 407
    const/16 v18, 0x0

    .line 408
    .line 409
    const/16 v20, 0x0

    .line 410
    .line 411
    move v5, v2

    .line 412
    move v14, v3

    .line 413
    const/4 v2, 0x0

    .line 414
    const/4 v3, 0x0

    .line 415
    :goto_8
    if-gt v5, v0, :cond_b

    .line 416
    .line 417
    move/from16 v23, v11

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    .line 421
    .line 422
    .line 423
    move-result v24

    .line 424
    add-int v24, v24, v4

    .line 425
    .line 426
    add-int v25, v5, v0

    .line 427
    .line 428
    aget-object v25, v1, v25

    .line 429
    .line 430
    aget v26, v6, v24

    .line 431
    .line 432
    aput v26, v25, v11

    .line 433
    .line 434
    aget v11, v7, v24

    .line 435
    .line 436
    const/16 v16, 0x1

    .line 437
    .line 438
    aput v11, v25, v16

    .line 439
    .line 440
    aget v11, v8, v24

    .line 441
    .line 442
    aput v11, v25, v19

    .line 443
    .line 444
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    sub-int v11, v10, v11

    .line 449
    .line 450
    aget v26, v6, v24

    .line 451
    .line 452
    mul-int v26, v26, v11

    .line 453
    .line 454
    add-int v2, v2, v26

    .line 455
    .line 456
    aget v26, v7, v24

    .line 457
    .line 458
    mul-int v26, v26, v11

    .line 459
    .line 460
    add-int v3, v3, v26

    .line 461
    .line 462
    aget v24, v8, v24

    .line 463
    .line 464
    mul-int v24, v24, v11

    .line 465
    .line 466
    add-int v9, v9, v24

    .line 467
    .line 468
    if-lez v5, :cond_9

    .line 469
    .line 470
    const/4 v11, 0x0

    .line 471
    aget v24, v25, v11

    .line 472
    .line 473
    add-int v17, v17, v24

    .line 474
    .line 475
    const/16 v16, 0x1

    .line 476
    .line 477
    aget v24, v25, v16

    .line 478
    .line 479
    add-int v18, v18, v24

    .line 480
    .line 481
    aget v24, v25, v19

    .line 482
    .line 483
    add-int v20, v20, v24

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_9
    const/4 v11, 0x0

    .line 487
    const/16 v16, 0x1

    .line 488
    .line 489
    aget v24, v25, v11

    .line 490
    .line 491
    add-int v12, v12, v24

    .line 492
    .line 493
    aget v11, v25, v16

    .line 494
    .line 495
    add-int/2addr v13, v11

    .line 496
    aget v11, v25, v19

    .line 497
    .line 498
    add-int/2addr v15, v11

    .line 499
    :goto_9
    move/from16 v11, v31

    .line 500
    .line 501
    if-ge v5, v11, :cond_a

    .line 502
    .line 503
    add-int v14, v14, v23

    .line 504
    .line 505
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 506
    .line 507
    move/from16 v31, v11

    .line 508
    .line 509
    move/from16 v11, v23

    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_b
    move/from16 v23, v11

    .line 513
    .line 514
    move/from16 v11, v31

    .line 515
    .line 516
    move/from16 v25, v0

    .line 517
    .line 518
    move/from16 v24, v4

    .line 519
    .line 520
    move/from16 v14, v28

    .line 521
    .line 522
    const/4 v5, 0x0

    .line 523
    :goto_a
    if-ge v5, v14, :cond_d

    .line 524
    .line 525
    const/high16 v26, -0x1000000

    .line 526
    .line 527
    aget v27, v22, v24

    .line 528
    .line 529
    and-int v26, v27, v26

    .line 530
    .line 531
    aget v27, v34, v2

    .line 532
    .line 533
    shl-int/lit8 v27, v27, 0x10

    .line 534
    .line 535
    or-int v26, v26, v27

    .line 536
    .line 537
    aget v27, v34, v3

    .line 538
    .line 539
    shl-int/lit8 v27, v27, 0x8

    .line 540
    .line 541
    or-int v26, v26, v27

    .line 542
    .line 543
    aget v27, v34, v9

    .line 544
    .line 545
    or-int v26, v26, v27

    .line 546
    .line 547
    aput v26, v22, v24

    .line 548
    .line 549
    sub-int/2addr v2, v12

    .line 550
    sub-int/2addr v3, v13

    .line 551
    sub-int/2addr v9, v15

    .line 552
    sub-int v26, v25, v0

    .line 553
    .line 554
    add-int v26, v26, v21

    .line 555
    .line 556
    rem-int v26, v26, v21

    .line 557
    .line 558
    aget-object v26, v1, v26

    .line 559
    .line 560
    const/16 v27, 0x0

    .line 561
    .line 562
    aget v28, v26, v27

    .line 563
    .line 564
    sub-int v12, v12, v28

    .line 565
    .line 566
    const/16 v16, 0x1

    .line 567
    .line 568
    aget v27, v26, v16

    .line 569
    .line 570
    sub-int v13, v13, v27

    .line 571
    .line 572
    aget v27, v26, v19

    .line 573
    .line 574
    sub-int v15, v15, v27

    .line 575
    .line 576
    if-nez v4, :cond_c

    .line 577
    .line 578
    add-int v0, v5, v10

    .line 579
    .line 580
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    mul-int v0, v0, v23

    .line 585
    .line 586
    aput v0, v32, v5

    .line 587
    .line 588
    :cond_c
    aget v0, v32, v5

    .line 589
    .line 590
    add-int/2addr v0, v4

    .line 591
    aget v27, v6, v0

    .line 592
    .line 593
    const/16 v28, 0x0

    .line 594
    .line 595
    aput v27, v26, v28

    .line 596
    .line 597
    aget v28, v7, v0

    .line 598
    .line 599
    const/16 v16, 0x1

    .line 600
    .line 601
    aput v28, v26, v16

    .line 602
    .line 603
    aget v0, v8, v0

    .line 604
    .line 605
    aput v0, v26, v19

    .line 606
    .line 607
    add-int v17, v17, v27

    .line 608
    .line 609
    add-int v18, v18, v28

    .line 610
    .line 611
    add-int v20, v20, v0

    .line 612
    .line 613
    add-int v2, v2, v17

    .line 614
    .line 615
    add-int v3, v3, v18

    .line 616
    .line 617
    add-int v9, v9, v20

    .line 618
    .line 619
    add-int/lit8 v25, v25, 0x1

    .line 620
    .line 621
    rem-int v25, v25, v21

    .line 622
    .line 623
    aget-object v0, v1, v25

    .line 624
    .line 625
    const/16 v26, 0x0

    .line 626
    .line 627
    aget v27, v0, v26

    .line 628
    .line 629
    add-int v12, v12, v27

    .line 630
    .line 631
    const/16 v16, 0x1

    .line 632
    .line 633
    aget v28, v0, v16

    .line 634
    .line 635
    add-int v13, v13, v28

    .line 636
    .line 637
    aget v0, v0, v19

    .line 638
    .line 639
    add-int/2addr v15, v0

    .line 640
    sub-int v17, v17, v27

    .line 641
    .line 642
    sub-int v18, v18, v28

    .line 643
    .line 644
    sub-int v20, v20, v0

    .line 645
    .line 646
    add-int v24, v24, v23

    .line 647
    .line 648
    add-int/lit8 v5, v5, 0x1

    .line 649
    .line 650
    move/from16 v0, p1

    .line 651
    .line 652
    goto/16 :goto_a

    .line 653
    .line 654
    :cond_d
    const/16 v16, 0x1

    .line 655
    .line 656
    const/16 v26, 0x0

    .line 657
    .line 658
    add-int/lit8 v4, v4, 0x1

    .line 659
    .line 660
    move/from16 v0, p1

    .line 661
    .line 662
    move/from16 v31, v11

    .line 663
    .line 664
    move/from16 v28, v14

    .line 665
    .line 666
    move/from16 v5, v21

    .line 667
    .line 668
    move-object/from16 v14, v22

    .line 669
    .line 670
    move/from16 v11, v23

    .line 671
    .line 672
    goto/16 :goto_7

    .line 673
    .line 674
    :cond_e
    move/from16 v23, v11

    .line 675
    .line 676
    move-object/from16 v22, v14

    .line 677
    .line 678
    move/from16 v14, v28

    .line 679
    .line 680
    const/4 v5, 0x0

    .line 681
    const/4 v7, 0x0

    .line 682
    const/4 v8, 0x0

    .line 683
    move-object/from16 v3, p2

    .line 684
    .line 685
    move-object/from16 v4, v22

    .line 686
    .line 687
    move/from16 v6, v23

    .line 688
    .line 689
    move/from16 v9, v23

    .line 690
    .line 691
    move v10, v14

    .line 692
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 693
    .line 694
    .line 695
    return-object p2
.end method
