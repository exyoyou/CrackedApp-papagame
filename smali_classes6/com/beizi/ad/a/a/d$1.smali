.class Lcom/beizi/ad/a/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/a/a/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lcom/beizi/ad/a/a/d;


# direct methods
.method constructor <init>(Lcom/beizi/ad/a/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "mCurPosX = "

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ",mCurPosY = "

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ",mPosX = "

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ",mPosY = "

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v3, "BeiZisAd"

    .line 81
    .line 82
    invoke-static {v3, v1}, Lcom/beizi/ad/lance/a/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 86
    .line 87
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 88
    .line 89
    sub-float v4, v1, v3

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v6, ""

    .line 93
    .line 94
    cmpl-float v4, v4, v5

    .line 95
    .line 96
    if-lez v4, :cond_3

    .line 97
    .line 98
    sub-float/2addr v1, v3

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->a(Lcom/beizi/ad/a/a/d;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    cmpl-float v1, v1, v3

    .line 111
    .line 112
    if-lez v1, :cond_3

    .line 113
    .line 114
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->c(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 121
    .line 122
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_2

    .line 131
    .line 132
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->d(Lcom/beizi/ad/a/a/d;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_b

    .line 139
    .line 140
    :cond_2
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    invoke-interface/range {v7 .. v15}, Lcom/beizi/ad/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_3
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 304
    .line 305
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 306
    .line 307
    sub-float v4, v1, v3

    .line 308
    .line 309
    cmpg-float v4, v4, v5

    .line 310
    .line 311
    if-gez v4, :cond_5

    .line 312
    .line 313
    sub-float/2addr v1, v3

    .line 314
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 319
    .line 320
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->a(Lcom/beizi/ad/a/a/d;)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    int-to-float v3, v3

    .line 325
    cmpl-float v1, v1, v3

    .line 326
    .line 327
    if-lez v1, :cond_5

    .line 328
    .line 329
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 330
    .line 331
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->f(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 336
    .line 337
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_4

    .line 346
    .line 347
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 348
    .line 349
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->d(Lcom/beizi/ad/a/a/d;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_b

    .line 354
    .line 355
    :cond_4
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 356
    .line 357
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-eqz v1, :cond_b

    .line 362
    .line 363
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 364
    .line 365
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 375
    .line 376
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 392
    .line 393
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 426
    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v13

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v15

    .line 513
    invoke-interface/range {v7 .. v15}, Lcom/beizi/ad/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_0

    .line 517
    .line 518
    :cond_5
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 519
    .line 520
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 521
    .line 522
    sub-float v4, v1, v3

    .line 523
    .line 524
    cmpg-float v4, v4, v5

    .line 525
    .line 526
    if-gez v4, :cond_7

    .line 527
    .line 528
    sub-float/2addr v1, v3

    .line 529
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 534
    .line 535
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->a(Lcom/beizi/ad/a/a/d;)I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    int-to-float v3, v3

    .line 540
    cmpl-float v1, v1, v3

    .line 541
    .line 542
    if-lez v1, :cond_7

    .line 543
    .line 544
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 545
    .line 546
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->g(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 551
    .line 552
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-nez v1, :cond_6

    .line 561
    .line 562
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 563
    .line 564
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->d(Lcom/beizi/ad/a/a/d;)Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_b

    .line 569
    .line 570
    :cond_6
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 571
    .line 572
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    if-eqz v1, :cond_b

    .line 577
    .line 578
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 579
    .line 580
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 590
    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 607
    .line 608
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    .line 623
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 624
    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v10

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 641
    .line 642
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v12

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v13

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v14

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v15

    .line 728
    invoke-interface/range {v7 .. v15}, Lcom/beizi/ad/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :cond_7
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 734
    .line 735
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 736
    .line 737
    sub-float v4, v1, v3

    .line 738
    .line 739
    cmpl-float v4, v4, v5

    .line 740
    .line 741
    if-lez v4, :cond_9

    .line 742
    .line 743
    sub-float/2addr v1, v3

    .line 744
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 749
    .line 750
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->a(Lcom/beizi/ad/a/a/d;)I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    int-to-float v3, v3

    .line 755
    cmpl-float v1, v1, v3

    .line 756
    .line 757
    if-lez v1, :cond_9

    .line 758
    .line 759
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 760
    .line 761
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->h(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iget-object v3, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 766
    .line 767
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-nez v1, :cond_8

    .line 776
    .line 777
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 778
    .line 779
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->d(Lcom/beizi/ad/a/a/d;)Z

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    if-eqz v1, :cond_b

    .line 784
    .line 785
    :cond_8
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 786
    .line 787
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    if-eqz v1, :cond_b

    .line 792
    .line 793
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 794
    .line 795
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 805
    .line 806
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v8

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .line 820
    .line 821
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 822
    .line 823
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v9

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .line 837
    .line 838
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 839
    .line 840
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v10

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .line 854
    .line 855
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 856
    .line 857
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v11

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v12

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    .line 887
    .line 888
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .line 890
    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v13

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .line 909
    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v14

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v15

    .line 943
    invoke-interface/range {v7 .. v15}, Lcom/beizi/ad/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_0

    .line 947
    .line 948
    :cond_9
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 949
    .line 950
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 951
    .line 952
    sub-float/2addr v1, v3

    .line 953
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    const/high16 v3, 0x41700000    # 15.0f

    .line 958
    .line 959
    cmpg-float v1, v1, v3

    .line 960
    .line 961
    if-gtz v1, :cond_b

    .line 962
    .line 963
    iget v1, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 964
    .line 965
    iget v4, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 966
    .line 967
    sub-float/2addr v1, v4

    .line 968
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    cmpg-float v1, v1, v3

    .line 973
    .line 974
    if-gtz v1, :cond_b

    .line 975
    .line 976
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 977
    .line 978
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    if-eqz v1, :cond_b

    .line 983
    .line 984
    iget-object v1, v0, Lcom/beizi/ad/a/a/d$1;->g:Lcom/beizi/ad/a/a/d;

    .line 985
    .line 986
    invoke-static {v1}, Lcom/beizi/ad/a/a/d;->e(Lcom/beizi/ad/a/a/d;)Lcom/beizi/ad/a/a/d$a;

    .line 987
    .line 988
    .line 989
    move-result-object v7

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .line 994
    .line 995
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 996
    .line 997
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v8

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 1013
    .line 1014
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v9

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 1030
    .line 1031
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v10

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    .line 1045
    .line 1046
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 1047
    .line 1048
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v11

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 1064
    .line 1065
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v12

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .line 1079
    .line 1080
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 1081
    .line 1082
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v13

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 1098
    .line 1099
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v14

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    iget v3, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 1115
    .line 1116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v15

    .line 1126
    invoke-interface/range {v7 .. v15}, Lcom/beizi/ad/a/a/d$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_0

    .line 1130
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 1131
    .line 1132
    .line 1133
    move-result v1

    .line 1134
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->a:F

    .line 1135
    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 1137
    .line 1138
    .line 1139
    move-result v1

    .line 1140
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->b:F

    .line 1141
    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 1143
    .line 1144
    .line 1145
    move-result v1

    .line 1146
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->c:F

    .line 1147
    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->d:F

    .line 1153
    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 1155
    .line 1156
    .line 1157
    move-result v1

    .line 1158
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->e:F

    .line 1159
    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 1161
    .line 1162
    .line 1163
    move-result v1

    .line 1164
    iput v1, v0, Lcom/beizi/ad/a/a/d$1;->f:F

    .line 1165
    .line 1166
    :cond_b
    :goto_0
    return v2
.end method
