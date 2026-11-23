.class public Lcom/googlecode/mp4parser/authoring/tracks/b;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# static fields
.field static j:[[[[I


# instance fields
.field private final e:Lcom/googlecode/mp4parser/e;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:[J

.field private h:Lcom/googlecode/mp4parser/authoring/i;

.field private i:Lcom/coremedia/iso/boxes/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0x13

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    filled-new-array {v1, v2, v0, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [[[[I

    .line 16
    .line 17
    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/b;->j:[[[[I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget-object v3, v0, v1

    .line 21
    .line 22
    aget-object v4, v3, v1

    .line 23
    .line 24
    aget-object v5, v4, v1

    .line 25
    .line 26
    const/16 v6, 0x20

    .line 27
    .line 28
    aput v6, v5, v1

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    aget-object v3, v3, v7

    .line 32
    .line 33
    aget-object v8, v3, v1

    .line 34
    .line 35
    aput v6, v8, v1

    .line 36
    .line 37
    const/16 v9, 0x40

    .line 38
    .line 39
    aput v9, v5, v7

    .line 40
    .line 41
    aput v9, v8, v7

    .line 42
    .line 43
    aget-object v5, v0, v7

    .line 44
    .line 45
    aget-object v8, v5, v1

    .line 46
    .line 47
    aget-object v10, v8, v1

    .line 48
    .line 49
    const/16 v11, 0x28

    .line 50
    .line 51
    aput v11, v10, v1

    .line 52
    .line 53
    aget-object v5, v5, v7

    .line 54
    .line 55
    aget-object v12, v5, v1

    .line 56
    .line 57
    aput v11, v12, v1

    .line 58
    .line 59
    const/16 v13, 0x50

    .line 60
    .line 61
    aput v13, v10, v7

    .line 62
    .line 63
    aput v13, v12, v7

    .line 64
    .line 65
    aget-object v10, v0, v2

    .line 66
    .line 67
    aget-object v12, v10, v1

    .line 68
    .line 69
    aget-object v14, v12, v1

    .line 70
    .line 71
    const/16 v15, 0x30

    .line 72
    .line 73
    aput v15, v14, v1

    .line 74
    .line 75
    aget-object v10, v10, v7

    .line 76
    .line 77
    aget-object v16, v10, v1

    .line 78
    .line 79
    aput v15, v16, v1

    .line 80
    .line 81
    const/16 v17, 0x60

    .line 82
    .line 83
    aput v17, v14, v7

    .line 84
    .line 85
    aput v17, v16, v7

    .line 86
    .line 87
    const/4 v14, 0x3

    .line 88
    aget-object v14, v0, v14

    .line 89
    .line 90
    aget-object v16, v14, v1

    .line 91
    .line 92
    aget-object v18, v16, v1

    .line 93
    .line 94
    const/16 v19, 0x38

    .line 95
    .line 96
    aput v19, v18, v1

    .line 97
    .line 98
    aget-object v14, v14, v7

    .line 99
    .line 100
    aget-object v20, v14, v1

    .line 101
    .line 102
    aput v19, v20, v1

    .line 103
    .line 104
    const/16 v21, 0x70

    .line 105
    .line 106
    aput v21, v18, v7

    .line 107
    .line 108
    aput v21, v20, v7

    .line 109
    .line 110
    const/16 v18, 0x4

    .line 111
    .line 112
    aget-object v18, v0, v18

    .line 113
    .line 114
    aget-object v20, v18, v1

    .line 115
    .line 116
    aget-object v22, v20, v1

    .line 117
    .line 118
    aput v9, v22, v1

    .line 119
    .line 120
    aget-object v18, v18, v7

    .line 121
    .line 122
    aget-object v23, v18, v1

    .line 123
    .line 124
    aput v9, v23, v1

    .line 125
    .line 126
    const/16 v24, 0x80

    .line 127
    .line 128
    aput v24, v22, v7

    .line 129
    .line 130
    aput v24, v23, v7

    .line 131
    .line 132
    const/16 v22, 0x5

    .line 133
    .line 134
    aget-object v22, v0, v22

    .line 135
    .line 136
    aget-object v23, v22, v1

    .line 137
    .line 138
    aget-object v25, v23, v1

    .line 139
    .line 140
    aput v13, v25, v1

    .line 141
    .line 142
    aget-object v22, v22, v7

    .line 143
    .line 144
    aget-object v26, v22, v1

    .line 145
    .line 146
    aput v13, v26, v1

    .line 147
    .line 148
    const/16 v27, 0xa0

    .line 149
    .line 150
    aput v27, v25, v7

    .line 151
    .line 152
    aput v27, v26, v7

    .line 153
    .line 154
    const/16 v25, 0x6

    .line 155
    .line 156
    aget-object v25, v0, v25

    .line 157
    .line 158
    aget-object v26, v25, v1

    .line 159
    .line 160
    aget-object v28, v26, v1

    .line 161
    .line 162
    aput v17, v28, v1

    .line 163
    .line 164
    aget-object v25, v25, v7

    .line 165
    .line 166
    aget-object v29, v25, v1

    .line 167
    .line 168
    aput v17, v29, v1

    .line 169
    .line 170
    const/16 v30, 0xc0

    .line 171
    .line 172
    aput v30, v28, v7

    .line 173
    .line 174
    aput v30, v29, v7

    .line 175
    .line 176
    const/16 v28, 0x7

    .line 177
    .line 178
    aget-object v28, v0, v28

    .line 179
    .line 180
    aget-object v29, v28, v1

    .line 181
    .line 182
    aget-object v31, v29, v1

    .line 183
    .line 184
    aput v21, v31, v1

    .line 185
    .line 186
    aget-object v28, v28, v7

    .line 187
    .line 188
    aget-object v32, v28, v1

    .line 189
    .line 190
    aput v21, v32, v1

    .line 191
    .line 192
    const/16 v33, 0xe0

    .line 193
    .line 194
    aput v33, v31, v7

    .line 195
    .line 196
    aput v33, v32, v7

    .line 197
    .line 198
    const/16 v31, 0x8

    .line 199
    .line 200
    aget-object v31, v0, v31

    .line 201
    .line 202
    aget-object v32, v31, v1

    .line 203
    .line 204
    aget-object v34, v32, v1

    .line 205
    .line 206
    aput v24, v34, v1

    .line 207
    .line 208
    aget-object v31, v31, v7

    .line 209
    .line 210
    aget-object v35, v31, v1

    .line 211
    .line 212
    aput v24, v35, v1

    .line 213
    .line 214
    const/16 v36, 0x100

    .line 215
    .line 216
    aput v36, v34, v7

    .line 217
    .line 218
    aput v36, v35, v7

    .line 219
    .line 220
    const/16 v34, 0x9

    .line 221
    .line 222
    aget-object v34, v0, v34

    .line 223
    .line 224
    aget-object v35, v34, v1

    .line 225
    .line 226
    aget-object v37, v35, v1

    .line 227
    .line 228
    aput v27, v37, v1

    .line 229
    .line 230
    aget-object v34, v34, v7

    .line 231
    .line 232
    aget-object v38, v34, v1

    .line 233
    .line 234
    aput v27, v38, v1

    .line 235
    .line 236
    const/16 v39, 0x140

    .line 237
    .line 238
    aput v39, v37, v7

    .line 239
    .line 240
    aput v39, v38, v7

    .line 241
    .line 242
    const/16 v37, 0xa

    .line 243
    .line 244
    aget-object v37, v0, v37

    .line 245
    .line 246
    aget-object v38, v37, v1

    .line 247
    .line 248
    aget-object v40, v38, v1

    .line 249
    .line 250
    aput v30, v40, v1

    .line 251
    .line 252
    aget-object v37, v37, v7

    .line 253
    .line 254
    aget-object v41, v37, v1

    .line 255
    .line 256
    aput v30, v41, v1

    .line 257
    .line 258
    const/16 v42, 0x180

    .line 259
    .line 260
    aput v42, v40, v7

    .line 261
    .line 262
    aput v42, v41, v7

    .line 263
    .line 264
    const/16 v40, 0xb

    .line 265
    .line 266
    aget-object v40, v0, v40

    .line 267
    .line 268
    aget-object v41, v40, v1

    .line 269
    .line 270
    aget-object v43, v41, v1

    .line 271
    .line 272
    aput v33, v43, v1

    .line 273
    .line 274
    aget-object v40, v40, v7

    .line 275
    .line 276
    aget-object v44, v40, v1

    .line 277
    .line 278
    aput v33, v44, v1

    .line 279
    .line 280
    const/16 v45, 0x1c0

    .line 281
    .line 282
    aput v45, v43, v7

    .line 283
    .line 284
    aput v45, v44, v7

    .line 285
    .line 286
    const/16 v43, 0xc

    .line 287
    .line 288
    aget-object v43, v0, v43

    .line 289
    .line 290
    aget-object v44, v43, v1

    .line 291
    .line 292
    aget-object v46, v44, v1

    .line 293
    .line 294
    aput v36, v46, v1

    .line 295
    .line 296
    aget-object v43, v43, v7

    .line 297
    .line 298
    aget-object v47, v43, v1

    .line 299
    .line 300
    aput v36, v47, v1

    .line 301
    .line 302
    const/16 v48, 0x200

    .line 303
    .line 304
    aput v48, v46, v7

    .line 305
    .line 306
    aput v48, v47, v7

    .line 307
    .line 308
    const/16 v46, 0xd

    .line 309
    .line 310
    aget-object v46, v0, v46

    .line 311
    .line 312
    aget-object v47, v46, v1

    .line 313
    .line 314
    aget-object v49, v47, v1

    .line 315
    .line 316
    aput v39, v49, v1

    .line 317
    .line 318
    aget-object v46, v46, v7

    .line 319
    .line 320
    aget-object v50, v46, v1

    .line 321
    .line 322
    aput v39, v50, v1

    .line 323
    .line 324
    const/16 v51, 0x280

    .line 325
    .line 326
    aput v51, v49, v7

    .line 327
    .line 328
    aput v51, v50, v7

    .line 329
    .line 330
    const/16 v49, 0xe

    .line 331
    .line 332
    aget-object v49, v0, v49

    .line 333
    .line 334
    aget-object v50, v49, v1

    .line 335
    .line 336
    aget-object v52, v50, v1

    .line 337
    .line 338
    aput v42, v52, v1

    .line 339
    .line 340
    aget-object v49, v49, v7

    .line 341
    .line 342
    aget-object v53, v49, v1

    .line 343
    .line 344
    aput v42, v53, v1

    .line 345
    .line 346
    const/16 v54, 0x300

    .line 347
    .line 348
    aput v54, v52, v7

    .line 349
    .line 350
    const/16 v52, 0x300

    .line 351
    .line 352
    aput v52, v53, v7

    .line 353
    .line 354
    const/16 v52, 0xf

    .line 355
    .line 356
    aget-object v52, v0, v52

    .line 357
    .line 358
    aget-object v53, v52, v1

    .line 359
    .line 360
    aget-object v54, v53, v1

    .line 361
    .line 362
    aput v45, v54, v1

    .line 363
    .line 364
    aget-object v52, v52, v7

    .line 365
    .line 366
    aget-object v55, v52, v1

    .line 367
    .line 368
    aput v45, v55, v1

    .line 369
    .line 370
    const/16 v56, 0x380

    .line 371
    .line 372
    aput v56, v54, v7

    .line 373
    .line 374
    const/16 v54, 0x380

    .line 375
    .line 376
    aput v54, v55, v7

    .line 377
    .line 378
    const/16 v54, 0x10

    .line 379
    .line 380
    aget-object v54, v0, v54

    .line 381
    .line 382
    aget-object v55, v54, v1

    .line 383
    .line 384
    aget-object v56, v55, v1

    .line 385
    .line 386
    aput v48, v56, v1

    .line 387
    .line 388
    aget-object v54, v54, v7

    .line 389
    .line 390
    aget-object v57, v54, v1

    .line 391
    .line 392
    aput v48, v57, v1

    .line 393
    .line 394
    const/16 v58, 0x400

    .line 395
    .line 396
    aput v58, v56, v7

    .line 397
    .line 398
    const/16 v56, 0x400

    .line 399
    .line 400
    aput v56, v57, v7

    .line 401
    .line 402
    const/16 v56, 0x11

    .line 403
    .line 404
    aget-object v56, v0, v56

    .line 405
    .line 406
    aget-object v57, v56, v1

    .line 407
    .line 408
    aget-object v58, v57, v1

    .line 409
    .line 410
    const/16 v59, 0x240

    .line 411
    .line 412
    aput v59, v58, v1

    .line 413
    .line 414
    aget-object v56, v56, v7

    .line 415
    .line 416
    aget-object v60, v56, v1

    .line 417
    .line 418
    aput v59, v60, v1

    .line 419
    .line 420
    const/16 v61, 0x480

    .line 421
    .line 422
    aput v61, v58, v7

    .line 423
    .line 424
    const/16 v58, 0x480

    .line 425
    .line 426
    aput v58, v60, v7

    .line 427
    .line 428
    const/16 v58, 0x12

    .line 429
    .line 430
    aget-object v0, v0, v58

    .line 431
    .line 432
    aget-object v58, v0, v1

    .line 433
    .line 434
    aget-object v60, v58, v1

    .line 435
    .line 436
    aput v51, v60, v1

    .line 437
    .line 438
    aget-object v0, v0, v7

    .line 439
    .line 440
    aget-object v61, v0, v1

    .line 441
    .line 442
    aput v51, v61, v1

    .line 443
    .line 444
    const/16 v62, 0x500

    .line 445
    .line 446
    aput v62, v60, v7

    .line 447
    .line 448
    const/16 v60, 0x500

    .line 449
    .line 450
    aput v60, v61, v7

    .line 451
    .line 452
    aget-object v60, v4, v7

    .line 453
    .line 454
    aput v6, v60, v1

    .line 455
    .line 456
    aget-object v61, v3, v7

    .line 457
    .line 458
    aput v6, v61, v1

    .line 459
    .line 460
    const/16 v62, 0x45

    .line 461
    .line 462
    aput v62, v60, v7

    .line 463
    .line 464
    const/16 v60, 0x46

    .line 465
    .line 466
    aput v60, v61, v7

    .line 467
    .line 468
    aget-object v60, v8, v7

    .line 469
    .line 470
    aput v11, v60, v1

    .line 471
    .line 472
    aget-object v61, v5, v7

    .line 473
    .line 474
    aput v11, v61, v1

    .line 475
    .line 476
    const/16 v62, 0x57

    .line 477
    .line 478
    aput v62, v60, v7

    .line 479
    .line 480
    const/16 v60, 0x58

    .line 481
    .line 482
    aput v60, v61, v7

    .line 483
    .line 484
    aget-object v60, v12, v7

    .line 485
    .line 486
    aput v15, v60, v1

    .line 487
    .line 488
    aget-object v61, v10, v7

    .line 489
    .line 490
    aput v15, v61, v1

    .line 491
    .line 492
    const/16 v62, 0x68

    .line 493
    .line 494
    aput v62, v60, v7

    .line 495
    .line 496
    const/16 v60, 0x69

    .line 497
    .line 498
    aput v60, v61, v7

    .line 499
    .line 500
    aget-object v60, v16, v7

    .line 501
    .line 502
    aput v19, v60, v1

    .line 503
    .line 504
    aget-object v61, v14, v7

    .line 505
    .line 506
    aput v19, v61, v1

    .line 507
    .line 508
    const/16 v62, 0x79

    .line 509
    .line 510
    aput v62, v60, v7

    .line 511
    .line 512
    const/16 v60, 0x7a

    .line 513
    .line 514
    aput v60, v61, v7

    .line 515
    .line 516
    aget-object v60, v20, v7

    .line 517
    .line 518
    aput v9, v60, v1

    .line 519
    .line 520
    aget-object v61, v18, v7

    .line 521
    .line 522
    aput v9, v61, v1

    .line 523
    .line 524
    const/16 v62, 0x8b

    .line 525
    .line 526
    aput v62, v60, v7

    .line 527
    .line 528
    const/16 v60, 0x8c

    .line 529
    .line 530
    aput v60, v61, v7

    .line 531
    .line 532
    aget-object v60, v23, v7

    .line 533
    .line 534
    aput v13, v60, v1

    .line 535
    .line 536
    aget-object v61, v22, v7

    .line 537
    .line 538
    aput v13, v61, v1

    .line 539
    .line 540
    const/16 v62, 0xae

    .line 541
    .line 542
    aput v62, v60, v7

    .line 543
    .line 544
    const/16 v60, 0xaf

    .line 545
    .line 546
    aput v60, v61, v7

    .line 547
    .line 548
    aget-object v60, v26, v7

    .line 549
    .line 550
    aput v17, v60, v1

    .line 551
    .line 552
    aget-object v61, v25, v7

    .line 553
    .line 554
    aput v17, v61, v1

    .line 555
    .line 556
    const/16 v62, 0xd0

    .line 557
    .line 558
    aput v62, v60, v7

    .line 559
    .line 560
    const/16 v60, 0xd1

    .line 561
    .line 562
    aput v60, v61, v7

    .line 563
    .line 564
    aget-object v60, v29, v7

    .line 565
    .line 566
    aput v21, v60, v1

    .line 567
    .line 568
    aget-object v61, v28, v7

    .line 569
    .line 570
    aput v21, v61, v1

    .line 571
    .line 572
    const/16 v62, 0xf3

    .line 573
    .line 574
    aput v62, v60, v7

    .line 575
    .line 576
    const/16 v60, 0xf4

    .line 577
    .line 578
    aput v60, v61, v7

    .line 579
    .line 580
    aget-object v60, v32, v7

    .line 581
    .line 582
    aput v24, v60, v1

    .line 583
    .line 584
    aget-object v61, v31, v7

    .line 585
    .line 586
    aput v24, v61, v1

    .line 587
    .line 588
    const/16 v62, 0x116

    .line 589
    .line 590
    aput v62, v60, v7

    .line 591
    .line 592
    const/16 v60, 0x117

    .line 593
    .line 594
    aput v60, v61, v7

    .line 595
    .line 596
    aget-object v60, v35, v7

    .line 597
    .line 598
    aput v27, v60, v1

    .line 599
    .line 600
    aget-object v61, v34, v7

    .line 601
    .line 602
    aput v27, v61, v1

    .line 603
    .line 604
    const/16 v62, 0x15c

    .line 605
    .line 606
    aput v62, v60, v7

    .line 607
    .line 608
    const/16 v60, 0x15d

    .line 609
    .line 610
    aput v60, v61, v7

    .line 611
    .line 612
    aget-object v60, v38, v7

    .line 613
    .line 614
    aput v30, v60, v1

    .line 615
    .line 616
    aget-object v61, v37, v7

    .line 617
    .line 618
    aput v30, v61, v1

    .line 619
    .line 620
    const/16 v62, 0x1a1

    .line 621
    .line 622
    aput v62, v60, v7

    .line 623
    .line 624
    const/16 v60, 0x1a2

    .line 625
    .line 626
    aput v60, v61, v7

    .line 627
    .line 628
    aget-object v60, v41, v7

    .line 629
    .line 630
    aput v33, v60, v1

    .line 631
    .line 632
    aget-object v61, v40, v7

    .line 633
    .line 634
    aput v33, v61, v1

    .line 635
    .line 636
    const/16 v62, 0x1e7

    .line 637
    .line 638
    aput v62, v60, v7

    .line 639
    .line 640
    const/16 v60, 0x1e8

    .line 641
    .line 642
    aput v60, v61, v7

    .line 643
    .line 644
    aget-object v60, v44, v7

    .line 645
    .line 646
    aput v36, v60, v1

    .line 647
    .line 648
    aget-object v61, v43, v7

    .line 649
    .line 650
    aput v36, v61, v1

    .line 651
    .line 652
    const/16 v62, 0x22d

    .line 653
    .line 654
    aput v62, v60, v7

    .line 655
    .line 656
    const/16 v60, 0x22e

    .line 657
    .line 658
    aput v60, v61, v7

    .line 659
    .line 660
    aget-object v60, v47, v7

    .line 661
    .line 662
    aput v39, v60, v1

    .line 663
    .line 664
    aget-object v61, v46, v7

    .line 665
    .line 666
    aput v39, v61, v1

    .line 667
    .line 668
    const/16 v62, 0x2b8

    .line 669
    .line 670
    aput v62, v60, v7

    .line 671
    .line 672
    const/16 v60, 0x2b9

    .line 673
    .line 674
    aput v60, v61, v7

    .line 675
    .line 676
    aget-object v60, v50, v7

    .line 677
    .line 678
    aput v42, v60, v1

    .line 679
    .line 680
    aget-object v61, v49, v7

    .line 681
    .line 682
    aput v42, v61, v1

    .line 683
    .line 684
    const/16 v62, 0x343

    .line 685
    .line 686
    aput v62, v60, v7

    .line 687
    .line 688
    const/16 v60, 0x344

    .line 689
    .line 690
    aput v60, v61, v7

    .line 691
    .line 692
    aget-object v60, v53, v7

    .line 693
    .line 694
    aput v45, v60, v1

    .line 695
    .line 696
    aget-object v61, v52, v7

    .line 697
    .line 698
    aput v45, v61, v1

    .line 699
    .line 700
    const/16 v62, 0x3cf

    .line 701
    .line 702
    aput v62, v60, v7

    .line 703
    .line 704
    const/16 v60, 0x3cf

    .line 705
    .line 706
    aput v60, v61, v7

    .line 707
    .line 708
    aget-object v60, v55, v7

    .line 709
    .line 710
    aput v48, v60, v1

    .line 711
    .line 712
    aget-object v61, v54, v7

    .line 713
    .line 714
    aput v48, v61, v1

    .line 715
    .line 716
    const/16 v62, 0x45a

    .line 717
    .line 718
    aput v62, v60, v7

    .line 719
    .line 720
    const/16 v60, 0x45b

    .line 721
    .line 722
    aput v60, v61, v7

    .line 723
    .line 724
    aget-object v60, v57, v7

    .line 725
    .line 726
    aput v59, v60, v1

    .line 727
    .line 728
    aget-object v61, v56, v7

    .line 729
    .line 730
    aput v59, v61, v1

    .line 731
    .line 732
    const/16 v62, 0x4e5

    .line 733
    .line 734
    aput v62, v60, v7

    .line 735
    .line 736
    const/16 v60, 0x4e6

    .line 737
    .line 738
    aput v60, v61, v7

    .line 739
    .line 740
    aget-object v60, v58, v7

    .line 741
    .line 742
    aput v51, v60, v1

    .line 743
    .line 744
    aget-object v61, v0, v7

    .line 745
    .line 746
    aput v51, v61, v1

    .line 747
    .line 748
    const/16 v62, 0x571

    .line 749
    .line 750
    aput v62, v60, v7

    .line 751
    .line 752
    const/16 v60, 0x572

    .line 753
    .line 754
    aput v60, v61, v7

    .line 755
    .line 756
    aget-object v4, v4, v2

    .line 757
    .line 758
    aput v6, v4, v1

    .line 759
    .line 760
    aget-object v3, v3, v2

    .line 761
    .line 762
    aput v6, v3, v1

    .line 763
    .line 764
    aput v17, v4, v7

    .line 765
    .line 766
    aput v17, v3, v7

    .line 767
    .line 768
    aget-object v3, v8, v2

    .line 769
    .line 770
    aput v11, v3, v1

    .line 771
    .line 772
    aget-object v4, v5, v2

    .line 773
    .line 774
    aput v11, v4, v1

    .line 775
    .line 776
    const/16 v5, 0x78

    .line 777
    .line 778
    aput v5, v3, v7

    .line 779
    .line 780
    const/16 v3, 0x78

    .line 781
    .line 782
    aput v3, v4, v7

    .line 783
    .line 784
    aget-object v3, v12, v2

    .line 785
    .line 786
    aput v15, v3, v1

    .line 787
    .line 788
    aget-object v4, v10, v2

    .line 789
    .line 790
    aput v15, v4, v1

    .line 791
    .line 792
    const/16 v5, 0x90

    .line 793
    .line 794
    aput v5, v3, v7

    .line 795
    .line 796
    const/16 v3, 0x90

    .line 797
    .line 798
    aput v3, v4, v7

    .line 799
    .line 800
    aget-object v3, v16, v2

    .line 801
    .line 802
    aput v19, v3, v1

    .line 803
    .line 804
    aget-object v4, v14, v2

    .line 805
    .line 806
    aput v19, v4, v1

    .line 807
    .line 808
    const/16 v5, 0xa8

    .line 809
    .line 810
    aput v5, v3, v7

    .line 811
    .line 812
    const/16 v3, 0xa8

    .line 813
    .line 814
    aput v3, v4, v7

    .line 815
    .line 816
    aget-object v3, v20, v2

    .line 817
    .line 818
    aput v9, v3, v1

    .line 819
    .line 820
    aget-object v4, v18, v2

    .line 821
    .line 822
    aput v9, v4, v1

    .line 823
    .line 824
    aput v30, v3, v7

    .line 825
    .line 826
    aput v30, v4, v7

    .line 827
    .line 828
    aget-object v3, v23, v2

    .line 829
    .line 830
    aput v13, v3, v1

    .line 831
    .line 832
    aget-object v4, v22, v2

    .line 833
    .line 834
    aput v13, v4, v1

    .line 835
    .line 836
    const/16 v5, 0xf0

    .line 837
    .line 838
    aput v5, v3, v7

    .line 839
    .line 840
    const/16 v3, 0xf0

    .line 841
    .line 842
    aput v3, v4, v7

    .line 843
    .line 844
    aget-object v3, v26, v2

    .line 845
    .line 846
    aput v17, v3, v1

    .line 847
    .line 848
    aget-object v4, v25, v2

    .line 849
    .line 850
    aput v17, v4, v1

    .line 851
    .line 852
    const/16 v5, 0x120

    .line 853
    .line 854
    aput v5, v3, v7

    .line 855
    .line 856
    const/16 v3, 0x120

    .line 857
    .line 858
    aput v3, v4, v7

    .line 859
    .line 860
    aget-object v3, v29, v2

    .line 861
    .line 862
    aput v21, v3, v1

    .line 863
    .line 864
    aget-object v4, v28, v2

    .line 865
    .line 866
    aput v21, v4, v1

    .line 867
    .line 868
    const/16 v5, 0x150

    .line 869
    .line 870
    aput v5, v3, v7

    .line 871
    .line 872
    const/16 v3, 0x150

    .line 873
    .line 874
    aput v3, v4, v7

    .line 875
    .line 876
    aget-object v3, v32, v2

    .line 877
    .line 878
    aput v24, v3, v1

    .line 879
    .line 880
    aget-object v4, v31, v2

    .line 881
    .line 882
    aput v24, v4, v1

    .line 883
    .line 884
    aput v42, v3, v7

    .line 885
    .line 886
    aput v42, v4, v7

    .line 887
    .line 888
    aget-object v3, v35, v2

    .line 889
    .line 890
    aput v27, v3, v1

    .line 891
    .line 892
    aget-object v4, v34, v2

    .line 893
    .line 894
    aput v27, v4, v1

    .line 895
    .line 896
    const/16 v5, 0x1e0

    .line 897
    .line 898
    aput v5, v3, v7

    .line 899
    .line 900
    const/16 v3, 0x1e0

    .line 901
    .line 902
    aput v3, v4, v7

    .line 903
    .line 904
    aget-object v3, v38, v2

    .line 905
    .line 906
    aput v30, v3, v1

    .line 907
    .line 908
    aget-object v4, v37, v2

    .line 909
    .line 910
    aput v30, v4, v1

    .line 911
    .line 912
    aput v59, v3, v7

    .line 913
    .line 914
    aput v59, v4, v7

    .line 915
    .line 916
    aget-object v3, v41, v2

    .line 917
    .line 918
    aput v33, v3, v1

    .line 919
    .line 920
    aget-object v4, v40, v2

    .line 921
    .line 922
    aput v33, v4, v1

    .line 923
    .line 924
    const/16 v5, 0x2a0

    .line 925
    .line 926
    aput v5, v3, v7

    .line 927
    .line 928
    const/16 v3, 0x2a0

    .line 929
    .line 930
    aput v3, v4, v7

    .line 931
    .line 932
    aget-object v3, v44, v2

    .line 933
    .line 934
    aput v36, v3, v1

    .line 935
    .line 936
    aget-object v4, v43, v2

    .line 937
    .line 938
    aput v36, v4, v1

    .line 939
    .line 940
    const/16 v5, 0x300

    .line 941
    .line 942
    aput v5, v3, v7

    .line 943
    .line 944
    const/16 v3, 0x300

    .line 945
    .line 946
    aput v3, v4, v7

    .line 947
    .line 948
    aget-object v3, v47, v2

    .line 949
    .line 950
    aput v39, v3, v1

    .line 951
    .line 952
    aget-object v4, v46, v2

    .line 953
    .line 954
    aput v39, v4, v1

    .line 955
    .line 956
    const/16 v5, 0x3c0

    .line 957
    .line 958
    aput v5, v3, v7

    .line 959
    .line 960
    const/16 v3, 0x3c0

    .line 961
    .line 962
    aput v3, v4, v7

    .line 963
    .line 964
    aget-object v3, v50, v2

    .line 965
    .line 966
    aput v42, v3, v1

    .line 967
    .line 968
    aget-object v4, v49, v2

    .line 969
    .line 970
    aput v42, v4, v1

    .line 971
    .line 972
    const/16 v5, 0x480

    .line 973
    .line 974
    aput v5, v3, v7

    .line 975
    .line 976
    const/16 v3, 0x480

    .line 977
    .line 978
    aput v3, v4, v7

    .line 979
    .line 980
    aget-object v3, v53, v2

    .line 981
    .line 982
    aput v45, v3, v1

    .line 983
    .line 984
    aget-object v4, v52, v2

    .line 985
    .line 986
    aput v45, v4, v1

    .line 987
    .line 988
    const/16 v5, 0x540

    .line 989
    .line 990
    aput v5, v3, v7

    .line 991
    .line 992
    const/16 v3, 0x540

    .line 993
    .line 994
    aput v3, v4, v7

    .line 995
    .line 996
    aget-object v3, v55, v2

    .line 997
    .line 998
    aput v48, v3, v1

    .line 999
    .line 1000
    aget-object v4, v54, v2

    .line 1001
    .line 1002
    aput v48, v4, v1

    .line 1003
    .line 1004
    const/16 v5, 0x600

    .line 1005
    .line 1006
    aput v5, v3, v7

    .line 1007
    .line 1008
    const/16 v3, 0x600

    .line 1009
    .line 1010
    aput v3, v4, v7

    .line 1011
    .line 1012
    aget-object v3, v57, v2

    .line 1013
    .line 1014
    aput v59, v3, v1

    .line 1015
    .line 1016
    aget-object v4, v56, v2

    .line 1017
    .line 1018
    aput v59, v4, v1

    .line 1019
    .line 1020
    const/16 v5, 0x6c0

    .line 1021
    .line 1022
    aput v5, v3, v7

    .line 1023
    .line 1024
    const/16 v3, 0x6c0

    .line 1025
    .line 1026
    aput v3, v4, v7

    .line 1027
    .line 1028
    aget-object v3, v58, v2

    .line 1029
    .line 1030
    aput v51, v3, v1

    .line 1031
    .line 1032
    aget-object v0, v0, v2

    .line 1033
    .line 1034
    aput v51, v0, v1

    .line 1035
    .line 1036
    const/16 v1, 0x780

    .line 1037
    .line 1038
    aput v1, v3, v7

    .line 1039
    .line 1040
    aput v1, v0, v7

    .line 1041
    .line 1042
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "eng"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/b;-><init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    .line 4
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 5
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/authoring/i;->p(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/b;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->f:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->i:Lcom/coremedia/iso/boxes/s0;

    .line 8
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/b;->b()Lcom/coremedia/iso/boxes/sampleentry/c;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 10
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->m(Ljava/util/Date;)V

    .line 11
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->s(Ljava/util/Date;)V

    .line 12
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/authoring/i;->p(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/c;->O()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 14
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/i;->v(F)V

    return-void
.end method

.method private b()Lcom/coremedia/iso/boxes/sampleentry/c;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->f:Ljava/util/List;

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
    check-cast v0, Lcom/googlecode/mp4parser/authoring/f;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->a()Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0xb77

    .line 26
    .line 27
    if-ne v3, v4, :cond_a

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    .line 42
    if-ne v4, v3, :cond_0

    .line 43
    .line 44
    const/16 v6, 0x7d00

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    const-string v1, "Unsupported Sample Rate"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    const v6, 0xac44

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const v6, 0xbb80

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 v7, 0x6

    .line 63
    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    const/4 v9, 0x5

    .line 68
    invoke-virtual {v2, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const/4 v10, 0x3

    .line 73
    invoke-virtual {v2, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    invoke-virtual {v2, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eq v9, v0, :cond_9

    .line 82
    .line 83
    const/16 v12, 0x9

    .line 84
    .line 85
    if-ne v9, v12, :cond_3

    .line 86
    .line 87
    div-int/lit8 v6, v6, 0x2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/16 v12, 0x8

    .line 91
    .line 92
    if-eq v9, v12, :cond_5

    .line 93
    .line 94
    if-ne v9, v7, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 98
    .line 99
    const-string v1, "Unsupported bsid"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_5
    :goto_1
    if-eq v10, v5, :cond_6

    .line 106
    .line 107
    and-int/lit8 v7, v10, 0x1

    .line 108
    .line 109
    if-ne v7, v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 112
    .line 113
    .line 114
    :cond_6
    and-int/lit8 v7, v10, 0x4

    .line 115
    .line 116
    if-eqz v7, :cond_7

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 119
    .line 120
    .line 121
    :cond_7
    if-ne v10, v3, :cond_8

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 124
    .line 125
    .line 126
    :cond_8
    packed-switch v10, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string v1, "Unsupported acmod"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :pswitch_0
    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    new-instance v7, Lcom/coremedia/iso/boxes/sampleentry/c;

    .line 142
    .line 143
    const-string v12, "ac-3"

    .line 144
    .line 145
    invoke-direct {v7, v12}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v3}, Lcom/coremedia/iso/boxes/sampleentry/c;->f0(I)V

    .line 149
    .line 150
    .line 151
    int-to-long v12, v6

    .line 152
    invoke-virtual {v7, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/c;->l0(J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v5}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->m0(I)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lcom/googlecode/mp4parser/boxes/a;

    .line 162
    .line 163
    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/a;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v10}, Lcom/googlecode/mp4parser/boxes/a;->A(I)V

    .line 167
    .line 168
    .line 169
    shr-int/lit8 v3, v8, 0x1

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/a;->B(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/a;->C(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/boxes/a;->D(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/a;->E(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/a;->F(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/a;->G(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 190
    .line 191
    .line 192
    return-object v7

    .line 193
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 194
    .line 195
    const-string v1, "You cannot read E-AC-3 track with AC3TrackImpl.class - user EC3TrackImpl.class"

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    const-string v1, "Stream doesn\'t seem to be AC3"

    .line 204
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(II)I
    .locals 4

    .line 1
    ushr-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr p1, v1

    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    if-gt v0, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-gt p2, v2, :cond_0

    .line 13
    .line 14
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/b;->j:[[[[I

    .line 15
    .line 16
    aget-object v0, v3, v0

    .line 17
    .line 18
    aget-object p1, v0, p1

    .line 19
    .line 20
    aget-object p1, p1, p2

    .line 21
    .line 22
    aget p1, p1, v1

    .line 23
    .line 24
    mul-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    const-string p2, "Cannot determine framesize of current sample"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private d()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v3, v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->g:[J

    .line 27
    .line 28
    const-wide/16 v2, 0x600

    .line 29
    .line 30
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    and-int/lit8 v3, v3, 0x3f

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    shr-int/lit8 v2, v2, 0x6

    .line 46
    .line 47
    invoke-direct {p0, v3, v2}, Lcom/googlecode/mp4parser/authoring/tracks/b;->c(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    new-instance v10, Lcom/googlecode/mp4parser/authoring/tracks/b$a;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 54
    .line 55
    invoke-interface {v3}, Lcom/googlecode/mp4parser/e;->position()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    const-wide/16 v11, 0x5

    .line 60
    .line 61
    sub-long v5, v3, v11

    .line 62
    .line 63
    int-to-long v13, v2

    .line 64
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 65
    .line 66
    move-object v3, v10

    .line 67
    move-object v4, p0

    .line 68
    move-wide v7, v13

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/googlecode/mp4parser/authoring/tracks/b$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/b;JJLcom/googlecode/mp4parser/e;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 76
    .line 77
    invoke-interface {v2}, Lcom/googlecode/mp4parser/e;->position()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    sub-long/2addr v3, v11

    .line 82
    add-long/2addr v3, v13

    .line 83
    invoke-interface {v2, v3, v4}, Lcom/googlecode/mp4parser/e;->W(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 87
    .line 88
    .line 89
    goto :goto_0
.end method


# virtual methods
.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->i:Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->h:Lcom/googlecode/mp4parser/authoring/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()[J
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public S()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized Z()[J
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->g:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b;->e:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public h0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
