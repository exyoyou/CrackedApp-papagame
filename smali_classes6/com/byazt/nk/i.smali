.class public Lcom/byazt/nk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0x2a
    }
.end annotation


# direct methods
.method public static c(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Lcom/byazt/aq/da;Lcom/byazt/xl/u;)Lcom/byazt/nk/sp;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1d

    .line 3
    .line 4
    if-eqz p1, :cond_1d

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->aw()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {p4}, Lcom/byazt/xl/u;->yv()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, -0x1

    .line 27
    sparse-switch v6, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string v6, "29"

    .line 33
    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    const/16 v8, 0x15

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string v6, "25"

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_2
    const/16 v8, 0x14

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_2
    const-string v6, "24"

    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    const/16 v8, 0x13

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :sswitch_3
    const-string v6, "23"

    .line 75
    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_4

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    const/16 v8, 0x12

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_4
    const-string v6, "22"

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    const/16 v8, 0x11

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :sswitch_5
    const-string v6, "20"

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_6

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_6
    const/16 v8, 0x10

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :sswitch_6
    const-string v6, "18"

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-nez v6, :cond_7

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_7
    const/16 v8, 0xf

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :sswitch_7
    const-string v6, "17"

    .line 131
    .line 132
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-nez v6, :cond_8

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_8
    const/16 v8, 0xe

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :sswitch_8
    const-string v6, "16"

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_9

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_9
    const/16 v8, 0xd

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_9
    const-string v6, "14"

    .line 159
    .line 160
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_a

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_a
    const/16 v8, 0xc

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :sswitch_a
    const-string v6, "13"

    .line 173
    .line 174
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_b

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_b
    const/16 v8, 0xb

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :sswitch_b
    const-string v6, "12"

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_c

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_c
    const/16 v8, 0xa

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_c
    const-string v6, "11"

    .line 201
    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_d

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_d
    const/16 v8, 0x9

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :sswitch_d
    const-string v6, "10"

    .line 215
    .line 216
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_e

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_e
    const/16 v8, 0x8

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :sswitch_e
    const-string v6, "9"

    .line 229
    .line 230
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-nez v6, :cond_f

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_f
    const/4 v8, 0x7

    .line 238
    goto :goto_0

    .line 239
    :sswitch_f
    const-string v6, "8"

    .line 240
    .line 241
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_10

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_10
    const/4 v8, 0x6

    .line 249
    goto :goto_0

    .line 250
    :sswitch_10
    const-string v6, "7"

    .line 251
    .line 252
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_11

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_11
    const/4 v8, 0x5

    .line 260
    goto :goto_0

    .line 261
    :sswitch_11
    const-string v6, "6"

    .line 262
    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-nez v6, :cond_12

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_12
    const/4 v8, 0x4

    .line 271
    goto :goto_0

    .line 272
    :sswitch_12
    const-string v6, "5"

    .line 273
    .line 274
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-nez v6, :cond_13

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_13
    const/4 v8, 0x3

    .line 282
    goto :goto_0

    .line 283
    :sswitch_13
    const-string v6, "2"

    .line 284
    .line 285
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-nez v6, :cond_14

    .line 290
    .line 291
    goto :goto_0

    .line 292
    :cond_14
    const/4 v8, 0x2

    .line 293
    goto :goto_0

    .line 294
    :sswitch_14
    const-string v6, "1"

    .line 295
    .line 296
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-nez v6, :cond_15

    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_15
    const/4 v8, 0x1

    .line 304
    goto :goto_0

    .line 305
    :sswitch_15
    const-string v6, "0"

    .line 306
    .line 307
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-nez v6, :cond_16

    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_16
    const/4 v8, 0x0

    .line 315
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 316
    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :pswitch_0
    new-instance v7, Lcom/byazt/nk/a;

    .line 321
    .line 322
    invoke-virtual {p4}, Lcom/byazt/xl/u;->i()Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    invoke-virtual {p4}, Lcom/byazt/xl/u;->md()I

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    move-object v0, v7

    .line 331
    move-object v1, p0

    .line 332
    move-object v2, p1

    .line 333
    move-object v3, p2

    .line 334
    move-object v4, p3

    .line 335
    invoke-direct/range {v0 .. v6}, Lcom/byazt/nk/a;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Lcom/byazt/aq/da;ZI)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_1
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_1d

    .line 345
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v4, "static/lotties/gesture-slide.json"

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance v6, Lcom/byazt/nk/da;

    .line 364
    .line 365
    const-string v5, "25"

    .line 366
    .line 367
    move-object v0, v6

    .line 368
    move-object v1, p0

    .line 369
    move-object v2, p1

    .line 370
    move-object v3, p2

    .line 371
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_2
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_17

    .line 381
    .line 382
    new-instance v0, Lcom/byazt/nk/c;

    .line 383
    .line 384
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/c;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :cond_17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-nez v4, :cond_18

    .line 394
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v4, "swiper_up_star.json"

    .line 404
    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :cond_18
    move-object v4, v0

    .line 413
    new-instance v6, Lcom/byazt/nk/da;

    .line 414
    .line 415
    const-string v5, "24"

    .line 416
    .line 417
    move-object v0, v6

    .line 418
    move-object v1, p0

    .line 419
    move-object v2, p1

    .line 420
    move-object v3, p2

    .line 421
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_3
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-eqz v4, :cond_1d

    .line 431
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v4, "static/lotties/202327swiper-up-star/click.json"

    .line 441
    .line 442
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    new-instance v6, Lcom/byazt/nk/da;

    .line 450
    .line 451
    const-string v5, "23"

    .line 452
    .line 453
    move-object v0, v6

    .line 454
    move-object v1, p0

    .line 455
    move-object v2, p1

    .line 456
    move-object v3, p2

    .line 457
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_4
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_19

    .line 467
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v4, "static/lotties/202327swiper-up-star/index.json"

    .line 477
    .line 478
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    new-instance v6, Lcom/byazt/nk/da;

    .line 486
    .line 487
    const-string v5, "22"

    .line 488
    .line 489
    move-object v0, v6

    .line 490
    move-object v1, p0

    .line 491
    move-object v2, p1

    .line 492
    move-object v3, p2

    .line 493
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_1

    .line 497
    .line 498
    :cond_19
    new-instance v0, Lcom/byazt/nk/rh;

    .line 499
    .line 500
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/rh;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :pswitch_5
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-eqz v4, :cond_1a

    .line 510
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v4, "static/lotties/glass-swipe/glass-swipe.json"

    .line 520
    .line 521
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    new-instance v6, Lcom/byazt/nk/da;

    .line 529
    .line 530
    const-string v5, "20"

    .line 531
    .line 532
    move-object v0, v6

    .line 533
    move-object v1, p0

    .line 534
    move-object v2, p1

    .line 535
    move-object v3, p2

    .line 536
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :cond_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    if-nez v4, :cond_1b

    .line 546
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v4, "brush_mask.json"

    .line 556
    .line 557
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    :cond_1b
    move-object v4, v0

    .line 565
    new-instance v6, Lcom/byazt/nk/da;

    .line 566
    .line 567
    const-string v5, "20"

    .line 568
    .line 569
    move-object v0, v6

    .line 570
    move-object v1, p0

    .line 571
    move-object v2, p1

    .line 572
    move-object v3, p2

    .line 573
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nk/da;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    goto/16 :goto_1

    .line 577
    .line 578
    :pswitch_6
    new-instance v8, Lcom/byazt/nk/my;

    .line 579
    .line 580
    invoke-virtual {p4}, Lcom/byazt/xl/u;->i()Z

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    invoke-virtual {p4}, Lcom/byazt/xl/u;->md()I

    .line 585
    .line 586
    .line 587
    move-result v7

    .line 588
    move-object v0, v8

    .line 589
    move-object v1, p0

    .line 590
    move-object v2, p1

    .line 591
    move-object v3, p2

    .line 592
    move-object v5, p3

    .line 593
    invoke-direct/range {v0 .. v7}, Lcom/byazt/nk/my;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Lcom/byazt/aq/da;ZI)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_1

    .line 597
    .line 598
    :pswitch_7
    new-instance v0, Lcom/byazt/nk/nu;

    .line 599
    .line 600
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/nu;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 601
    .line 602
    .line 603
    goto :goto_1

    .line 604
    :pswitch_8
    new-instance v0, Lcom/byazt/nk/m;

    .line 605
    .line 606
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/m;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 607
    .line 608
    .line 609
    goto :goto_1

    .line 610
    :pswitch_9
    new-instance v0, Lcom/byazt/nk/uj;

    .line 611
    .line 612
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/uj;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 613
    .line 614
    .line 615
    goto :goto_1

    .line 616
    :pswitch_a
    new-instance v8, Lcom/byazt/nk/yp;

    .line 617
    .line 618
    invoke-virtual {p4}, Lcom/byazt/xl/u;->i()Z

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    invoke-virtual {p4}, Lcom/byazt/xl/u;->md()I

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    move-object v0, v8

    .line 627
    move-object v1, p0

    .line 628
    move-object v2, p1

    .line 629
    move-object v3, p2

    .line 630
    move-object v5, p3

    .line 631
    invoke-direct/range {v0 .. v7}, Lcom/byazt/nk/yp;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;Ljava/lang/String;Lcom/byazt/aq/da;ZI)V

    .line 632
    .line 633
    .line 634
    goto :goto_1

    .line 635
    :pswitch_b
    new-instance v0, Lcom/byazt/nk/t;

    .line 636
    .line 637
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/t;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 638
    .line 639
    .line 640
    goto :goto_1

    .line 641
    :pswitch_c
    new-instance v0, Lcom/byazt/nk/sl;

    .line 642
    .line 643
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/sl;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 644
    .line 645
    .line 646
    goto :goto_1

    .line 647
    :pswitch_d
    new-instance v0, Lcom/byazt/nk/u;

    .line 648
    .line 649
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/u;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 650
    .line 651
    .line 652
    goto :goto_1

    .line 653
    :pswitch_e
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->hd()I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-ne v0, v7, :cond_1c

    .line 658
    .line 659
    new-instance v0, Lcom/byazt/nk/nu;

    .line 660
    .line 661
    invoke-virtual {p2}, Lcom/byazt/aq/sp;->kk()I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    invoke-direct {v0, p0, p1, p2, v4}, Lcom/byazt/nk/nu;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;I)V

    .line 666
    .line 667
    .line 668
    goto :goto_1

    .line 669
    :cond_1c
    new-instance v0, Lcom/byazt/nk/m;

    .line 670
    .line 671
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/m;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 672
    .line 673
    .line 674
    goto :goto_1

    .line 675
    :pswitch_f
    new-instance v0, Lcom/byazt/nk/tt;

    .line 676
    .line 677
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/tt;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 678
    .line 679
    .line 680
    goto :goto_1

    .line 681
    :pswitch_10
    new-instance v0, Lcom/byazt/nk/ve;

    .line 682
    .line 683
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/ve;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 684
    .line 685
    .line 686
    goto :goto_1

    .line 687
    :pswitch_11
    new-instance v0, Lcom/byazt/nk/n;

    .line 688
    .line 689
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nk/n;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicBaseWidget;Lcom/byazt/aq/sp;)V

    .line 690
    .line 691
    .line 692
    :cond_1d
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_15
        0x31 -> :sswitch_14
        0x32 -> :sswitch_13
        0x35 -> :sswitch_12
        0x36 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_f
        0x39 -> :sswitch_e
        0x61f -> :sswitch_d
        0x620 -> :sswitch_c
        0x621 -> :sswitch_b
        0x622 -> :sswitch_a
        0x623 -> :sswitch_9
        0x625 -> :sswitch_8
        0x626 -> :sswitch_7
        0x627 -> :sswitch_6
        0x63e -> :sswitch_5
        0x640 -> :sswitch_4
        0x641 -> :sswitch_3
        0x642 -> :sswitch_2
        0x643 -> :sswitch_1
        0x647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
