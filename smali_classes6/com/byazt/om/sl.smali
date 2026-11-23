.class public Lcom/byazt/om/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x9e
    }
.end annotation


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


# virtual methods
.method public c(Lcom/byazt/om/c$c;)V
    .locals 32

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v15

    .line 9
    invoke-virtual {v15}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v15}, Lcom/byazt/ll/tt;->tk()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v15}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "V2 \u516c\u5171\u7f13\u5b58\u6c60\u5e7f\u544a\u8bf7\u6c42......"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v14, "TTMediationSDK"

    .line 44
    .line 45
    invoke-static {v14, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object/from16 v18, v1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object/from16 v18, v17

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yv()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    xor-int/lit8 v19, v1, 0x1

    .line 74
    .line 75
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/byazt/qe/ve;->x()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-static {}, Lcom/byazt/vy/c;->c()Lcom/byazt/vy/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v15}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    if-eqz v13, :cond_5

    .line 94
    .line 95
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/byazt/ix/sp;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-wide/16 v4, 0x0

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v6, v2, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-boolean v9, v2, Lcom/byazt/nbs/i;->n:Z

    .line 131
    .line 132
    const/4 v10, 0x0

    .line 133
    move-object v2, v15

    .line 134
    move/from16 v7, v19

    .line 135
    .line 136
    invoke-static/range {v1 .. v10}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/lit8 v1, v1, -0x1

    .line 144
    .line 145
    move v12, v1

    .line 146
    move-object/from16 v1, v17

    .line 147
    .line 148
    :goto_1
    if-ltz v12, :cond_4

    .line 149
    .line 150
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/byazt/ix/sp;

    .line 155
    .line 156
    iget-object v10, v2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->a()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v10, v3}, Lcom/byazt/yl/ve;->setOriginPrimeRit(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_1

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    goto :goto_2

    .line 180
    :cond_1
    move-object/from16 v3, v17

    .line 181
    .line 182
    :goto_2
    invoke-virtual {v10, v3}, Lcom/byazt/yl/ve;->setOriginLinkId(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    if-nez v12, :cond_2

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->a()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :cond_2
    move-object/from16 v20, v1

    .line 192
    .line 193
    new-instance v11, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->a()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v15, v1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->a()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v15}, Lcom/byazt/ll/tt;->my()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const/16 v5, 0x66

    .line 221
    .line 222
    invoke-virtual {v1, v3, v4, v5}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v10}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v1, v3}, Lcom/byazt/nbs/tt;->a(Ljava/lang/String;)Lcom/byazt/nbs/da;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v10}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v3, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    const/4 v4, 0x1

    .line 247
    const/4 v5, 0x1

    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x3

    .line 250
    const/4 v8, 0x3

    .line 251
    const/4 v9, 0x0

    .line 252
    const-wide/16 v21, -0x1

    .line 253
    .line 254
    const/16 v16, 0x0

    .line 255
    .line 256
    const/16 v23, 0x0

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    .line 259
    .line 260
    .line 261
    move-result-object v24

    .line 262
    if-eqz v24, :cond_3

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    move-object/from16 v24, v2

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_3
    move-object/from16 v24, v17

    .line 276
    .line 277
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 278
    .line 279
    .line 280
    move-result-wide v25

    .line 281
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 282
    .line 283
    .line 284
    move-result-wide v27

    .line 285
    sub-long v25, v25, v27

    .line 286
    .line 287
    move-object v2, v15

    .line 288
    move-object/from16 v29, v10

    .line 289
    .line 290
    move-object/from16 v30, v11

    .line 291
    .line 292
    move-wide/from16 v10, v21

    .line 293
    .line 294
    move/from16 v21, v12

    .line 295
    .line 296
    move/from16 v12, v16

    .line 297
    .line 298
    move-object/from16 v22, v13

    .line 299
    .line 300
    move/from16 v13, v23

    .line 301
    .line 302
    move-object/from16 v31, v14

    .line 303
    .line 304
    move-object/from16 v14, v24

    .line 305
    .line 306
    move-object/from16 p1, v15

    .line 307
    .line 308
    move-wide/from16 v15, v25

    .line 309
    .line 310
    invoke-static/range {v1 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZLjava/lang/String;J)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    move-object/from16 v15, v29

    .line 318
    .line 319
    invoke-virtual {v0, v15}, Lcom/byazt/iz/tt;->c(Lcom/byazt/yl/ve;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 324
    .line 325
    .line 326
    move-result-wide v3

    .line 327
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v1, v30

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    const-string v3, "adn cache\u547d\u4e2d"

    .line 337
    .line 338
    const-wide/16 v4, 0x0

    .line 339
    .line 340
    const/4 v7, 0x0

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    const/4 v9, 0x2

    .line 346
    const/4 v10, 0x0

    .line 347
    const-wide/16 v11, 0x0

    .line 348
    .line 349
    const-wide/16 v13, -0x1

    .line 350
    .line 351
    move-object v1, v15

    .line 352
    move-object/from16 v6, p1

    .line 353
    .line 354
    invoke-static/range {v1 .. v14}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v15}, Lcom/byazt/iz/tt;->tt(Lcom/byazt/yl/ve;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    .line 366
    .line 367
    .line 368
    move-result-wide v3

    .line 369
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 370
    .line 371
    .line 372
    add-int/lit8 v12, v21, -0x1

    .line 373
    .line 374
    move-object/from16 v15, p1

    .line 375
    .line 376
    move-object/from16 v1, v20

    .line 377
    .line 378
    move-object/from16 v13, v22

    .line 379
    .line 380
    move-object/from16 v14, v31

    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_4
    move-object/from16 v31, v14

    .line 385
    .line 386
    move-object v2, v15

    .line 387
    invoke-static {v2, v1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v3, "V2 resetAdLinkInfo......"

    .line 407
    .line 408
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    move-object/from16 v3, v31

    .line 416
    .line 417
    invoke-static {v3, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iget-object v4, v1, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 425
    .line 426
    const/4 v5, 0x0

    .line 427
    const/4 v6, 0x0

    .line 428
    move-object v1, v2

    .line 429
    move-object/from16 v2, v18

    .line 430
    .line 431
    move/from16 v3, v19

    .line 432
    .line 433
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->x()V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_5
    move-object v2, v15

    .line 441
    const-string v1, "-1"

    .line 442
    .line 443
    invoke-static {v2, v1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v7, Lcom/byazt/bnd/c;

    .line 447
    .line 448
    const v1, 0xa030

    .line 449
    .line 450
    .line 451
    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-direct {v7, v1, v3}, Lcom/byazt/bnd/c;-><init>(ILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iget-object v4, v1, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 463
    .line 464
    iget v5, v7, Lcom/byazt/pp/c;->c:I

    .line 465
    .line 466
    const/4 v6, 0x0

    .line 467
    move-object v1, v2

    .line 468
    move-object/from16 v2, v18

    .line 469
    .line 470
    move/from16 v3, v19

    .line 471
    .line 472
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v7}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_6
    move-object v2, v15

    .line 480
    const-string v1, "-2"

    .line 481
    .line 482
    invoke-static {v2, v1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v7, Lcom/byazt/bnd/c;

    .line 486
    .line 487
    const v1, 0xa02f

    .line 488
    .line 489
    .line 490
    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-direct {v7, v1, v3}, Lcom/byazt/bnd/c;-><init>(ILjava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iget-object v4, v1, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 502
    .line 503
    iget v5, v7, Lcom/byazt/pp/c;->c:I

    .line 504
    .line 505
    const/4 v6, 0x0

    .line 506
    move-object v1, v2

    .line 507
    move-object/from16 v2, v18

    .line 508
    .line 509
    move/from16 v3, v19

    .line 510
    .line 511
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v7}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    move-object/from16 v1, p1

    .line 523
    .line 524
    invoke-interface {v1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
