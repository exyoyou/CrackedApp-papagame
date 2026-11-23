.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v1, 0x18

    .line 9
    .line 10
    new-array v1, v1, [[Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v5, "00"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v5, v4, v6

    .line 23
    .line 24
    const/16 v5, 0x12

    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v8, 0x1

    .line 31
    aput-object v7, v4, v8

    .line 32
    .line 33
    aput-object v4, v1, v6

    .line 34
    .line 35
    new-array v4, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v9, "01"

    .line 38
    .line 39
    aput-object v9, v4, v6

    .line 40
    .line 41
    const/16 v9, 0xe

    .line 42
    .line 43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    aput-object v10, v4, v8

    .line 48
    .line 49
    aput-object v4, v1, v8

    .line 50
    .line 51
    new-array v4, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v11, "02"

    .line 54
    .line 55
    aput-object v11, v4, v6

    .line 56
    .line 57
    aput-object v10, v4, v8

    .line 58
    .line 59
    aput-object v4, v1, v2

    .line 60
    .line 61
    const/4 v4, 0x3

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    new-array v12, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    const-string v13, "10"

    .line 69
    .line 70
    aput-object v13, v12, v6

    .line 71
    .line 72
    aput-object v0, v12, v8

    .line 73
    .line 74
    const/16 v13, 0x14

    .line 75
    .line 76
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    aput-object v14, v12, v2

    .line 81
    .line 82
    aput-object v12, v1, v4

    .line 83
    .line 84
    new-array v12, v2, [Ljava/lang/Object;

    .line 85
    .line 86
    const-string v15, "11"

    .line 87
    .line 88
    aput-object v15, v12, v6

    .line 89
    .line 90
    const/4 v15, 0x6

    .line 91
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    aput-object v16, v12, v8

    .line 96
    .line 97
    const/16 v17, 0x4

    .line 98
    .line 99
    aput-object v12, v1, v17

    .line 100
    .line 101
    new-array v12, v2, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string v18, "12"

    .line 104
    .line 105
    aput-object v18, v12, v6

    .line 106
    .line 107
    aput-object v16, v12, v8

    .line 108
    .line 109
    const/16 v18, 0x5

    .line 110
    .line 111
    aput-object v12, v1, v18

    .line 112
    .line 113
    new-array v12, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    const-string v19, "13"

    .line 116
    .line 117
    aput-object v19, v12, v6

    .line 118
    .line 119
    aput-object v16, v12, v8

    .line 120
    .line 121
    aput-object v12, v1, v15

    .line 122
    .line 123
    new-array v12, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    const-string v19, "15"

    .line 126
    .line 127
    aput-object v19, v12, v6

    .line 128
    .line 129
    aput-object v16, v12, v8

    .line 130
    .line 131
    const/16 v19, 0x7

    .line 132
    .line 133
    aput-object v12, v1, v19

    .line 134
    .line 135
    new-array v12, v2, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v20, "17"

    .line 138
    .line 139
    aput-object v20, v12, v6

    .line 140
    .line 141
    aput-object v16, v12, v8

    .line 142
    .line 143
    const/16 v20, 0x8

    .line 144
    .line 145
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v21

    .line 149
    aput-object v12, v1, v20

    .line 150
    .line 151
    new-array v12, v2, [Ljava/lang/Object;

    .line 152
    .line 153
    const-string v22, "20"

    .line 154
    .line 155
    aput-object v22, v12, v6

    .line 156
    .line 157
    aput-object v3, v12, v8

    .line 158
    .line 159
    const/16 v22, 0x9

    .line 160
    .line 161
    aput-object v12, v1, v22

    .line 162
    .line 163
    new-array v12, v4, [Ljava/lang/Object;

    .line 164
    .line 165
    const-string v23, "21"

    .line 166
    .line 167
    aput-object v23, v12, v6

    .line 168
    .line 169
    aput-object v0, v12, v8

    .line 170
    .line 171
    aput-object v14, v12, v2

    .line 172
    .line 173
    const/16 v23, 0xa

    .line 174
    .line 175
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v24

    .line 179
    aput-object v12, v1, v23

    .line 180
    .line 181
    new-array v12, v4, [Ljava/lang/Object;

    .line 182
    .line 183
    const-string v25, "22"

    .line 184
    .line 185
    aput-object v25, v12, v6

    .line 186
    .line 187
    aput-object v0, v12, v8

    .line 188
    .line 189
    const/16 v25, 0x1d

    .line 190
    .line 191
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v25

    .line 195
    aput-object v25, v12, v2

    .line 196
    .line 197
    const/16 v25, 0xb

    .line 198
    .line 199
    aput-object v12, v1, v25

    .line 200
    .line 201
    new-array v12, v4, [Ljava/lang/Object;

    .line 202
    .line 203
    const-string v26, "30"

    .line 204
    .line 205
    aput-object v26, v12, v6

    .line 206
    .line 207
    aput-object v0, v12, v8

    .line 208
    .line 209
    aput-object v21, v12, v2

    .line 210
    .line 211
    const/16 v26, 0xc

    .line 212
    .line 213
    aput-object v12, v1, v26

    .line 214
    .line 215
    new-array v12, v4, [Ljava/lang/Object;

    .line 216
    .line 217
    const-string v27, "37"

    .line 218
    .line 219
    aput-object v27, v12, v6

    .line 220
    .line 221
    aput-object v0, v12, v8

    .line 222
    .line 223
    aput-object v21, v12, v2

    .line 224
    .line 225
    const/16 v21, 0xd

    .line 226
    .line 227
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v27

    .line 231
    aput-object v12, v1, v21

    .line 232
    .line 233
    new-array v12, v4, [Ljava/lang/Object;

    .line 234
    .line 235
    const-string v28, "90"

    .line 236
    .line 237
    aput-object v28, v12, v6

    .line 238
    .line 239
    aput-object v0, v12, v8

    .line 240
    .line 241
    const/16 v28, 0x1e

    .line 242
    .line 243
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v29

    .line 247
    aput-object v29, v12, v2

    .line 248
    .line 249
    aput-object v12, v1, v9

    .line 250
    .line 251
    new-array v12, v4, [Ljava/lang/Object;

    .line 252
    .line 253
    const-string v30, "91"

    .line 254
    .line 255
    aput-object v30, v12, v6

    .line 256
    .line 257
    aput-object v0, v12, v8

    .line 258
    .line 259
    aput-object v29, v12, v2

    .line 260
    .line 261
    const/16 v30, 0xf

    .line 262
    .line 263
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v31

    .line 267
    aput-object v12, v1, v30

    .line 268
    .line 269
    new-array v12, v4, [Ljava/lang/Object;

    .line 270
    .line 271
    const-string v32, "92"

    .line 272
    .line 273
    aput-object v32, v12, v6

    .line 274
    .line 275
    aput-object v0, v12, v8

    .line 276
    .line 277
    aput-object v29, v12, v2

    .line 278
    .line 279
    const/16 v32, 0x10

    .line 280
    .line 281
    aput-object v12, v1, v32

    .line 282
    .line 283
    new-array v12, v4, [Ljava/lang/Object;

    .line 284
    .line 285
    const-string v33, "93"

    .line 286
    .line 287
    aput-object v33, v12, v6

    .line 288
    .line 289
    aput-object v0, v12, v8

    .line 290
    .line 291
    aput-object v29, v12, v2

    .line 292
    .line 293
    const/16 v9, 0x11

    .line 294
    .line 295
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v34

    .line 299
    aput-object v12, v1, v9

    .line 300
    .line 301
    new-array v12, v4, [Ljava/lang/Object;

    .line 302
    .line 303
    const-string v35, "94"

    .line 304
    .line 305
    aput-object v35, v12, v6

    .line 306
    .line 307
    aput-object v0, v12, v8

    .line 308
    .line 309
    aput-object v29, v12, v2

    .line 310
    .line 311
    aput-object v12, v1, v5

    .line 312
    .line 313
    new-array v12, v4, [Ljava/lang/Object;

    .line 314
    .line 315
    const-string v35, "95"

    .line 316
    .line 317
    aput-object v35, v12, v6

    .line 318
    .line 319
    aput-object v0, v12, v8

    .line 320
    .line 321
    aput-object v29, v12, v2

    .line 322
    .line 323
    const/16 v35, 0x13

    .line 324
    .line 325
    aput-object v12, v1, v35

    .line 326
    .line 327
    new-array v12, v4, [Ljava/lang/Object;

    .line 328
    .line 329
    const-string v36, "96"

    .line 330
    .line 331
    aput-object v36, v12, v6

    .line 332
    .line 333
    aput-object v0, v12, v8

    .line 334
    .line 335
    aput-object v29, v12, v2

    .line 336
    .line 337
    aput-object v12, v1, v13

    .line 338
    .line 339
    new-array v12, v4, [Ljava/lang/Object;

    .line 340
    .line 341
    const-string v36, "97"

    .line 342
    .line 343
    aput-object v36, v12, v6

    .line 344
    .line 345
    aput-object v0, v12, v8

    .line 346
    .line 347
    aput-object v29, v12, v2

    .line 348
    .line 349
    const/16 v36, 0x15

    .line 350
    .line 351
    aput-object v12, v1, v36

    .line 352
    .line 353
    new-array v12, v4, [Ljava/lang/Object;

    .line 354
    .line 355
    const-string v36, "98"

    .line 356
    .line 357
    aput-object v36, v12, v6

    .line 358
    .line 359
    aput-object v0, v12, v8

    .line 360
    .line 361
    aput-object v29, v12, v2

    .line 362
    .line 363
    const/16 v36, 0x16

    .line 364
    .line 365
    aput-object v12, v1, v36

    .line 366
    .line 367
    new-array v12, v4, [Ljava/lang/Object;

    .line 368
    .line 369
    const-string v36, "99"

    .line 370
    .line 371
    aput-object v36, v12, v6

    .line 372
    .line 373
    aput-object v0, v12, v8

    .line 374
    .line 375
    aput-object v29, v12, v2

    .line 376
    .line 377
    const/16 v36, 0x17

    .line 378
    .line 379
    aput-object v12, v1, v36

    .line 380
    .line 381
    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 382
    .line 383
    const/16 v1, 0x17

    .line 384
    .line 385
    new-array v1, v1, [[Ljava/lang/Object;

    .line 386
    .line 387
    new-array v12, v4, [Ljava/lang/Object;

    .line 388
    .line 389
    const-string v36, "240"

    .line 390
    .line 391
    aput-object v36, v12, v6

    .line 392
    .line 393
    aput-object v0, v12, v8

    .line 394
    .line 395
    aput-object v29, v12, v2

    .line 396
    .line 397
    aput-object v12, v1, v6

    .line 398
    .line 399
    new-array v12, v4, [Ljava/lang/Object;

    .line 400
    .line 401
    const-string v36, "241"

    .line 402
    .line 403
    aput-object v36, v12, v6

    .line 404
    .line 405
    aput-object v0, v12, v8

    .line 406
    .line 407
    aput-object v29, v12, v2

    .line 408
    .line 409
    aput-object v12, v1, v8

    .line 410
    .line 411
    new-array v12, v4, [Ljava/lang/Object;

    .line 412
    .line 413
    const-string v36, "242"

    .line 414
    .line 415
    aput-object v36, v12, v6

    .line 416
    .line 417
    aput-object v0, v12, v8

    .line 418
    .line 419
    aput-object v16, v12, v2

    .line 420
    .line 421
    aput-object v12, v1, v2

    .line 422
    .line 423
    new-array v12, v4, [Ljava/lang/Object;

    .line 424
    .line 425
    const-string v36, "250"

    .line 426
    .line 427
    aput-object v36, v12, v6

    .line 428
    .line 429
    aput-object v0, v12, v8

    .line 430
    .line 431
    aput-object v29, v12, v2

    .line 432
    .line 433
    aput-object v12, v1, v4

    .line 434
    .line 435
    new-array v12, v4, [Ljava/lang/Object;

    .line 436
    .line 437
    const-string v36, "251"

    .line 438
    .line 439
    aput-object v36, v12, v6

    .line 440
    .line 441
    aput-object v0, v12, v8

    .line 442
    .line 443
    aput-object v29, v12, v2

    .line 444
    .line 445
    aput-object v12, v1, v17

    .line 446
    .line 447
    new-array v12, v4, [Ljava/lang/Object;

    .line 448
    .line 449
    const-string v36, "253"

    .line 450
    .line 451
    aput-object v36, v12, v6

    .line 452
    .line 453
    aput-object v0, v12, v8

    .line 454
    .line 455
    aput-object v34, v12, v2

    .line 456
    .line 457
    aput-object v12, v1, v18

    .line 458
    .line 459
    new-array v12, v4, [Ljava/lang/Object;

    .line 460
    .line 461
    const-string v36, "254"

    .line 462
    .line 463
    aput-object v36, v12, v6

    .line 464
    .line 465
    aput-object v0, v12, v8

    .line 466
    .line 467
    aput-object v14, v12, v2

    .line 468
    .line 469
    aput-object v12, v1, v15

    .line 470
    .line 471
    new-array v12, v4, [Ljava/lang/Object;

    .line 472
    .line 473
    const-string v36, "400"

    .line 474
    .line 475
    aput-object v36, v12, v6

    .line 476
    .line 477
    aput-object v0, v12, v8

    .line 478
    .line 479
    aput-object v29, v12, v2

    .line 480
    .line 481
    aput-object v12, v1, v19

    .line 482
    .line 483
    new-array v12, v4, [Ljava/lang/Object;

    .line 484
    .line 485
    const-string v36, "401"

    .line 486
    .line 487
    aput-object v36, v12, v6

    .line 488
    .line 489
    aput-object v0, v12, v8

    .line 490
    .line 491
    aput-object v29, v12, v2

    .line 492
    .line 493
    aput-object v12, v1, v20

    .line 494
    .line 495
    new-array v12, v2, [Ljava/lang/Object;

    .line 496
    .line 497
    const-string v36, "402"

    .line 498
    .line 499
    aput-object v36, v12, v6

    .line 500
    .line 501
    aput-object v34, v12, v8

    .line 502
    .line 503
    aput-object v12, v1, v22

    .line 504
    .line 505
    new-array v12, v4, [Ljava/lang/Object;

    .line 506
    .line 507
    const-string v34, "403"

    .line 508
    .line 509
    aput-object v34, v12, v6

    .line 510
    .line 511
    aput-object v0, v12, v8

    .line 512
    .line 513
    aput-object v29, v12, v2

    .line 514
    .line 515
    aput-object v12, v1, v23

    .line 516
    .line 517
    new-array v12, v2, [Ljava/lang/Object;

    .line 518
    .line 519
    const-string v34, "410"

    .line 520
    .line 521
    aput-object v34, v12, v6

    .line 522
    .line 523
    aput-object v27, v12, v8

    .line 524
    .line 525
    aput-object v12, v1, v25

    .line 526
    .line 527
    new-array v12, v2, [Ljava/lang/Object;

    .line 528
    .line 529
    const-string v34, "411"

    .line 530
    .line 531
    aput-object v34, v12, v6

    .line 532
    .line 533
    aput-object v27, v12, v8

    .line 534
    .line 535
    aput-object v12, v1, v26

    .line 536
    .line 537
    new-array v12, v2, [Ljava/lang/Object;

    .line 538
    .line 539
    const-string v34, "412"

    .line 540
    .line 541
    aput-object v34, v12, v6

    .line 542
    .line 543
    aput-object v27, v12, v8

    .line 544
    .line 545
    aput-object v12, v1, v21

    .line 546
    .line 547
    new-array v12, v2, [Ljava/lang/Object;

    .line 548
    .line 549
    const-string v34, "413"

    .line 550
    .line 551
    aput-object v34, v12, v6

    .line 552
    .line 553
    aput-object v27, v12, v8

    .line 554
    .line 555
    const/16 v33, 0xe

    .line 556
    .line 557
    aput-object v12, v1, v33

    .line 558
    .line 559
    new-array v12, v2, [Ljava/lang/Object;

    .line 560
    .line 561
    const-string v34, "414"

    .line 562
    .line 563
    aput-object v34, v12, v6

    .line 564
    .line 565
    aput-object v27, v12, v8

    .line 566
    .line 567
    aput-object v12, v1, v30

    .line 568
    .line 569
    new-array v12, v4, [Ljava/lang/Object;

    .line 570
    .line 571
    const-string v34, "420"

    .line 572
    .line 573
    aput-object v34, v12, v6

    .line 574
    .line 575
    aput-object v0, v12, v8

    .line 576
    .line 577
    aput-object v14, v12, v2

    .line 578
    .line 579
    aput-object v12, v1, v32

    .line 580
    .line 581
    new-array v12, v4, [Ljava/lang/Object;

    .line 582
    .line 583
    const-string v34, "421"

    .line 584
    .line 585
    aput-object v34, v12, v6

    .line 586
    .line 587
    aput-object v0, v12, v8

    .line 588
    .line 589
    aput-object v31, v12, v2

    .line 590
    .line 591
    aput-object v12, v1, v9

    .line 592
    .line 593
    new-array v12, v2, [Ljava/lang/Object;

    .line 594
    .line 595
    const-string v34, "422"

    .line 596
    .line 597
    aput-object v34, v12, v6

    .line 598
    .line 599
    aput-object v11, v12, v8

    .line 600
    .line 601
    aput-object v12, v1, v5

    .line 602
    .line 603
    new-array v12, v4, [Ljava/lang/Object;

    .line 604
    .line 605
    const-string v34, "423"

    .line 606
    .line 607
    aput-object v34, v12, v6

    .line 608
    .line 609
    aput-object v0, v12, v8

    .line 610
    .line 611
    aput-object v31, v12, v2

    .line 612
    .line 613
    aput-object v12, v1, v35

    .line 614
    .line 615
    new-array v12, v2, [Ljava/lang/Object;

    .line 616
    .line 617
    const-string v34, "424"

    .line 618
    .line 619
    aput-object v34, v12, v6

    .line 620
    .line 621
    aput-object v11, v12, v8

    .line 622
    .line 623
    aput-object v12, v1, v13

    .line 624
    .line 625
    new-array v12, v2, [Ljava/lang/Object;

    .line 626
    .line 627
    const-string v34, "425"

    .line 628
    .line 629
    aput-object v34, v12, v6

    .line 630
    .line 631
    aput-object v11, v12, v8

    .line 632
    .line 633
    const/16 v34, 0x15

    .line 634
    .line 635
    aput-object v12, v1, v34

    .line 636
    .line 637
    new-array v12, v2, [Ljava/lang/Object;

    .line 638
    .line 639
    const-string v34, "426"

    .line 640
    .line 641
    aput-object v34, v12, v6

    .line 642
    .line 643
    aput-object v11, v12, v8

    .line 644
    .line 645
    const/16 v11, 0x16

    .line 646
    .line 647
    aput-object v12, v1, v11

    .line 648
    .line 649
    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 650
    .line 651
    const/16 v1, 0x39

    .line 652
    .line 653
    new-array v1, v1, [[Ljava/lang/Object;

    .line 654
    .line 655
    new-array v11, v2, [Ljava/lang/Object;

    .line 656
    .line 657
    const-string v12, "310"

    .line 658
    .line 659
    aput-object v12, v11, v6

    .line 660
    .line 661
    aput-object v16, v11, v8

    .line 662
    .line 663
    aput-object v11, v1, v6

    .line 664
    .line 665
    new-array v11, v2, [Ljava/lang/Object;

    .line 666
    .line 667
    const-string v12, "311"

    .line 668
    .line 669
    aput-object v12, v11, v6

    .line 670
    .line 671
    aput-object v16, v11, v8

    .line 672
    .line 673
    aput-object v11, v1, v8

    .line 674
    .line 675
    new-array v11, v2, [Ljava/lang/Object;

    .line 676
    .line 677
    const-string v12, "312"

    .line 678
    .line 679
    aput-object v12, v11, v6

    .line 680
    .line 681
    aput-object v16, v11, v8

    .line 682
    .line 683
    aput-object v11, v1, v2

    .line 684
    .line 685
    new-array v11, v2, [Ljava/lang/Object;

    .line 686
    .line 687
    const-string v12, "313"

    .line 688
    .line 689
    aput-object v12, v11, v6

    .line 690
    .line 691
    aput-object v16, v11, v8

    .line 692
    .line 693
    aput-object v11, v1, v4

    .line 694
    .line 695
    new-array v11, v2, [Ljava/lang/Object;

    .line 696
    .line 697
    const-string v12, "314"

    .line 698
    .line 699
    aput-object v12, v11, v6

    .line 700
    .line 701
    aput-object v16, v11, v8

    .line 702
    .line 703
    aput-object v11, v1, v17

    .line 704
    .line 705
    new-array v11, v2, [Ljava/lang/Object;

    .line 706
    .line 707
    const-string v12, "315"

    .line 708
    .line 709
    aput-object v12, v11, v6

    .line 710
    .line 711
    aput-object v16, v11, v8

    .line 712
    .line 713
    aput-object v11, v1, v18

    .line 714
    .line 715
    new-array v11, v2, [Ljava/lang/Object;

    .line 716
    .line 717
    const-string v12, "316"

    .line 718
    .line 719
    aput-object v12, v11, v6

    .line 720
    .line 721
    aput-object v16, v11, v8

    .line 722
    .line 723
    aput-object v11, v1, v15

    .line 724
    .line 725
    new-array v11, v2, [Ljava/lang/Object;

    .line 726
    .line 727
    const-string v12, "320"

    .line 728
    .line 729
    aput-object v12, v11, v6

    .line 730
    .line 731
    aput-object v16, v11, v8

    .line 732
    .line 733
    aput-object v11, v1, v19

    .line 734
    .line 735
    new-array v11, v2, [Ljava/lang/Object;

    .line 736
    .line 737
    const-string v12, "321"

    .line 738
    .line 739
    aput-object v12, v11, v6

    .line 740
    .line 741
    aput-object v16, v11, v8

    .line 742
    .line 743
    aput-object v11, v1, v20

    .line 744
    .line 745
    new-array v11, v2, [Ljava/lang/Object;

    .line 746
    .line 747
    const-string v12, "322"

    .line 748
    .line 749
    aput-object v12, v11, v6

    .line 750
    .line 751
    aput-object v16, v11, v8

    .line 752
    .line 753
    aput-object v11, v1, v22

    .line 754
    .line 755
    new-array v11, v2, [Ljava/lang/Object;

    .line 756
    .line 757
    const-string v12, "323"

    .line 758
    .line 759
    aput-object v12, v11, v6

    .line 760
    .line 761
    aput-object v16, v11, v8

    .line 762
    .line 763
    aput-object v11, v1, v23

    .line 764
    .line 765
    new-array v11, v2, [Ljava/lang/Object;

    .line 766
    .line 767
    const-string v12, "324"

    .line 768
    .line 769
    aput-object v12, v11, v6

    .line 770
    .line 771
    aput-object v16, v11, v8

    .line 772
    .line 773
    aput-object v11, v1, v25

    .line 774
    .line 775
    new-array v11, v2, [Ljava/lang/Object;

    .line 776
    .line 777
    const-string v12, "325"

    .line 778
    .line 779
    aput-object v12, v11, v6

    .line 780
    .line 781
    aput-object v16, v11, v8

    .line 782
    .line 783
    aput-object v11, v1, v26

    .line 784
    .line 785
    new-array v11, v2, [Ljava/lang/Object;

    .line 786
    .line 787
    const-string v12, "326"

    .line 788
    .line 789
    aput-object v12, v11, v6

    .line 790
    .line 791
    aput-object v16, v11, v8

    .line 792
    .line 793
    aput-object v11, v1, v21

    .line 794
    .line 795
    new-array v11, v2, [Ljava/lang/Object;

    .line 796
    .line 797
    const-string v12, "327"

    .line 798
    .line 799
    aput-object v12, v11, v6

    .line 800
    .line 801
    aput-object v16, v11, v8

    .line 802
    .line 803
    const/16 v12, 0xe

    .line 804
    .line 805
    aput-object v11, v1, v12

    .line 806
    .line 807
    new-array v11, v2, [Ljava/lang/Object;

    .line 808
    .line 809
    const-string v12, "328"

    .line 810
    .line 811
    aput-object v12, v11, v6

    .line 812
    .line 813
    aput-object v16, v11, v8

    .line 814
    .line 815
    aput-object v11, v1, v30

    .line 816
    .line 817
    new-array v11, v2, [Ljava/lang/Object;

    .line 818
    .line 819
    const-string v12, "329"

    .line 820
    .line 821
    aput-object v12, v11, v6

    .line 822
    .line 823
    aput-object v16, v11, v8

    .line 824
    .line 825
    aput-object v11, v1, v32

    .line 826
    .line 827
    new-array v11, v2, [Ljava/lang/Object;

    .line 828
    .line 829
    const-string v12, "330"

    .line 830
    .line 831
    aput-object v12, v11, v6

    .line 832
    .line 833
    aput-object v16, v11, v8

    .line 834
    .line 835
    aput-object v11, v1, v9

    .line 836
    .line 837
    new-array v11, v2, [Ljava/lang/Object;

    .line 838
    .line 839
    const-string v12, "331"

    .line 840
    .line 841
    aput-object v12, v11, v6

    .line 842
    .line 843
    aput-object v16, v11, v8

    .line 844
    .line 845
    aput-object v11, v1, v5

    .line 846
    .line 847
    new-array v5, v2, [Ljava/lang/Object;

    .line 848
    .line 849
    const-string v11, "332"

    .line 850
    .line 851
    aput-object v11, v5, v6

    .line 852
    .line 853
    aput-object v16, v5, v8

    .line 854
    .line 855
    aput-object v5, v1, v35

    .line 856
    .line 857
    new-array v5, v2, [Ljava/lang/Object;

    .line 858
    .line 859
    const-string v11, "333"

    .line 860
    .line 861
    aput-object v11, v5, v6

    .line 862
    .line 863
    aput-object v16, v5, v8

    .line 864
    .line 865
    aput-object v5, v1, v13

    .line 866
    .line 867
    new-array v5, v2, [Ljava/lang/Object;

    .line 868
    .line 869
    const-string v11, "334"

    .line 870
    .line 871
    aput-object v11, v5, v6

    .line 872
    .line 873
    aput-object v16, v5, v8

    .line 874
    .line 875
    const/16 v11, 0x15

    .line 876
    .line 877
    aput-object v5, v1, v11

    .line 878
    .line 879
    new-array v5, v2, [Ljava/lang/Object;

    .line 880
    .line 881
    const-string v11, "335"

    .line 882
    .line 883
    aput-object v11, v5, v6

    .line 884
    .line 885
    aput-object v16, v5, v8

    .line 886
    .line 887
    const/16 v11, 0x16

    .line 888
    .line 889
    aput-object v5, v1, v11

    .line 890
    .line 891
    new-array v5, v2, [Ljava/lang/Object;

    .line 892
    .line 893
    const-string v11, "336"

    .line 894
    .line 895
    aput-object v11, v5, v6

    .line 896
    .line 897
    aput-object v16, v5, v8

    .line 898
    .line 899
    const/16 v11, 0x17

    .line 900
    .line 901
    aput-object v5, v1, v11

    .line 902
    .line 903
    new-array v5, v2, [Ljava/lang/Object;

    .line 904
    .line 905
    const-string v11, "340"

    .line 906
    .line 907
    aput-object v11, v5, v6

    .line 908
    .line 909
    aput-object v16, v5, v8

    .line 910
    .line 911
    const/16 v11, 0x18

    .line 912
    .line 913
    aput-object v5, v1, v11

    .line 914
    .line 915
    new-array v5, v2, [Ljava/lang/Object;

    .line 916
    .line 917
    const-string v11, "341"

    .line 918
    .line 919
    aput-object v11, v5, v6

    .line 920
    .line 921
    aput-object v16, v5, v8

    .line 922
    .line 923
    const/16 v11, 0x19

    .line 924
    .line 925
    aput-object v5, v1, v11

    .line 926
    .line 927
    new-array v5, v2, [Ljava/lang/Object;

    .line 928
    .line 929
    const-string v11, "342"

    .line 930
    .line 931
    aput-object v11, v5, v6

    .line 932
    .line 933
    aput-object v16, v5, v8

    .line 934
    .line 935
    const/16 v11, 0x1a

    .line 936
    .line 937
    aput-object v5, v1, v11

    .line 938
    .line 939
    new-array v5, v2, [Ljava/lang/Object;

    .line 940
    .line 941
    const-string v11, "343"

    .line 942
    .line 943
    aput-object v11, v5, v6

    .line 944
    .line 945
    aput-object v16, v5, v8

    .line 946
    .line 947
    const/16 v11, 0x1b

    .line 948
    .line 949
    aput-object v5, v1, v11

    .line 950
    .line 951
    new-array v5, v2, [Ljava/lang/Object;

    .line 952
    .line 953
    const-string v11, "344"

    .line 954
    .line 955
    aput-object v11, v5, v6

    .line 956
    .line 957
    aput-object v16, v5, v8

    .line 958
    .line 959
    const/16 v11, 0x1c

    .line 960
    .line 961
    aput-object v5, v1, v11

    .line 962
    .line 963
    new-array v5, v2, [Ljava/lang/Object;

    .line 964
    .line 965
    const-string v11, "345"

    .line 966
    .line 967
    aput-object v11, v5, v6

    .line 968
    .line 969
    aput-object v16, v5, v8

    .line 970
    .line 971
    const/16 v11, 0x1d

    .line 972
    .line 973
    aput-object v5, v1, v11

    .line 974
    .line 975
    new-array v5, v2, [Ljava/lang/Object;

    .line 976
    .line 977
    const-string v11, "346"

    .line 978
    .line 979
    aput-object v11, v5, v6

    .line 980
    .line 981
    aput-object v16, v5, v8

    .line 982
    .line 983
    aput-object v5, v1, v28

    .line 984
    .line 985
    new-array v5, v2, [Ljava/lang/Object;

    .line 986
    .line 987
    const-string v11, "347"

    .line 988
    .line 989
    aput-object v11, v5, v6

    .line 990
    .line 991
    aput-object v16, v5, v8

    .line 992
    .line 993
    const/16 v11, 0x1f

    .line 994
    .line 995
    aput-object v5, v1, v11

    .line 996
    .line 997
    new-array v5, v2, [Ljava/lang/Object;

    .line 998
    .line 999
    const-string v11, "348"

    .line 1000
    .line 1001
    aput-object v11, v5, v6

    .line 1002
    .line 1003
    aput-object v16, v5, v8

    .line 1004
    .line 1005
    const/16 v11, 0x20

    .line 1006
    .line 1007
    aput-object v5, v1, v11

    .line 1008
    .line 1009
    new-array v5, v2, [Ljava/lang/Object;

    .line 1010
    .line 1011
    const-string v11, "349"

    .line 1012
    .line 1013
    aput-object v11, v5, v6

    .line 1014
    .line 1015
    aput-object v16, v5, v8

    .line 1016
    .line 1017
    const/16 v11, 0x21

    .line 1018
    .line 1019
    aput-object v5, v1, v11

    .line 1020
    .line 1021
    new-array v5, v2, [Ljava/lang/Object;

    .line 1022
    .line 1023
    const-string v11, "350"

    .line 1024
    .line 1025
    aput-object v11, v5, v6

    .line 1026
    .line 1027
    aput-object v16, v5, v8

    .line 1028
    .line 1029
    const/16 v11, 0x22

    .line 1030
    .line 1031
    aput-object v5, v1, v11

    .line 1032
    .line 1033
    new-array v5, v2, [Ljava/lang/Object;

    .line 1034
    .line 1035
    const-string v11, "351"

    .line 1036
    .line 1037
    aput-object v11, v5, v6

    .line 1038
    .line 1039
    aput-object v16, v5, v8

    .line 1040
    .line 1041
    const/16 v11, 0x23

    .line 1042
    .line 1043
    aput-object v5, v1, v11

    .line 1044
    .line 1045
    new-array v5, v2, [Ljava/lang/Object;

    .line 1046
    .line 1047
    const-string v11, "352"

    .line 1048
    .line 1049
    aput-object v11, v5, v6

    .line 1050
    .line 1051
    aput-object v16, v5, v8

    .line 1052
    .line 1053
    const/16 v11, 0x24

    .line 1054
    .line 1055
    aput-object v5, v1, v11

    .line 1056
    .line 1057
    new-array v5, v2, [Ljava/lang/Object;

    .line 1058
    .line 1059
    const-string v11, "353"

    .line 1060
    .line 1061
    aput-object v11, v5, v6

    .line 1062
    .line 1063
    aput-object v16, v5, v8

    .line 1064
    .line 1065
    const/16 v11, 0x25

    .line 1066
    .line 1067
    aput-object v5, v1, v11

    .line 1068
    .line 1069
    new-array v5, v2, [Ljava/lang/Object;

    .line 1070
    .line 1071
    const-string v11, "354"

    .line 1072
    .line 1073
    aput-object v11, v5, v6

    .line 1074
    .line 1075
    aput-object v16, v5, v8

    .line 1076
    .line 1077
    const/16 v11, 0x26

    .line 1078
    .line 1079
    aput-object v5, v1, v11

    .line 1080
    .line 1081
    new-array v5, v2, [Ljava/lang/Object;

    .line 1082
    .line 1083
    const-string v11, "355"

    .line 1084
    .line 1085
    aput-object v11, v5, v6

    .line 1086
    .line 1087
    aput-object v16, v5, v8

    .line 1088
    .line 1089
    const/16 v11, 0x27

    .line 1090
    .line 1091
    aput-object v5, v1, v11

    .line 1092
    .line 1093
    new-array v5, v2, [Ljava/lang/Object;

    .line 1094
    .line 1095
    const-string v11, "356"

    .line 1096
    .line 1097
    aput-object v11, v5, v6

    .line 1098
    .line 1099
    aput-object v16, v5, v8

    .line 1100
    .line 1101
    const/16 v11, 0x28

    .line 1102
    .line 1103
    aput-object v5, v1, v11

    .line 1104
    .line 1105
    new-array v5, v2, [Ljava/lang/Object;

    .line 1106
    .line 1107
    const-string v11, "357"

    .line 1108
    .line 1109
    aput-object v11, v5, v6

    .line 1110
    .line 1111
    aput-object v16, v5, v8

    .line 1112
    .line 1113
    const/16 v11, 0x29

    .line 1114
    .line 1115
    aput-object v5, v1, v11

    .line 1116
    .line 1117
    new-array v5, v2, [Ljava/lang/Object;

    .line 1118
    .line 1119
    const-string v11, "360"

    .line 1120
    .line 1121
    aput-object v11, v5, v6

    .line 1122
    .line 1123
    aput-object v16, v5, v8

    .line 1124
    .line 1125
    const/16 v11, 0x2a

    .line 1126
    .line 1127
    aput-object v5, v1, v11

    .line 1128
    .line 1129
    new-array v5, v2, [Ljava/lang/Object;

    .line 1130
    .line 1131
    const-string v11, "361"

    .line 1132
    .line 1133
    aput-object v11, v5, v6

    .line 1134
    .line 1135
    aput-object v16, v5, v8

    .line 1136
    .line 1137
    const/16 v11, 0x2b

    .line 1138
    .line 1139
    aput-object v5, v1, v11

    .line 1140
    .line 1141
    new-array v5, v2, [Ljava/lang/Object;

    .line 1142
    .line 1143
    const-string v11, "362"

    .line 1144
    .line 1145
    aput-object v11, v5, v6

    .line 1146
    .line 1147
    aput-object v16, v5, v8

    .line 1148
    .line 1149
    const/16 v11, 0x2c

    .line 1150
    .line 1151
    aput-object v5, v1, v11

    .line 1152
    .line 1153
    new-array v5, v2, [Ljava/lang/Object;

    .line 1154
    .line 1155
    const-string v11, "363"

    .line 1156
    .line 1157
    aput-object v11, v5, v6

    .line 1158
    .line 1159
    aput-object v16, v5, v8

    .line 1160
    .line 1161
    const/16 v11, 0x2d

    .line 1162
    .line 1163
    aput-object v5, v1, v11

    .line 1164
    .line 1165
    new-array v5, v2, [Ljava/lang/Object;

    .line 1166
    .line 1167
    const-string v11, "364"

    .line 1168
    .line 1169
    aput-object v11, v5, v6

    .line 1170
    .line 1171
    aput-object v16, v5, v8

    .line 1172
    .line 1173
    const/16 v11, 0x2e

    .line 1174
    .line 1175
    aput-object v5, v1, v11

    .line 1176
    .line 1177
    new-array v5, v2, [Ljava/lang/Object;

    .line 1178
    .line 1179
    const-string v11, "365"

    .line 1180
    .line 1181
    aput-object v11, v5, v6

    .line 1182
    .line 1183
    aput-object v16, v5, v8

    .line 1184
    .line 1185
    const/16 v11, 0x2f

    .line 1186
    .line 1187
    aput-object v5, v1, v11

    .line 1188
    .line 1189
    new-array v5, v2, [Ljava/lang/Object;

    .line 1190
    .line 1191
    const-string v11, "366"

    .line 1192
    .line 1193
    aput-object v11, v5, v6

    .line 1194
    .line 1195
    aput-object v16, v5, v8

    .line 1196
    .line 1197
    const/16 v11, 0x30

    .line 1198
    .line 1199
    aput-object v5, v1, v11

    .line 1200
    .line 1201
    new-array v5, v2, [Ljava/lang/Object;

    .line 1202
    .line 1203
    const-string v11, "367"

    .line 1204
    .line 1205
    aput-object v11, v5, v6

    .line 1206
    .line 1207
    aput-object v16, v5, v8

    .line 1208
    .line 1209
    const/16 v11, 0x31

    .line 1210
    .line 1211
    aput-object v5, v1, v11

    .line 1212
    .line 1213
    new-array v5, v2, [Ljava/lang/Object;

    .line 1214
    .line 1215
    const-string v11, "368"

    .line 1216
    .line 1217
    aput-object v11, v5, v6

    .line 1218
    .line 1219
    aput-object v16, v5, v8

    .line 1220
    .line 1221
    const/16 v11, 0x32

    .line 1222
    .line 1223
    aput-object v5, v1, v11

    .line 1224
    .line 1225
    new-array v5, v2, [Ljava/lang/Object;

    .line 1226
    .line 1227
    const-string v11, "369"

    .line 1228
    .line 1229
    aput-object v11, v5, v6

    .line 1230
    .line 1231
    aput-object v16, v5, v8

    .line 1232
    .line 1233
    const/16 v11, 0x33

    .line 1234
    .line 1235
    aput-object v5, v1, v11

    .line 1236
    .line 1237
    new-array v5, v4, [Ljava/lang/Object;

    .line 1238
    .line 1239
    const-string v11, "390"

    .line 1240
    .line 1241
    aput-object v11, v5, v6

    .line 1242
    .line 1243
    aput-object v0, v5, v8

    .line 1244
    .line 1245
    aput-object v31, v5, v2

    .line 1246
    .line 1247
    const/16 v11, 0x34

    .line 1248
    .line 1249
    aput-object v5, v1, v11

    .line 1250
    .line 1251
    new-array v5, v4, [Ljava/lang/Object;

    .line 1252
    .line 1253
    const-string v11, "391"

    .line 1254
    .line 1255
    aput-object v11, v5, v6

    .line 1256
    .line 1257
    aput-object v0, v5, v8

    .line 1258
    .line 1259
    aput-object v7, v5, v2

    .line 1260
    .line 1261
    const/16 v11, 0x35

    .line 1262
    .line 1263
    aput-object v5, v1, v11

    .line 1264
    .line 1265
    new-array v5, v4, [Ljava/lang/Object;

    .line 1266
    .line 1267
    const-string v11, "392"

    .line 1268
    .line 1269
    aput-object v11, v5, v6

    .line 1270
    .line 1271
    aput-object v0, v5, v8

    .line 1272
    .line 1273
    aput-object v31, v5, v2

    .line 1274
    .line 1275
    const/16 v11, 0x36

    .line 1276
    .line 1277
    aput-object v5, v1, v11

    .line 1278
    .line 1279
    new-array v5, v4, [Ljava/lang/Object;

    .line 1280
    .line 1281
    const-string v11, "393"

    .line 1282
    .line 1283
    aput-object v11, v5, v6

    .line 1284
    .line 1285
    aput-object v0, v5, v8

    .line 1286
    .line 1287
    aput-object v7, v5, v2

    .line 1288
    .line 1289
    const/16 v11, 0x37

    .line 1290
    .line 1291
    aput-object v5, v1, v11

    .line 1292
    .line 1293
    new-array v5, v4, [Ljava/lang/Object;

    .line 1294
    .line 1295
    const-string v11, "703"

    .line 1296
    .line 1297
    aput-object v11, v5, v6

    .line 1298
    .line 1299
    aput-object v0, v5, v8

    .line 1300
    .line 1301
    aput-object v29, v5, v2

    .line 1302
    .line 1303
    const/16 v11, 0x38

    .line 1304
    .line 1305
    aput-object v5, v1, v11

    .line 1306
    .line 1307
    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 1308
    .line 1309
    new-array v1, v9, [[Ljava/lang/Object;

    .line 1310
    .line 1311
    new-array v5, v2, [Ljava/lang/Object;

    .line 1312
    .line 1313
    const-string v9, "7001"

    .line 1314
    .line 1315
    aput-object v9, v5, v6

    .line 1316
    .line 1317
    aput-object v27, v5, v8

    .line 1318
    .line 1319
    aput-object v5, v1, v6

    .line 1320
    .line 1321
    new-array v5, v4, [Ljava/lang/Object;

    .line 1322
    .line 1323
    const-string v9, "7002"

    .line 1324
    .line 1325
    aput-object v9, v5, v6

    .line 1326
    .line 1327
    aput-object v0, v5, v8

    .line 1328
    .line 1329
    aput-object v29, v5, v2

    .line 1330
    .line 1331
    aput-object v5, v1, v8

    .line 1332
    .line 1333
    new-array v5, v2, [Ljava/lang/Object;

    .line 1334
    .line 1335
    const-string v9, "7003"

    .line 1336
    .line 1337
    aput-object v9, v5, v6

    .line 1338
    .line 1339
    aput-object v24, v5, v8

    .line 1340
    .line 1341
    aput-object v5, v1, v2

    .line 1342
    .line 1343
    new-array v5, v2, [Ljava/lang/Object;

    .line 1344
    .line 1345
    const-string v9, "8001"

    .line 1346
    .line 1347
    aput-object v9, v5, v6

    .line 1348
    .line 1349
    aput-object v10, v5, v8

    .line 1350
    .line 1351
    aput-object v5, v1, v4

    .line 1352
    .line 1353
    new-array v5, v4, [Ljava/lang/Object;

    .line 1354
    .line 1355
    const-string v9, "8002"

    .line 1356
    .line 1357
    aput-object v9, v5, v6

    .line 1358
    .line 1359
    aput-object v0, v5, v8

    .line 1360
    .line 1361
    aput-object v14, v5, v2

    .line 1362
    .line 1363
    aput-object v5, v1, v17

    .line 1364
    .line 1365
    new-array v5, v4, [Ljava/lang/Object;

    .line 1366
    .line 1367
    const-string v9, "8003"

    .line 1368
    .line 1369
    aput-object v9, v5, v6

    .line 1370
    .line 1371
    aput-object v0, v5, v8

    .line 1372
    .line 1373
    aput-object v29, v5, v2

    .line 1374
    .line 1375
    aput-object v5, v1, v18

    .line 1376
    .line 1377
    new-array v5, v4, [Ljava/lang/Object;

    .line 1378
    .line 1379
    const-string v9, "8004"

    .line 1380
    .line 1381
    aput-object v9, v5, v6

    .line 1382
    .line 1383
    aput-object v0, v5, v8

    .line 1384
    .line 1385
    aput-object v29, v5, v2

    .line 1386
    .line 1387
    aput-object v5, v1, v15

    .line 1388
    .line 1389
    new-array v5, v2, [Ljava/lang/Object;

    .line 1390
    .line 1391
    const-string v9, "8005"

    .line 1392
    .line 1393
    aput-object v9, v5, v6

    .line 1394
    .line 1395
    aput-object v16, v5, v8

    .line 1396
    .line 1397
    aput-object v5, v1, v19

    .line 1398
    .line 1399
    new-array v5, v2, [Ljava/lang/Object;

    .line 1400
    .line 1401
    const-string v9, "8006"

    .line 1402
    .line 1403
    aput-object v9, v5, v6

    .line 1404
    .line 1405
    aput-object v7, v5, v8

    .line 1406
    .line 1407
    aput-object v5, v1, v20

    .line 1408
    .line 1409
    new-array v5, v4, [Ljava/lang/Object;

    .line 1410
    .line 1411
    const-string v9, "8007"

    .line 1412
    .line 1413
    aput-object v9, v5, v6

    .line 1414
    .line 1415
    aput-object v0, v5, v8

    .line 1416
    .line 1417
    aput-object v29, v5, v2

    .line 1418
    .line 1419
    aput-object v5, v1, v22

    .line 1420
    .line 1421
    new-array v5, v4, [Ljava/lang/Object;

    .line 1422
    .line 1423
    const-string v9, "8008"

    .line 1424
    .line 1425
    aput-object v9, v5, v6

    .line 1426
    .line 1427
    aput-object v0, v5, v8

    .line 1428
    .line 1429
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v9

    .line 1433
    aput-object v9, v5, v2

    .line 1434
    .line 1435
    aput-object v5, v1, v23

    .line 1436
    .line 1437
    new-array v5, v2, [Ljava/lang/Object;

    .line 1438
    .line 1439
    const-string v9, "8018"

    .line 1440
    .line 1441
    aput-object v9, v5, v6

    .line 1442
    .line 1443
    aput-object v7, v5, v8

    .line 1444
    .line 1445
    aput-object v5, v1, v25

    .line 1446
    .line 1447
    new-array v5, v4, [Ljava/lang/Object;

    .line 1448
    .line 1449
    const-string v7, "8020"

    .line 1450
    .line 1451
    aput-object v7, v5, v6

    .line 1452
    .line 1453
    aput-object v0, v5, v8

    .line 1454
    .line 1455
    const/16 v7, 0x19

    .line 1456
    .line 1457
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v7

    .line 1461
    aput-object v7, v5, v2

    .line 1462
    .line 1463
    aput-object v5, v1, v26

    .line 1464
    .line 1465
    new-array v5, v2, [Ljava/lang/Object;

    .line 1466
    .line 1467
    const-string v7, "8100"

    .line 1468
    .line 1469
    aput-object v7, v5, v6

    .line 1470
    .line 1471
    aput-object v16, v5, v8

    .line 1472
    .line 1473
    aput-object v5, v1, v21

    .line 1474
    .line 1475
    new-array v5, v2, [Ljava/lang/Object;

    .line 1476
    .line 1477
    const-string v7, "8101"

    .line 1478
    .line 1479
    aput-object v7, v5, v6

    .line 1480
    .line 1481
    aput-object v24, v5, v8

    .line 1482
    .line 1483
    const/16 v7, 0xe

    .line 1484
    .line 1485
    aput-object v5, v1, v7

    .line 1486
    .line 1487
    new-array v5, v2, [Ljava/lang/Object;

    .line 1488
    .line 1489
    const-string v7, "8102"

    .line 1490
    .line 1491
    aput-object v7, v5, v6

    .line 1492
    .line 1493
    aput-object v3, v5, v8

    .line 1494
    .line 1495
    aput-object v5, v1, v30

    .line 1496
    .line 1497
    new-array v3, v4, [Ljava/lang/Object;

    .line 1498
    .line 1499
    const-string v4, "8110"

    .line 1500
    .line 1501
    aput-object v4, v3, v6

    .line 1502
    .line 1503
    aput-object v0, v3, v8

    .line 1504
    .line 1505
    aput-object v29, v3, v2

    .line 1506
    .line 1507
    aput-object v3, v1, v32

    .line 1508
    .line 1509
    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 1510
    .line 1511
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-lt v0, v1, :cond_f

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    const/4 v6, 0x1

    .line 26
    if-ge v5, v4, :cond_3

    .line 27
    .line 28
    aget-object v7, v3, v5

    .line 29
    .line 30
    aget-object v8, v7, v0

    .line 31
    .line 32
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_2

    .line 37
    .line 38
    aget-object v0, v7, v6

    .line 39
    .line 40
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    aget-object v0, v7, v1

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x3

    .line 76
    if-lt v2, v3, :cond_e

    .line 77
    .line 78
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 83
    .line 84
    array-length v5, v4

    .line 85
    const/4 v7, 0x0

    .line 86
    :goto_1
    if-ge v7, v5, :cond_6

    .line 87
    .line 88
    aget-object v8, v4, v7

    .line 89
    .line 90
    aget-object v9, v8, v0

    .line 91
    .line 92
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    aget-object v0, v8, v6

    .line 99
    .line 100
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 101
    .line 102
    if-ne v0, v2, :cond_4

    .line 103
    .line 104
    aget-object v0, v8, v1

    .line 105
    .line 106
    check-cast v0, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 132
    .line 133
    array-length v4, v3

    .line 134
    const/4 v5, 0x0

    .line 135
    :goto_2
    const/4 v7, 0x4

    .line 136
    if-ge v5, v4, :cond_9

    .line 137
    .line 138
    aget-object v8, v3, v5

    .line 139
    .line 140
    aget-object v9, v8, v0

    .line 141
    .line 142
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_8

    .line 147
    .line 148
    aget-object v0, v8, v6

    .line 149
    .line 150
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 151
    .line 152
    if-ne v0, v2, :cond_7

    .line 153
    .line 154
    aget-object v0, v8, v1

    .line 155
    .line 156
    check-cast v0, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-lt v2, v7, :cond_d

    .line 186
    .line 187
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 192
    .line 193
    array-length v4, v3

    .line 194
    const/4 v5, 0x0

    .line 195
    :goto_3
    if-ge v5, v4, :cond_c

    .line 196
    .line 197
    aget-object v8, v3, v5

    .line 198
    .line 199
    aget-object v9, v8, v0

    .line 200
    .line 201
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_b

    .line 206
    .line 207
    aget-object v0, v8, v6

    .line 208
    .line 209
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 210
    .line 211
    if-ne v0, v2, :cond_a

    .line 212
    .line 213
    aget-object v0, v8, v1

    .line 214
    .line 215
    check-cast v0, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :cond_a
    check-cast v0, Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0

    .line 237
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    throw p0

    .line 245
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    throw p0

    .line 250
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    throw p0

    .line 255
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr p1, p0

    .line 17
    if-lt v1, p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x28

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x29

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :goto_0
    return-object p0

    .line 75
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    throw p0

    .line 80
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, p0

    .line 11
    if-ge v1, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x28

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x29

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_0
    return-object p0
.end method
