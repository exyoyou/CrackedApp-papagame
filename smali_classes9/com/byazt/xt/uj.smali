.class public Lcom/byazt/xt/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xt/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0xf
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
.method public c(Lcom/byazt/xt/c$c;)V
    .locals 22

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 10
    .line 11
    .line 12
    move-result-object v15

    .line 13
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v15, :cond_5

    .line 22
    .line 23
    invoke-virtual {v15}, Lcom/byazt/nbs/da;->uj()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "TMe"

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v15}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v2, v5}, Lcom/byazt/hr/sl;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v3, "adn \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    .line 46
    .line 47
    invoke-static {v4, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v15}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v2, v4}, Lcom/byazt/hr/sl;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v3, 0xa051

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    new-instance v4, Lcom/byazt/bnd/tt;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {v4, v3, v5, v6, v2}, Lcom/byazt/bnd/tt;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance v4, Lcom/byazt/pp/c;

    .line 86
    .line 87
    invoke-static {v3}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-direct {v4, v3, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    move-object v14, v4

    .line 95
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v15}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->n()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x2

    .line 116
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->ve()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->sp()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->a()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    const-wide/16 v11, -0x1

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-boolean v13, v2, Lcom/byazt/nbs/i;->n:Z

    .line 135
    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 139
    .line 140
    .line 141
    move-result-wide v17

    .line 142
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 143
    .line 144
    .line 145
    move-result-wide v19

    .line 146
    sub-long v17, v17, v19

    .line 147
    .line 148
    move-object v2, v15

    .line 149
    move-object v10, v14

    .line 150
    move-object/from16 p1, v14

    .line 151
    .line 152
    move/from16 v14, v16

    .line 153
    .line 154
    move-object/from16 v19, v0

    .line 155
    .line 156
    move-object v0, v15

    .line 157
    move-wide/from16 v15, v17

    .line 158
    .line 159
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->ve()I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->sp()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->a()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const-wide/16 v9, 0x0

    .line 206
    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x0

    .line 209
    const/4 v13, 0x0

    .line 210
    const-wide/16 v14, 0x0

    .line 211
    .line 212
    move-object/from16 v2, p1

    .line 213
    .line 214
    move-object v4, v0

    .line 215
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v4, p1

    .line 234
    .line 235
    move-object/from16 v15, v19

    .line 236
    .line 237
    invoke-virtual {v15, v4, v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_1
    move-object/from16 v21, v15

    .line 242
    .line 243
    move-object v15, v0

    .line 244
    move-object/from16 v0, v21

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->uj()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_3

    .line 251
    .line 252
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v3, v2, v5}, Lcom/byazt/hr/t;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_3

    .line 265
    .line 266
    const-string v3, "adn \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    .line 267
    .line 268
    invoke-static {v4, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v3, v2, v4}, Lcom/byazt/hr/t;->uj(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/hr/i;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const v4, 0xa052

    .line 284
    .line 285
    .line 286
    if-eqz v3, :cond_2

    .line 287
    .line 288
    new-instance v5, Lcom/byazt/bnd/ve;

    .line 289
    .line 290
    invoke-static {v4}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    invoke-virtual {v8, v2, v9}, Lcom/byazt/hr/t;->c(Ljava/lang/String;Ljava/lang/String;)J

    .line 308
    .line 309
    .line 310
    move-result-wide v8

    .line 311
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v3}, Lcom/byazt/hr/i;->da()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-direct {v5, v4, v6, v2, v3}, Lcom/byazt/bnd/ve;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_2
    new-instance v5, Lcom/byazt/pp/c;

    .line 327
    .line 328
    invoke-static {v4}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-direct {v5, v4, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :goto_1
    move-object v14, v5

    .line 336
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->n()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    const/4 v6, 0x2

    .line 357
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->ve()I

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->sp()I

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->a()I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    const-wide/16 v11, -0x1

    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget-boolean v13, v2, Lcom/byazt/nbs/i;->n:Z

    .line 376
    .line 377
    const/16 v16, 0x0

    .line 378
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 380
    .line 381
    .line 382
    move-result-wide v17

    .line 383
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 384
    .line 385
    .line 386
    move-result-wide v19

    .line 387
    sub-long v17, v17, v19

    .line 388
    .line 389
    move-object v2, v0

    .line 390
    move-object v10, v14

    .line 391
    move-object/from16 p1, v14

    .line 392
    .line 393
    move/from16 v14, v16

    .line 394
    .line 395
    move-object/from16 v19, v15

    .line 396
    .line 397
    move-wide/from16 v15, v17

    .line 398
    .line 399
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 411
    .line 412
    .line 413
    move-result-wide v4

    .line 414
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->ve()I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->sp()I

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->a()I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    const-wide/16 v9, 0x0

    .line 446
    .line 447
    const/4 v11, 0x0

    .line 448
    const/4 v12, 0x0

    .line 449
    const/4 v13, 0x0

    .line 450
    const-wide/16 v14, 0x0

    .line 451
    .line 452
    move-object/from16 v2, p1

    .line 453
    .line 454
    move-object v4, v0

    .line 455
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 467
    .line 468
    .line 469
    move-result-wide v4

    .line 470
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v5, p1

    .line 474
    .line 475
    move-object/from16 v15, v19

    .line 476
    .line 477
    invoke-virtual {v15, v5, v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :cond_3
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-virtual {v3, v2, v5}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-eqz v3, :cond_4

    .line 494
    .line 495
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v3, v2, v5, v6}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/pp/c;

    .line 508
    .line 509
    .line 510
    move-result-object v14

    .line 511
    if-eqz v14, :cond_5

    .line 512
    .line 513
    const-string v2, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86rit\u7ea7\u522b\u7684\u9519\u8bef\u7801\u62e6\u622a............"

    .line 514
    .line 515
    invoke-static {v4, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->n()Z

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    const/4 v6, 0x2

    .line 539
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->ve()I

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->sp()I

    .line 544
    .line 545
    .line 546
    move-result v8

    .line 547
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->a()I

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    const-wide/16 v11, -0x1

    .line 552
    .line 553
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    iget-boolean v13, v2, Lcom/byazt/nbs/i;->n:Z

    .line 558
    .line 559
    const/16 v16, 0x0

    .line 560
    .line 561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 562
    .line 563
    .line 564
    move-result-wide v17

    .line 565
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 566
    .line 567
    .line 568
    move-result-wide v19

    .line 569
    sub-long v17, v17, v19

    .line 570
    .line 571
    move-object v2, v0

    .line 572
    move-object v10, v14

    .line 573
    move-object/from16 p1, v14

    .line 574
    .line 575
    move/from16 v14, v16

    .line 576
    .line 577
    move-object/from16 v19, v15

    .line 578
    .line 579
    move-wide/from16 v15, v17

    .line 580
    .line 581
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 593
    .line 594
    .line 595
    move-result-wide v4

    .line 596
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->ve()I

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->sp()I

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->a()I

    .line 612
    .line 613
    .line 614
    move-result v7

    .line 615
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    const-wide/16 v9, 0x0

    .line 628
    .line 629
    const/4 v11, 0x0

    .line 630
    const/4 v12, 0x0

    .line 631
    const/4 v13, 0x0

    .line 632
    const-wide/16 v14, 0x0

    .line 633
    .line 634
    move-object/from16 v2, p1

    .line 635
    .line 636
    move-object v4, v0

    .line 637
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 649
    .line 650
    .line 651
    move-result-wide v4

    .line 652
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 653
    .line 654
    .line 655
    move-object/from16 v1, p1

    .line 656
    .line 657
    move-object/from16 v15, v19

    .line 658
    .line 659
    invoke-virtual {v15, v1, v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 660
    .line 661
    .line 662
    return-void

    .line 663
    :cond_4
    invoke-static {}, Lcom/byazt/hr/ve;->c()Lcom/byazt/hr/ve;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    invoke-virtual {v2, v3, v5}, Lcom/byazt/hr/ve;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/pp/c;

    .line 676
    .line 677
    .line 678
    move-result-object v14

    .line 679
    if-eqz v14, :cond_5

    .line 680
    .line 681
    const-string v2, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    .line 682
    .line 683
    invoke-static {v4, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->n()Z

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    const/4 v6, 0x2

    .line 707
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->ve()I

    .line 708
    .line 709
    .line 710
    move-result v7

    .line 711
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->sp()I

    .line 712
    .line 713
    .line 714
    move-result v8

    .line 715
    invoke-virtual {v15}, Lcom/byazt/dv/tt;->a()I

    .line 716
    .line 717
    .line 718
    move-result v9

    .line 719
    const-wide/16 v11, -0x1

    .line 720
    .line 721
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    iget-boolean v13, v2, Lcom/byazt/nbs/i;->n:Z

    .line 726
    .line 727
    const/16 v16, 0x0

    .line 728
    .line 729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 730
    .line 731
    .line 732
    move-result-wide v17

    .line 733
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 734
    .line 735
    .line 736
    move-result-wide v19

    .line 737
    sub-long v17, v17, v19

    .line 738
    .line 739
    move-object v2, v0

    .line 740
    move-object v10, v14

    .line 741
    move-object/from16 p1, v14

    .line 742
    .line 743
    move/from16 v14, v16

    .line 744
    .line 745
    move-object/from16 v19, v15

    .line 746
    .line 747
    move-wide/from16 v15, v17

    .line 748
    .line 749
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 761
    .line 762
    .line 763
    move-result-wide v4

    .line 764
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->ve()I

    .line 772
    .line 773
    .line 774
    move-result v5

    .line 775
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->sp()I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    invoke-virtual/range {v19 .. v19}, Lcom/byazt/dv/tt;->a()I

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-virtual {v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v8

    .line 795
    const-wide/16 v9, 0x0

    .line 796
    .line 797
    const/4 v11, 0x0

    .line 798
    const/4 v12, 0x0

    .line 799
    const/4 v13, 0x0

    .line 800
    const-wide/16 v14, 0x0

    .line 801
    .line 802
    move-object/from16 v2, p1

    .line 803
    .line 804
    move-object v4, v0

    .line 805
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-virtual {v1, v0}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->cu()J

    .line 817
    .line 818
    .line 819
    move-result-wide v4

    .line 820
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 821
    .line 822
    .line 823
    move-object/from16 v2, p1

    .line 824
    .line 825
    move-object/from16 v1, v19

    .line 826
    .line 827
    invoke-virtual {v1, v2, v0}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    .line 828
    .line 829
    .line 830
    return-void

    .line 831
    :cond_5
    move-object/from16 v0, p0

    .line 832
    .line 833
    move-object/from16 v1, p1

    .line 834
    .line 835
    invoke-interface {v1, v0}, Lcom/byazt/xt/c$c;->c(Lcom/byazt/xt/c;)V

    .line 836
    .line 837
    .line 838
    return-void
.end method
