.class public Lcom/byazt/omf/d$12;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x81e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/d;->da(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/omf/d;->ve(Lcom/byazt/omf/d;)Ljava/lang/ref/SoftReference;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    iget-object v1, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/omf/d;->ve(Lcom/byazt/omf/d;)Ljava/lang/ref/SoftReference;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    iget-object v1, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    iget-object v1, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/omf/d;->uj(Lcom/byazt/omf/d;)Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    new-instance v1, Lcom/byazt/xl/yp;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/byazt/xl/yp;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->c(I)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v3, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 47
    .line 48
    const-string v4, "isRenderSuc"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget-object v4, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 55
    .line 56
    const-string v5, "AdSize"

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const-string v5, "height"

    .line 63
    .line 64
    const-string v6, "width"

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-wide/16 v7, 0x0

    .line 78
    .line 79
    move-wide v9, v7

    .line 80
    :goto_0
    iget-object v4, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 81
    .line 82
    const-string v11, "videoInfo"

    .line 83
    .line 84
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    iget-object v11, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 91
    .line 92
    invoke-static {v11}, Lcom/byazt/omf/d;->uj(Lcom/byazt/omf/d;)Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 121
    .line 122
    const-string v13, "x"

    .line 123
    .line 124
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 125
    .line 126
    .line 127
    move-result-wide v13

    .line 128
    const-string v15, "y"

    .line 129
    .line 130
    move/from16 v16, v3

    .line 131
    .line 132
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    move-wide/from16 v17, v9

    .line 137
    .line 138
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    iget-object v15, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 147
    .line 148
    invoke-static {v15, v4}, Lcom/byazt/omf/d;->c(Lcom/byazt/omf/d;Lorg/json/JSONObject;)Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-eqz v15, :cond_3

    .line 153
    .line 154
    const-string v15, "borderRadiusTopLeft"

    .line 155
    .line 156
    move-wide/from16 v19, v7

    .line 157
    .line 158
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    const-string v15, "borderRadiusTopRight"

    .line 163
    .line 164
    move-wide/from16 v21, v5

    .line 165
    .line 166
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    const-string v15, "borderRadiusBottomLeft"

    .line 171
    .line 172
    move-wide/from16 v23, v9

    .line 173
    .line 174
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 175
    .line 176
    .line 177
    move-result-wide v9

    .line 178
    const-string v15, "borderRadiusBottomRight"

    .line 179
    .line 180
    move-wide/from16 v25, v2

    .line 181
    .line 182
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/byazt/ogz/sl;->qe()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_2

    .line 195
    .line 196
    double-to-float v4, v7

    .line 197
    invoke-static {v12, v4}, Lcom/byazt/aas/pf;->c(FF)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    int-to-float v4, v4

    .line 202
    invoke-static {v11, v4}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    int-to-float v4, v4

    .line 207
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->c(F)V

    .line 208
    .line 209
    .line 210
    double-to-float v4, v5

    .line 211
    invoke-static {v12, v4}, Lcom/byazt/aas/pf;->c(FF)I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    int-to-float v4, v4

    .line 216
    invoke-static {v11, v4}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    int-to-float v4, v4

    .line 221
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->tt(F)V

    .line 222
    .line 223
    .line 224
    double-to-float v4, v9

    .line 225
    invoke-static {v12, v4}, Lcom/byazt/aas/pf;->c(FF)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    int-to-float v4, v4

    .line 230
    invoke-static {v11, v4}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    int-to-float v4, v4

    .line 235
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->ve(F)V

    .line 236
    .line 237
    .line 238
    double-to-float v2, v2

    .line 239
    invoke-static {v12, v2}, Lcom/byazt/aas/pf;->c(FF)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    int-to-float v2, v2

    .line 244
    invoke-static {v11, v2}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    int-to-float v2, v2

    .line 249
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->uj(F)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_2
    double-to-float v4, v7

    .line 254
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->c(F)V

    .line 255
    .line 256
    .line 257
    double-to-float v4, v5

    .line 258
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->tt(F)V

    .line 259
    .line 260
    .line 261
    double-to-float v4, v9

    .line 262
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->ve(F)V

    .line 263
    .line 264
    .line 265
    double-to-float v2, v2

    .line 266
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->uj(F)V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_3
    move-wide/from16 v25, v2

    .line 271
    .line 272
    move-wide/from16 v21, v5

    .line 273
    .line 274
    move-wide/from16 v19, v7

    .line 275
    .line 276
    move-wide/from16 v23, v9

    .line 277
    .line 278
    :goto_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->qe()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_4

    .line 287
    .line 288
    double-to-float v2, v13

    .line 289
    invoke-static {v12, v2}, Lcom/byazt/aas/pf;->c(FF)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    int-to-float v2, v2

    .line 294
    invoke-static {v11, v2}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    int-to-double v2, v2

    .line 299
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xl/yp;->ve(D)V

    .line 300
    .line 301
    .line 302
    move-wide/from16 v2, v25

    .line 303
    .line 304
    double-to-float v2, v2

    .line 305
    invoke-static {v12, v2}, Lcom/byazt/aas/pf;->c(FF)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    int-to-float v2, v2

    .line 310
    invoke-static {v11, v2}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    int-to-double v2, v2

    .line 315
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xl/yp;->uj(D)V

    .line 316
    .line 317
    .line 318
    move-wide/from16 v4, v23

    .line 319
    .line 320
    double-to-float v2, v4

    .line 321
    invoke-static {v12, v2}, Lcom/byazt/aas/pf;->c(FF)I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    int-to-float v2, v2

    .line 326
    invoke-static {v11, v2}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    int-to-double v2, v2

    .line 331
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xl/yp;->n(D)V

    .line 332
    .line 333
    .line 334
    move-wide/from16 v6, v21

    .line 335
    .line 336
    double-to-float v2, v6

    .line 337
    invoke-static {v12, v2}, Lcom/byazt/aas/pf;->c(FF)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    int-to-float v2, v2

    .line 342
    invoke-static {v11, v2}, Lcom/byazt/aas/pf;->tt(FF)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    int-to-double v2, v2

    .line 347
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xl/yp;->a(D)V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_4
    move-wide/from16 v6, v21

    .line 352
    .line 353
    move-wide/from16 v4, v23

    .line 354
    .line 355
    move-wide/from16 v2, v25

    .line 356
    .line 357
    invoke-virtual {v1, v13, v14}, Lcom/byazt/xl/yp;->ve(D)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xl/yp;->uj(D)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v4, v5}, Lcom/byazt/xl/yp;->n(D)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v6, v7}, Lcom/byazt/xl/yp;->a(D)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_5
    move/from16 v16, v3

    .line 371
    .line 372
    move-wide/from16 v19, v7

    .line 373
    .line 374
    move-wide/from16 v17, v9

    .line 375
    .line 376
    :goto_2
    iget-object v2, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 377
    .line 378
    const-string v3, "msg"

    .line 379
    .line 380
    const/16 v4, 0x65

    .line 381
    .line 382
    invoke-static {v4}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iget-object v3, v0, Lcom/byazt/omf/d$12;->c:Lorg/json/JSONObject;

    .line 391
    .line 392
    const-string v5, "code"

    .line 393
    .line 394
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    move/from16 v4, v16

    .line 399
    .line 400
    invoke-virtual {v1, v4}, Lcom/byazt/xl/yp;->c(Z)V

    .line 401
    .line 402
    .line 403
    move-wide/from16 v7, v19

    .line 404
    .line 405
    invoke-virtual {v1, v7, v8}, Lcom/byazt/xl/yp;->c(D)V

    .line 406
    .line 407
    .line 408
    move-wide/from16 v7, v17

    .line 409
    .line 410
    invoke-virtual {v1, v7, v8}, Lcom/byazt/xl/yp;->tt(D)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->c(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v3}, Lcom/byazt/xl/yp;->tt(I)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 420
    .line 421
    invoke-static {v2}, Lcom/byazt/omf/d;->ve(Lcom/byazt/omf/d;)Ljava/lang/ref/SoftReference;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Lcom/byazt/xl/sl;

    .line 430
    .line 431
    invoke-interface {v2, v1}, Lcom/byazt/xl/sl;->c(Lcom/byazt/xl/yp;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :catch_0
    const/16 v2, 0x65

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->tt(I)V

    .line 438
    .line 439
    .line 440
    invoke-static {v2}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Lcom/byazt/xl/yp;->c(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v0, Lcom/byazt/omf/d$12;->tt:Lcom/byazt/omf/d;

    .line 448
    .line 449
    invoke-static {v2}, Lcom/byazt/omf/d;->ve(Lcom/byazt/omf/d;)Ljava/lang/ref/SoftReference;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    check-cast v2, Lcom/byazt/xl/sl;

    .line 458
    .line 459
    invoke-interface {v2, v1}, Lcom/byazt/xl/sl;->c(Lcom/byazt/xl/yp;)V

    .line 460
    .line 461
    .line 462
    :cond_6
    :goto_3
    return-void
.end method
