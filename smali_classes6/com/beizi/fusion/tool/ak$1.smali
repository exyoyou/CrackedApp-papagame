.class Lcom/beizi/fusion/tool/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tool/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/ak;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    sub-long/2addr v2, v4

    .line 14
    const-wide/16 v4, 0x50

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v0, v2, v3}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;J)J

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aget v3, v0, v2

    .line 36
    .line 37
    float-to-double v3, v3

    .line 38
    const-wide v5, 0x402399999999999aL    # 9.8

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    div-double/2addr v3, v5

    .line 44
    const/4 v7, 0x1

    .line 45
    aget v8, v0, v7

    .line 46
    .line 47
    float-to-double v8, v8

    .line 48
    div-double/2addr v8, v5

    .line 49
    const/4 v10, 0x2

    .line 50
    aget v0, v0, v10

    .line 51
    .line 52
    float-to-double v11, v0

    .line 53
    div-double/2addr v11, v5

    .line 54
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    const-wide v15, 0x4066800000000000L    # 180.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmpg-double v0, v5, v13

    .line 70
    .line 71
    if-gtz v0, :cond_1

    .line 72
    .line 73
    neg-double v5, v5

    .line 74
    sub-double/2addr v5, v15

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sub-double v5, v15, v5

    .line 77
    .line 78
    :goto_0
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 79
    .line 80
    .line 81
    move-result-wide v17

    .line 82
    move-wide/from16 v19, v11

    .line 83
    .line 84
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    cmpg-double v0, v10, v13

    .line 89
    .line 90
    if-gtz v0, :cond_2

    .line 91
    .line 92
    neg-double v10, v10

    .line 93
    sub-double/2addr v10, v15

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sub-double v10, v15, v10

    .line 96
    .line 97
    :goto_1
    mul-double v3, v3, v3

    .line 98
    .line 99
    mul-double v17, v8, v8

    .line 100
    .line 101
    add-double v3, v3, v17

    .line 102
    .line 103
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    move-wide/from16 v13, v19

    .line 108
    .line 109
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    const-wide v12, 0x4056800000000000L    # 90.0

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    add-double/2addr v3, v12

    .line 123
    const-wide v12, -0x3f70c80000000000L    # -999.0

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    const-wide v19, 0x4046800000000000L    # 45.0

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const-wide v21, 0x4076800000000000L    # 360.0

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    cmpg-double v0, v3, v19

    .line 139
    .line 140
    if-lez v0, :cond_d

    .line 141
    .line 142
    const-wide v23, 0x4060e00000000000L    # 135.0

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    cmpl-double v0, v3, v23

    .line 148
    .line 149
    if-gez v0, :cond_d

    .line 150
    .line 151
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    div-double/2addr v3, v8

    .line 161
    mul-double v3, v3, v15

    .line 162
    .line 163
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    cmpg-double v0, v3, v19

    .line 168
    .line 169
    if-gez v0, :cond_3

    .line 170
    .line 171
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->b(Lcom/beizi/fusion/tool/ak;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_3
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 184
    .line 185
    .line 186
    move-result-wide v3

    .line 187
    cmpl-double v0, v3, v12

    .line 188
    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->i(Lcom/beizi/fusion/tool/ak;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_4
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    cmpl-double v0, v5, v2

    .line 208
    .line 209
    if-ltz v0, :cond_5

    .line 210
    .line 211
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    sub-double v2, v5, v2

    .line 218
    .line 219
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->d(Lcom/beizi/fusion/tool/ak;)D

    .line 222
    .line 223
    .line 224
    move-result-wide v8

    .line 225
    cmpl-double v0, v2, v8

    .line 226
    .line 227
    if-lez v0, :cond_5

    .line 228
    .line 229
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 230
    .line 231
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    sub-double v2, v5, v2

    .line 236
    .line 237
    cmpg-double v0, v2, v15

    .line 238
    .line 239
    if-lez v0, :cond_6

    .line 240
    .line 241
    :cond_5
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 244
    .line 245
    .line 246
    move-result-wide v2

    .line 247
    cmpg-double v0, v5, v2

    .line 248
    .line 249
    if-gez v0, :cond_7

    .line 250
    .line 251
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 254
    .line 255
    .line 256
    move-result-wide v2

    .line 257
    const-wide/16 v8, 0x0

    .line 258
    .line 259
    cmpl-double v0, v2, v8

    .line 260
    .line 261
    if-lez v0, :cond_7

    .line 262
    .line 263
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 264
    .line 265
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    sub-double v2, v21, v2

    .line 270
    .line 271
    add-double/2addr v2, v5

    .line 272
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 273
    .line 274
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->d(Lcom/beizi/fusion/tool/ak;)D

    .line 275
    .line 276
    .line 277
    move-result-wide v8

    .line 278
    cmpl-double v0, v2, v8

    .line 279
    .line 280
    if-lez v0, :cond_7

    .line 281
    .line 282
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    sub-double v2, v21, v2

    .line 289
    .line 290
    add-double/2addr v2, v5

    .line 291
    cmpg-double v0, v2, v15

    .line 292
    .line 293
    if-gtz v0, :cond_7

    .line 294
    .line 295
    :cond_6
    invoke-static {}, Lcom/beizi/fusion/tool/ak;->d()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v3, "11111\u53d1\u751f\u5782\u76f4\u72b6\u6001\u6eda\u52a8 rollStatus:"

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v3, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 310
    .line 311
    invoke-static {v3}, Lcom/beizi/fusion/tool/ak;->e(Lcom/beizi/fusion/tool/ak;)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 326
    .line 327
    invoke-static {v0, v7}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;I)I

    .line 328
    .line 329
    .line 330
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 331
    .line 332
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->f(Lcom/beizi/fusion/tool/ak;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_5

    .line 336
    .line 337
    :cond_7
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 338
    .line 339
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 340
    .line 341
    .line 342
    move-result-wide v2

    .line 343
    cmpl-double v0, v5, v2

    .line 344
    .line 345
    if-ltz v0, :cond_9

    .line 346
    .line 347
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 348
    .line 349
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 350
    .line 351
    .line 352
    move-result-wide v2

    .line 353
    sub-double v2, v5, v2

    .line 354
    .line 355
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 356
    .line 357
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 358
    .line 359
    .line 360
    move-result-wide v8

    .line 361
    cmpg-double v0, v2, v8

    .line 362
    .line 363
    if-gez v0, :cond_8

    .line 364
    .line 365
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 366
    .line 367
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    sub-double v2, v5, v2

    .line 372
    .line 373
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 374
    .line 375
    .line 376
    move-result-wide v2

    .line 377
    cmpg-double v0, v2, v15

    .line 378
    .line 379
    if-lez v0, :cond_b

    .line 380
    .line 381
    :cond_8
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 382
    .line 383
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 384
    .line 385
    .line 386
    move-result-wide v2

    .line 387
    sub-double v2, v5, v2

    .line 388
    .line 389
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v2

    .line 393
    cmpl-double v0, v2, v15

    .line 394
    .line 395
    if-ltz v0, :cond_9

    .line 396
    .line 397
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 398
    .line 399
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 400
    .line 401
    .line 402
    move-result-wide v2

    .line 403
    sub-double v2, v5, v2

    .line 404
    .line 405
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 406
    .line 407
    .line 408
    move-result-wide v2

    .line 409
    sub-double v2, v21, v2

    .line 410
    .line 411
    neg-double v2, v2

    .line 412
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 415
    .line 416
    .line 417
    move-result-wide v8

    .line 418
    cmpg-double v0, v2, v8

    .line 419
    .line 420
    if-ltz v0, :cond_b

    .line 421
    .line 422
    :cond_9
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 423
    .line 424
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 425
    .line 426
    .line 427
    move-result-wide v2

    .line 428
    cmpg-double v0, v5, v2

    .line 429
    .line 430
    if-gez v0, :cond_17

    .line 431
    .line 432
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 433
    .line 434
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 435
    .line 436
    .line 437
    move-result-wide v2

    .line 438
    sub-double v2, v5, v2

    .line 439
    .line 440
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 441
    .line 442
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 443
    .line 444
    .line 445
    move-result-wide v8

    .line 446
    cmpg-double v0, v2, v8

    .line 447
    .line 448
    if-gez v0, :cond_a

    .line 449
    .line 450
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 451
    .line 452
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 453
    .line 454
    .line 455
    move-result-wide v2

    .line 456
    sub-double v2, v5, v2

    .line 457
    .line 458
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 459
    .line 460
    .line 461
    move-result-wide v2

    .line 462
    cmpg-double v0, v2, v15

    .line 463
    .line 464
    if-lez v0, :cond_b

    .line 465
    .line 466
    :cond_a
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 467
    .line 468
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 469
    .line 470
    .line 471
    move-result-wide v2

    .line 472
    sub-double v2, v5, v2

    .line 473
    .line 474
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 475
    .line 476
    .line 477
    move-result-wide v2

    .line 478
    cmpl-double v0, v2, v15

    .line 479
    .line 480
    if-ltz v0, :cond_17

    .line 481
    .line 482
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 483
    .line 484
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->h(Lcom/beizi/fusion/tool/ak;)D

    .line 485
    .line 486
    .line 487
    move-result-wide v2

    .line 488
    sub-double/2addr v5, v2

    .line 489
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 490
    .line 491
    .line 492
    move-result-wide v2

    .line 493
    sub-double v21, v21, v2

    .line 494
    .line 495
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 498
    .line 499
    .line 500
    move-result-wide v2

    .line 501
    cmpg-double v0, v21, v2

    .line 502
    .line 503
    if-gez v0, :cond_17

    .line 504
    .line 505
    :cond_b
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 506
    .line 507
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->e(Lcom/beizi/fusion/tool/ak;)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-ne v0, v7, :cond_17

    .line 512
    .line 513
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 514
    .line 515
    const/4 v2, 0x2

    .line 516
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;I)I

    .line 517
    .line 518
    .line 519
    invoke-static {}, Lcom/beizi/fusion/tool/ak;->d()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    const-string v2, "\u53d1\u751f\u5782\u76f4\u72b6\u6001\u56de\u6eda"

    .line 524
    .line 525
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 529
    .line 530
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->f(Lcom/beizi/fusion/tool/ak;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_5

    .line 534
    .line 535
    :cond_c
    :goto_2
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 536
    .line 537
    invoke-static {v0, v5, v6}, Lcom/beizi/fusion/tool/ak;->b(Lcom/beizi/fusion/tool/ak;D)D

    .line 538
    .line 539
    .line 540
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 541
    .line 542
    invoke-static {v0, v7}, Lcom/beizi/fusion/tool/ak;->b(Lcom/beizi/fusion/tool/ak;Z)Z

    .line 543
    .line 544
    .line 545
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 546
    .line 547
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;Z)Z

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :cond_d
    :goto_3
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 552
    .line 553
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 554
    .line 555
    .line 556
    move-result-wide v3

    .line 557
    cmpl-double v0, v3, v12

    .line 558
    .line 559
    if-eqz v0, :cond_16

    .line 560
    .line 561
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 562
    .line 563
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->b(Lcom/beizi/fusion/tool/ak;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-nez v0, :cond_e

    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :cond_e
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 572
    .line 573
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 574
    .line 575
    .line 576
    move-result-wide v2

    .line 577
    cmpl-double v0, v10, v2

    .line 578
    .line 579
    if-ltz v0, :cond_f

    .line 580
    .line 581
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 582
    .line 583
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 584
    .line 585
    .line 586
    move-result-wide v2

    .line 587
    sub-double v2, v10, v2

    .line 588
    .line 589
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 590
    .line 591
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->d(Lcom/beizi/fusion/tool/ak;)D

    .line 592
    .line 593
    .line 594
    move-result-wide v4

    .line 595
    cmpl-double v0, v2, v4

    .line 596
    .line 597
    if-lez v0, :cond_f

    .line 598
    .line 599
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 600
    .line 601
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 602
    .line 603
    .line 604
    move-result-wide v2

    .line 605
    sub-double v2, v10, v2

    .line 606
    .line 607
    cmpg-double v0, v2, v15

    .line 608
    .line 609
    if-lez v0, :cond_10

    .line 610
    .line 611
    :cond_f
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 612
    .line 613
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 614
    .line 615
    .line 616
    move-result-wide v2

    .line 617
    cmpg-double v0, v10, v2

    .line 618
    .line 619
    if-gez v0, :cond_11

    .line 620
    .line 621
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 622
    .line 623
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 624
    .line 625
    .line 626
    move-result-wide v2

    .line 627
    const-wide/16 v4, 0x0

    .line 628
    .line 629
    cmpl-double v0, v2, v4

    .line 630
    .line 631
    if-lez v0, :cond_11

    .line 632
    .line 633
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 634
    .line 635
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 636
    .line 637
    .line 638
    move-result-wide v2

    .line 639
    sub-double v2, v21, v2

    .line 640
    .line 641
    add-double/2addr v2, v10

    .line 642
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 643
    .line 644
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->d(Lcom/beizi/fusion/tool/ak;)D

    .line 645
    .line 646
    .line 647
    move-result-wide v4

    .line 648
    cmpl-double v0, v2, v4

    .line 649
    .line 650
    if-lez v0, :cond_11

    .line 651
    .line 652
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 653
    .line 654
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 655
    .line 656
    .line 657
    move-result-wide v2

    .line 658
    sub-double v2, v21, v2

    .line 659
    .line 660
    add-double/2addr v2, v10

    .line 661
    cmpg-double v0, v2, v15

    .line 662
    .line 663
    if-gtz v0, :cond_11

    .line 664
    .line 665
    :cond_10
    invoke-static {}, Lcom/beizi/fusion/tool/ak;->d()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .line 673
    .line 674
    const-string v3, "11111\u53d1\u751f\u6c34\u5e73\u72b6\u6001\u6eda\u52a8 rollStatus:"

    .line 675
    .line 676
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    iget-object v3, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 680
    .line 681
    invoke-static {v3}, Lcom/beizi/fusion/tool/ak;->e(Lcom/beizi/fusion/tool/ak;)I

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 696
    .line 697
    invoke-static {v0, v7}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;I)I

    .line 698
    .line 699
    .line 700
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 701
    .line 702
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->f(Lcom/beizi/fusion/tool/ak;)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_5

    .line 706
    .line 707
    :cond_11
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 708
    .line 709
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 710
    .line 711
    .line 712
    move-result-wide v2

    .line 713
    cmpl-double v0, v10, v2

    .line 714
    .line 715
    if-ltz v0, :cond_13

    .line 716
    .line 717
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 718
    .line 719
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 720
    .line 721
    .line 722
    move-result-wide v2

    .line 723
    sub-double v2, v10, v2

    .line 724
    .line 725
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 726
    .line 727
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 728
    .line 729
    .line 730
    move-result-wide v4

    .line 731
    cmpg-double v0, v2, v4

    .line 732
    .line 733
    if-gez v0, :cond_12

    .line 734
    .line 735
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 736
    .line 737
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 738
    .line 739
    .line 740
    move-result-wide v2

    .line 741
    sub-double v2, v10, v2

    .line 742
    .line 743
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 744
    .line 745
    .line 746
    move-result-wide v2

    .line 747
    cmpg-double v0, v2, v15

    .line 748
    .line 749
    if-lez v0, :cond_15

    .line 750
    .line 751
    :cond_12
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 752
    .line 753
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 754
    .line 755
    .line 756
    move-result-wide v2

    .line 757
    sub-double v2, v10, v2

    .line 758
    .line 759
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 760
    .line 761
    .line 762
    move-result-wide v2

    .line 763
    cmpl-double v0, v2, v15

    .line 764
    .line 765
    if-ltz v0, :cond_13

    .line 766
    .line 767
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 768
    .line 769
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 770
    .line 771
    .line 772
    move-result-wide v2

    .line 773
    sub-double v2, v10, v2

    .line 774
    .line 775
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 776
    .line 777
    .line 778
    move-result-wide v2

    .line 779
    sub-double v2, v21, v2

    .line 780
    .line 781
    neg-double v2, v2

    .line 782
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 783
    .line 784
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 785
    .line 786
    .line 787
    move-result-wide v4

    .line 788
    cmpg-double v0, v2, v4

    .line 789
    .line 790
    if-ltz v0, :cond_15

    .line 791
    .line 792
    :cond_13
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 793
    .line 794
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 795
    .line 796
    .line 797
    move-result-wide v2

    .line 798
    cmpg-double v0, v10, v2

    .line 799
    .line 800
    if-gez v0, :cond_17

    .line 801
    .line 802
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 803
    .line 804
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 805
    .line 806
    .line 807
    move-result-wide v2

    .line 808
    sub-double v2, v10, v2

    .line 809
    .line 810
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 811
    .line 812
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 813
    .line 814
    .line 815
    move-result-wide v4

    .line 816
    cmpg-double v0, v2, v4

    .line 817
    .line 818
    if-gez v0, :cond_14

    .line 819
    .line 820
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 821
    .line 822
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 823
    .line 824
    .line 825
    move-result-wide v2

    .line 826
    sub-double v2, v10, v2

    .line 827
    .line 828
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 829
    .line 830
    .line 831
    move-result-wide v2

    .line 832
    cmpg-double v0, v2, v15

    .line 833
    .line 834
    if-lez v0, :cond_15

    .line 835
    .line 836
    :cond_14
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 837
    .line 838
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 839
    .line 840
    .line 841
    move-result-wide v2

    .line 842
    sub-double v2, v10, v2

    .line 843
    .line 844
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 845
    .line 846
    .line 847
    move-result-wide v2

    .line 848
    cmpl-double v0, v2, v15

    .line 849
    .line 850
    if-ltz v0, :cond_17

    .line 851
    .line 852
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 853
    .line 854
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->c(Lcom/beizi/fusion/tool/ak;)D

    .line 855
    .line 856
    .line 857
    move-result-wide v2

    .line 858
    sub-double/2addr v10, v2

    .line 859
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 860
    .line 861
    .line 862
    move-result-wide v2

    .line 863
    sub-double v21, v21, v2

    .line 864
    .line 865
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 866
    .line 867
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->g(Lcom/beizi/fusion/tool/ak;)D

    .line 868
    .line 869
    .line 870
    move-result-wide v2

    .line 871
    cmpg-double v0, v21, v2

    .line 872
    .line 873
    if-gez v0, :cond_17

    .line 874
    .line 875
    :cond_15
    invoke-static {}, Lcom/beizi/fusion/tool/ak;->d()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .line 883
    .line 884
    const-string v3, "2222\u53d1\u751f\u6c34\u5e73\u72b6\u6001\u56de\u6eda rollStatus:"

    .line 885
    .line 886
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    iget-object v3, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 890
    .line 891
    invoke-static {v3}, Lcom/beizi/fusion/tool/ak;->e(Lcom/beizi/fusion/tool/ak;)I

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 906
    .line 907
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->e(Lcom/beizi/fusion/tool/ak;)I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-ne v0, v7, :cond_17

    .line 912
    .line 913
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 914
    .line 915
    const/4 v2, 0x2

    .line 916
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;I)I

    .line 917
    .line 918
    .line 919
    invoke-static {}, Lcom/beizi/fusion/tool/ak;->d()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    const-string v2, "\u53d1\u751f\u6c34\u5e73\u72b6\u6001\u56de\u6eda"

    .line 924
    .line 925
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 929
    .line 930
    invoke-static {v0}, Lcom/beizi/fusion/tool/ak;->f(Lcom/beizi/fusion/tool/ak;)V

    .line 931
    .line 932
    .line 933
    goto :goto_5

    .line 934
    :cond_16
    :goto_4
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 935
    .line 936
    invoke-static {v0, v10, v11}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;D)D

    .line 937
    .line 938
    .line 939
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 940
    .line 941
    invoke-static {v0, v7}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak;Z)Z

    .line 942
    .line 943
    .line 944
    iget-object v0, v1, Lcom/beizi/fusion/tool/ak$1;->a:Lcom/beizi/fusion/tool/ak;

    .line 945
    .line 946
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ak;->b(Lcom/beizi/fusion/tool/ak;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .line 948
    .line 949
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 952
    .line 953
    .line 954
    :cond_17
    :goto_5
    return-void
.end method
