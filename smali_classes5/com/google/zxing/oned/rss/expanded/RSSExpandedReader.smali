.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final LONGEST_SEQUENCE_SIZE:I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final currentSequence:[I

.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x1

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 11
    .line 12
    const/16 v5, 0x68

    .line 13
    .line 14
    const/16 v6, 0xcc

    .line 15
    .line 16
    const/16 v7, 0x14

    .line 17
    .line 18
    const/16 v8, 0x34

    .line 19
    .line 20
    filled-new-array {v2, v7, v8, v5, v6}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 25
    .line 26
    const/16 v5, 0xb84

    .line 27
    .line 28
    const/16 v6, 0xf94

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/16 v9, 0x15c

    .line 32
    .line 33
    const/16 v10, 0x56c

    .line 34
    .line 35
    filled-new-array {v8, v9, v10, v5, v6}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 40
    .line 41
    const/4 v5, 0x6

    .line 42
    new-array v6, v5, [[I

    .line 43
    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    filled-new-array {v4, v9, v2, v4}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aput-object v10, v6, v8

    .line 51
    .line 52
    filled-new-array {v3, v5, v2, v4}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    aput-object v10, v6, v4

    .line 57
    .line 58
    filled-new-array {v3, v2, v5, v4}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const/4 v11, 0x2

    .line 63
    aput-object v10, v6, v11

    .line 64
    .line 65
    filled-new-array {v3, v11, v9, v4}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    aput-object v10, v6, v3

    .line 70
    .line 71
    filled-new-array {v11, v5, v1, v4}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    aput-object v10, v6, v2

    .line 76
    .line 77
    const/16 v10, 0x9

    .line 78
    .line 79
    filled-new-array {v11, v11, v10, v4}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    aput-object v12, v6, v1

    .line 84
    .line 85
    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 86
    .line 87
    const/16 v6, 0x17

    .line 88
    .line 89
    new-array v6, v6, [[I

    .line 90
    .line 91
    new-array v12, v9, [I

    .line 92
    .line 93
    fill-array-data v12, :array_0

    .line 94
    .line 95
    .line 96
    aput-object v12, v6, v8

    .line 97
    .line 98
    new-array v12, v9, [I

    .line 99
    .line 100
    fill-array-data v12, :array_1

    .line 101
    .line 102
    .line 103
    aput-object v12, v6, v4

    .line 104
    .line 105
    new-array v12, v9, [I

    .line 106
    .line 107
    fill-array-data v12, :array_2

    .line 108
    .line 109
    .line 110
    aput-object v12, v6, v11

    .line 111
    .line 112
    new-array v12, v9, [I

    .line 113
    .line 114
    fill-array-data v12, :array_3

    .line 115
    .line 116
    .line 117
    aput-object v12, v6, v3

    .line 118
    .line 119
    new-array v12, v9, [I

    .line 120
    .line 121
    fill-array-data v12, :array_4

    .line 122
    .line 123
    .line 124
    aput-object v12, v6, v2

    .line 125
    .line 126
    new-array v12, v9, [I

    .line 127
    .line 128
    fill-array-data v12, :array_5

    .line 129
    .line 130
    .line 131
    aput-object v12, v6, v1

    .line 132
    .line 133
    new-array v12, v9, [I

    .line 134
    .line 135
    fill-array-data v12, :array_6

    .line 136
    .line 137
    .line 138
    aput-object v12, v6, v5

    .line 139
    .line 140
    new-array v12, v9, [I

    .line 141
    .line 142
    fill-array-data v12, :array_7

    .line 143
    .line 144
    .line 145
    aput-object v12, v6, v0

    .line 146
    .line 147
    new-array v12, v9, [I

    .line 148
    .line 149
    fill-array-data v12, :array_8

    .line 150
    .line 151
    .line 152
    aput-object v12, v6, v9

    .line 153
    .line 154
    new-array v12, v9, [I

    .line 155
    .line 156
    fill-array-data v12, :array_9

    .line 157
    .line 158
    .line 159
    aput-object v12, v6, v10

    .line 160
    .line 161
    new-array v12, v9, [I

    .line 162
    .line 163
    fill-array-data v12, :array_a

    .line 164
    .line 165
    .line 166
    const/16 v13, 0xa

    .line 167
    .line 168
    aput-object v12, v6, v13

    .line 169
    .line 170
    new-array v12, v9, [I

    .line 171
    .line 172
    fill-array-data v12, :array_b

    .line 173
    .line 174
    .line 175
    const/16 v14, 0xb

    .line 176
    .line 177
    aput-object v12, v6, v14

    .line 178
    .line 179
    new-array v12, v9, [I

    .line 180
    .line 181
    fill-array-data v12, :array_c

    .line 182
    .line 183
    .line 184
    const/16 v15, 0xc

    .line 185
    .line 186
    aput-object v12, v6, v15

    .line 187
    .line 188
    new-array v12, v9, [I

    .line 189
    .line 190
    fill-array-data v12, :array_d

    .line 191
    .line 192
    .line 193
    const/16 v15, 0xd

    .line 194
    .line 195
    aput-object v12, v6, v15

    .line 196
    .line 197
    new-array v12, v9, [I

    .line 198
    .line 199
    fill-array-data v12, :array_e

    .line 200
    .line 201
    .line 202
    const/16 v15, 0xe

    .line 203
    .line 204
    aput-object v12, v6, v15

    .line 205
    .line 206
    new-array v12, v9, [I

    .line 207
    .line 208
    fill-array-data v12, :array_f

    .line 209
    .line 210
    .line 211
    const/16 v15, 0xf

    .line 212
    .line 213
    aput-object v12, v6, v15

    .line 214
    .line 215
    new-array v12, v9, [I

    .line 216
    .line 217
    fill-array-data v12, :array_10

    .line 218
    .line 219
    .line 220
    const/16 v15, 0x10

    .line 221
    .line 222
    aput-object v12, v6, v15

    .line 223
    .line 224
    new-array v12, v9, [I

    .line 225
    .line 226
    fill-array-data v12, :array_11

    .line 227
    .line 228
    .line 229
    const/16 v15, 0x11

    .line 230
    .line 231
    aput-object v12, v6, v15

    .line 232
    .line 233
    new-array v12, v9, [I

    .line 234
    .line 235
    fill-array-data v12, :array_12

    .line 236
    .line 237
    .line 238
    const/16 v15, 0x12

    .line 239
    .line 240
    aput-object v12, v6, v15

    .line 241
    .line 242
    new-array v12, v9, [I

    .line 243
    .line 244
    fill-array-data v12, :array_13

    .line 245
    .line 246
    .line 247
    const/16 v15, 0x13

    .line 248
    .line 249
    aput-object v12, v6, v15

    .line 250
    .line 251
    new-array v12, v9, [I

    .line 252
    .line 253
    fill-array-data v12, :array_14

    .line 254
    .line 255
    .line 256
    aput-object v12, v6, v7

    .line 257
    .line 258
    new-array v7, v9, [I

    .line 259
    .line 260
    fill-array-data v7, :array_15

    .line 261
    .line 262
    .line 263
    const/16 v12, 0x15

    .line 264
    .line 265
    aput-object v7, v6, v12

    .line 266
    .line 267
    new-array v7, v9, [I

    .line 268
    .line 269
    fill-array-data v7, :array_16

    .line 270
    .line 271
    .line 272
    const/16 v12, 0x16

    .line 273
    .line 274
    aput-object v7, v6, v12

    .line 275
    .line 276
    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 277
    .line 278
    new-array v6, v13, [[I

    .line 279
    .line 280
    filled-new-array {v8, v8}, [I

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    aput-object v7, v6, v8

    .line 285
    .line 286
    filled-new-array {v8, v4, v4}, [I

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    aput-object v7, v6, v4

    .line 291
    .line 292
    filled-new-array {v8, v11, v4, v3}, [I

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    aput-object v7, v6, v11

    .line 297
    .line 298
    filled-new-array {v8, v2, v4, v3, v11}, [I

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    aput-object v7, v6, v3

    .line 303
    .line 304
    new-array v3, v5, [I

    .line 305
    .line 306
    fill-array-data v3, :array_17

    .line 307
    .line 308
    .line 309
    aput-object v3, v6, v2

    .line 310
    .line 311
    new-array v2, v0, [I

    .line 312
    .line 313
    fill-array-data v2, :array_18

    .line 314
    .line 315
    .line 316
    aput-object v2, v6, v1

    .line 317
    .line 318
    new-array v1, v9, [I

    .line 319
    .line 320
    fill-array-data v1, :array_19

    .line 321
    .line 322
    .line 323
    aput-object v1, v6, v5

    .line 324
    .line 325
    new-array v1, v10, [I

    .line 326
    .line 327
    fill-array-data v1, :array_1a

    .line 328
    .line 329
    .line 330
    aput-object v1, v6, v0

    .line 331
    .line 332
    new-array v0, v13, [I

    .line 333
    .line 334
    fill-array-data v0, :array_1b

    .line 335
    .line 336
    .line 337
    aput-object v0, v6, v9

    .line 338
    .line 339
    new-array v0, v14, [I

    .line 340
    .line 341
    fill-array-data v0, :array_1c

    .line 342
    .line 343
    .line 344
    aput-object v0, v6, v10

    .line 345
    .line 346
    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 347
    .line 348
    array-length v0, v6

    .line 349
    sub-int/2addr v0, v4

    .line 350
    aget-object v0, v6, v0

    .line 351
    .line 352
    array-length v0, v0

    .line 353
    sput v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    .line 354
    .line 355
    return-void

    .line 356
    nop

    .line 357
    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_1
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_2
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_3
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_4
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_5
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_6
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_7
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_8
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_9
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_a
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_b
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_c
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_d
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_e
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    :array_f
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :array_10
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_11
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_12
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_13
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    :array_14
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_15
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_16
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_17
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_18
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_19
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_1a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :array_1b
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    :array_1c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 17
    .line 18
    sget v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    .line 19
    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    .line 23
    .line 24
    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int v2, v0, v1

    .line 18
    .line 19
    sub-int/2addr v2, p1

    .line 20
    and-int/lit8 p1, v0, 0x1

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne p1, v4, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    and-int/lit8 v5, v1, 0x1

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x0

    .line 36
    :goto_1
    const/4 v6, 0x4

    .line 37
    const/16 v7, 0xd

    .line 38
    .line 39
    if-le v0, v7, :cond_2

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x1

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    if-ge v0, v6, :cond_3

    .line 45
    .line 46
    const/4 v8, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    const/4 v8, 0x0

    .line 49
    :goto_2
    const/4 v9, 0x0

    .line 50
    :goto_3
    if-le v1, v7, :cond_4

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    if-ge v1, v6, :cond_5

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    :cond_5
    const/4 v6, 0x0

    .line 58
    :goto_4
    if-ne v2, v4, :cond_9

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    if-nez v5, :cond_6

    .line 63
    .line 64
    move v4, v8

    .line 65
    :goto_5
    const/4 v9, 0x1

    .line 66
    goto :goto_7

    .line 67
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :cond_7
    if-eqz v5, :cond_8

    .line 73
    .line 74
    move v4, v8

    .line 75
    :goto_6
    const/4 v6, 0x1

    .line 76
    goto :goto_7

    .line 77
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    throw p1

    .line 82
    :cond_9
    const/4 v7, -0x1

    .line 83
    if-ne v2, v7, :cond_d

    .line 84
    .line 85
    if-eqz p1, :cond_b

    .line 86
    .line 87
    if-nez v5, :cond_a

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    throw p1

    .line 95
    :cond_b
    if-eqz v5, :cond_c

    .line 96
    .line 97
    move v4, v8

    .line 98
    const/4 v3, 0x1

    .line 99
    goto :goto_7

    .line 100
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    throw p1

    .line 105
    :cond_d
    if-nez v2, :cond_18

    .line 106
    .line 107
    if-eqz p1, :cond_10

    .line 108
    .line 109
    if-eqz v5, :cond_f

    .line 110
    .line 111
    if-ge v0, v1, :cond_e

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_e
    move v4, v8

    .line 115
    const/4 v3, 0x1

    .line 116
    goto :goto_5

    .line 117
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    throw p1

    .line 122
    :cond_10
    if-nez v5, :cond_17

    .line 123
    .line 124
    move v4, v8

    .line 125
    :goto_7
    if-eqz v4, :cond_12

    .line 126
    .line 127
    if-nez v9, :cond_11

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 138
    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    throw p1

    .line 146
    :cond_12
    :goto_8
    if-eqz v9, :cond_13

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 157
    .line 158
    .line 159
    :cond_13
    if-eqz v3, :cond_15

    .line 160
    .line 161
    if-nez v6, :cond_14

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 172
    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    throw p1

    .line 180
    :cond_15
    :goto_9
    if-eqz v6, :cond_16

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 191
    .line 192
    .line 193
    :cond_16
    return-void

    .line 194
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    throw p1

    .line 199
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    throw p1
.end method

.method private checkChecksum()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x1

    .line 25
    :goto_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-ge v5, v6, :cond_1

    .line 32
    .line 33
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    add-int/2addr v0, v7

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/2addr v0, v6

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    rem-int/lit16 v0, v0, 0xd3

    .line 69
    .line 70
    add-int/lit8 v3, v3, -0x4

    .line 71
    .line 72
    mul-int/lit16 v3, v3, 0xd3

    .line 73
    .line 74
    add-int/2addr v3, v0

    .line 75
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v3, v0, :cond_2

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    :cond_2
    return v1
.end method

.method private checkPairSequence(Ljava/util/List;Lcom/google/zxing/oned/rss/FinderPattern;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Lcom/google/zxing/oned/rss/FinderPattern;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-gt v0, v2, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    .line 21
    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    aput v5, v4, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    .line 42
    .line 43
    add-int/lit8 v3, v0, -0x1

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    aput p2, p1, v3

    .line 50
    .line 51
    sget-object p1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 52
    .line 53
    array-length p2, p1

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_1
    if-ge v3, p2, :cond_5

    .line 56
    .line 57
    aget-object v4, p1, v3

    .line 58
    .line 59
    array-length v5, v4

    .line 60
    if-lt v5, v0, :cond_4

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    :goto_2
    if-ge v5, v0, :cond_2

    .line 64
    .line 65
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    .line 66
    .line 67
    aget v6, v6, v5

    .line 68
    .line 69
    aget v7, v4, v5

    .line 70
    .line 71
    if-eq v6, v7, :cond_1

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v5, 0x1

    .line 79
    :goto_3
    if-eqz v5, :cond_4

    .line 80
    .line 81
    array-length p1, v4

    .line 82
    if-ne v0, p1, :cond_3

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_4
    return v1

    .line 87
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    throw p1

    .line 95
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    throw p1
.end method

.method private static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    sub-int/2addr v3, v4

    .line 34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v3, Lcom/google/zxing/Result;

    .line 49
    .line 50
    const/4 v5, 0x4

    .line 51
    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    .line 52
    .line 53
    aget-object v6, v2, v1

    .line 54
    .line 55
    aput-object v6, v5, v1

    .line 56
    .line 57
    aget-object v2, v2, v4

    .line 58
    .line 59
    aput-object v2, v5, v4

    .line 60
    .line 61
    aget-object v1, p0, v1

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    aput-object v1, v5, v2

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    aget-object p0, p0, v4

    .line 68
    .line 69
    aput-object p0, v5, v1

    .line 70
    .line 71
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v3, v0, v1, v5, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 75
    .line 76
    .line 77
    return-object v3
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aput v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput v1, v0, v2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aput v1, v0, v3

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    aput v1, v0, v4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ltz p3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    sub-int/2addr p3, v2

    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    aget p3, p3, v2

    .line 52
    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    rem-int/2addr p2, v3

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 p2, 0x0

    .line 63
    :goto_1
    const/4 v6, 0x0

    .line 64
    :goto_2
    if-ge p3, v5, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    xor-int/2addr v6, v2

    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_3
    move v7, v6

    .line 78
    const/4 v8, 0x0

    .line 79
    move v6, p3

    .line 80
    :goto_4
    if-ge p3, v5, :cond_a

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    xor-int/2addr v9, v7

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    aget v9, v0, v8

    .line 90
    .line 91
    add-int/2addr v9, v2

    .line 92
    aput v9, v0, v8

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_5
    if-ne v8, v4, :cond_9

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 109
    .line 110
    aput v6, p1, v1

    .line 111
    .line 112
    aput p3, p1, v2

    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    if-eqz p2, :cond_8

    .line 116
    .line 117
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 118
    .line 119
    .line 120
    :cond_8
    aget v9, v0, v1

    .line 121
    .line 122
    aget v10, v0, v2

    .line 123
    .line 124
    add-int/2addr v9, v10

    .line 125
    add-int/2addr v6, v9

    .line 126
    aget v9, v0, v3

    .line 127
    .line 128
    aput v9, v0, v1

    .line 129
    .line 130
    aget v9, v0, v4

    .line 131
    .line 132
    aput v9, v0, v2

    .line 133
    .line 134
    aput v1, v0, v3

    .line 135
    .line 136
    aput v1, v0, v4

    .line 137
    .line 138
    add-int/lit8 v8, v8, -0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 142
    .line 143
    :goto_5
    aput v2, v0, v8

    .line 144
    .line 145
    xor-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    :goto_6
    add-int/lit8 p3, p3, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    throw p1
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_0
    return p0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 6
    .line 7
    aget p3, p3, v0

    .line 8
    .line 9
    sub-int/2addr p3, v1

    .line 10
    :goto_0
    if-ltz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 p3, p3, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/2addr p3, v1

    .line 22
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 23
    .line 24
    aget v2, p1, v0

    .line 25
    .line 26
    sub-int/2addr v2, p3

    .line 27
    aget p1, p1, v1

    .line 28
    .line 29
    move v7, p1

    .line 30
    move v6, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 33
    .line 34
    aget v2, p3, v0

    .line 35
    .line 36
    aget p3, p3, v1

    .line 37
    .line 38
    add-int/2addr p3, v1

    .line 39
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 44
    .line 45
    aget p3, p3, v1

    .line 46
    .line 47
    sub-int p3, p1, p3

    .line 48
    .line 49
    move v7, p1

    .line 50
    move v6, v2

    .line 51
    move v2, p3

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    array-length p3, p1

    .line 57
    sub-int/2addr p3, v1

    .line 58
    invoke-static {p1, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    aput v2, p1, v0

    .line 62
    .line 63
    :try_start_0
    sget-object p3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 64
    .line 65
    invoke-static {p1, p3}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    .line 66
    .line 67
    .line 68
    move-result v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    .line 70
    .line 71
    filled-new-array {v6, v7}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    move-object v3, p1

    .line 76
    move v8, p2

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :catch_0
    const/4 p1, 0x0

    .line 82
    return-object p1
.end method

.method private static reverseCounters([I)V
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    div-int/lit8 v2, v0, 0x2

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    aget v2, p0, v1

    .line 8
    .line 9
    sub-int v3, v0, v1

    .line 10
    .line 11
    add-int/lit8 v3, v3, -0x1

    .line 12
    .line 13
    aget v4, p0, v3

    .line 14
    .line 15
    aput v4, p0, v1

    .line 16
    .line 17
    aput v2, p0, v3

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v2, v1, v2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aput v2, v1, v3

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    aput v2, v1, v4

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    aput v2, v1, v5

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    aput v2, v1, v5

    .line 21
    .line 22
    const/4 v6, 0x5

    .line 23
    aput v2, v1, v6

    .line 24
    .line 25
    const/4 v6, 0x6

    .line 26
    aput v2, v1, v6

    .line 27
    .line 28
    const/4 v6, 0x7

    .line 29
    aput v2, v1, v6

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    aget v6, v6, v2

    .line 38
    .line 39
    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    aget v6, v6, v3

    .line 48
    .line 49
    add-int/2addr v6, v3

    .line 50
    invoke-static {v0, v6, v1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 51
    .line 52
    .line 53
    array-length v0, v1

    .line 54
    sub-int/2addr v0, v3

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_0
    if-ge v6, v0, :cond_1

    .line 57
    .line 58
    aget v7, v1, v6

    .line 59
    .line 60
    aget v8, v1, v0

    .line 61
    .line 62
    aput v8, v1, v6

    .line 63
    .line 64
    aput v7, v1, v0

    .line 65
    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->count([I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-float v0, v0

    .line 76
    const/16 v6, 0x11

    .line 77
    .line 78
    int-to-float v7, v6

    .line 79
    div-float/2addr v0, v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    const/4 v11, 0x0

    .line 97
    :goto_2
    array-length v12, v1

    .line 98
    if-ge v11, v12, :cond_5

    .line 99
    .line 100
    aget v12, v1, v11

    .line 101
    .line 102
    int-to-float v12, v12

    .line 103
    const/high16 v13, 0x3f800000    # 1.0f

    .line 104
    .line 105
    mul-float v12, v12, v13

    .line 106
    .line 107
    div-float/2addr v12, v0

    .line 108
    const/high16 v13, 0x3f000000    # 0.5f

    .line 109
    .line 110
    add-float/2addr v13, v12

    .line 111
    float-to-int v13, v13

    .line 112
    if-ge v13, v3, :cond_2

    .line 113
    .line 114
    const/4 v13, 0x1

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    const/16 v14, 0x8

    .line 117
    .line 118
    if-le v13, v14, :cond_3

    .line 119
    .line 120
    const/16 v13, 0x8

    .line 121
    .line 122
    :cond_3
    :goto_3
    shr-int/lit8 v14, v11, 0x1

    .line 123
    .line 124
    and-int/lit8 v15, v11, 0x1

    .line 125
    .line 126
    if-nez v15, :cond_4

    .line 127
    .line 128
    aput v13, v7, v14

    .line 129
    .line 130
    int-to-float v13, v13

    .line 131
    sub-float/2addr v12, v13

    .line 132
    aput v12, v9, v14

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_4
    aput v13, v8, v14

    .line 136
    .line 137
    int-to-float v13, v13

    .line 138
    sub-float/2addr v12, v13

    .line 139
    aput v12, v10, v14

    .line 140
    .line 141
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    move-object/from16 v11, p0

    .line 145
    .line 146
    invoke-direct {v11, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    mul-int/lit8 v0, v0, 0x4

    .line 154
    .line 155
    if-eqz p3, :cond_6

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    goto :goto_5

    .line 159
    :cond_6
    const/4 v1, 0x2

    .line 160
    :goto_5
    add-int/2addr v0, v1

    .line 161
    xor-int/lit8 v1, p4, 0x1

    .line 162
    .line 163
    add-int/2addr v0, v1

    .line 164
    sub-int/2addr v0, v3

    .line 165
    array-length v1, v7

    .line 166
    sub-int/2addr v1, v3

    .line 167
    const/4 v6, 0x0

    .line 168
    const/4 v9, 0x0

    .line 169
    :goto_6
    if-ltz v1, :cond_8

    .line 170
    .line 171
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_7

    .line 176
    .line 177
    sget-object v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 178
    .line 179
    aget-object v10, v10, v0

    .line 180
    .line 181
    mul-int/lit8 v12, v1, 0x2

    .line 182
    .line 183
    aget v10, v10, v12

    .line 184
    .line 185
    aget v12, v7, v1

    .line 186
    .line 187
    mul-int v12, v12, v10

    .line 188
    .line 189
    add-int/2addr v6, v12

    .line 190
    :cond_7
    aget v10, v7, v1

    .line 191
    .line 192
    add-int/2addr v9, v10

    .line 193
    add-int/lit8 v1, v1, -0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_8
    array-length v1, v8

    .line 197
    sub-int/2addr v1, v3

    .line 198
    const/4 v10, 0x0

    .line 199
    :goto_7
    if-ltz v1, :cond_a

    .line 200
    .line 201
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-eqz v12, :cond_9

    .line 206
    .line 207
    sget-object v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 208
    .line 209
    aget-object v12, v12, v0

    .line 210
    .line 211
    mul-int/lit8 v13, v1, 0x2

    .line 212
    .line 213
    add-int/2addr v13, v3

    .line 214
    aget v12, v12, v13

    .line 215
    .line 216
    aget v13, v8, v1

    .line 217
    .line 218
    mul-int v13, v13, v12

    .line 219
    .line 220
    add-int/2addr v10, v13

    .line 221
    :cond_9
    aget v12, v8, v1

    .line 222
    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_a
    add-int/2addr v6, v10

    .line 227
    and-int/lit8 v0, v9, 0x1

    .line 228
    .line 229
    if-nez v0, :cond_b

    .line 230
    .line 231
    const/16 v0, 0xd

    .line 232
    .line 233
    if-gt v9, v0, :cond_b

    .line 234
    .line 235
    if-lt v9, v5, :cond_b

    .line 236
    .line 237
    sub-int/2addr v0, v9

    .line 238
    div-int/2addr v0, v4

    .line 239
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 240
    .line 241
    aget v1, v1, v0

    .line 242
    .line 243
    rsub-int/lit8 v4, v1, 0x9

    .line 244
    .line 245
    invoke-static {v7, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-static {v8, v4, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 254
    .line 255
    aget v3, v3, v0

    .line 256
    .line 257
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 258
    .line 259
    aget v0, v4, v0

    .line 260
    .line 261
    mul-int v1, v1, v3

    .line 262
    .line 263
    add-int/2addr v1, v2

    .line 264
    add-int/2addr v1, v0

    .line 265
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 266
    .line 267
    invoke-direct {v0, v1, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 268
    .line 269
    .line 270
    return-object v0

    .line 271
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x1

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 26
    .line 27
    aget v3, v3, v2

    .line 28
    .line 29
    invoke-static {p1, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v4, 0x0

    .line 35
    :goto_1
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, p2, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkPairSequence(Ljava/util/List;Lcom/google/zxing/oned/rss/FinderPattern;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    :try_start_0
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 55
    .line 56
    invoke-direct {v0, p3, p1, v5, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    throw p1
.end method
