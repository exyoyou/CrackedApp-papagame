.class Lcom/beizi/fusion/tool/an$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/an;->h()V
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

.field final synthetic g:Lcom/beizi/fusion/tool/an;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/an;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

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
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_b

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->c:F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->d:F

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->m(Lcom/beizi/fusion/tool/an;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-string v1, ""

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 40
    .line 41
    iget v2, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 42
    .line 43
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 44
    .line 45
    invoke-static {p1, v2, v3}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;FF)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->n(Lcom/beizi/fusion/tool/an;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget v4, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget v5, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 103
    .line 104
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget v6, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 120
    .line 121
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_3
    iget p1, p0, Lcom/beizi/fusion/tool/an$3;->d:F

    .line 213
    .line 214
    iget v2, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 215
    .line 216
    sub-float v3, p1, v2

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    cmpl-float v3, v3, v4

    .line 220
    .line 221
    if-lez v3, :cond_5

    .line 222
    .line 223
    sub-float/2addr p1, v2

    .line 224
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 229
    .line 230
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->o(Lcom/beizi/fusion/tool/an;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    int-to-float v2, v2

    .line 235
    cmpl-float p1, p1, v2

    .line 236
    .line 237
    if-lez p1, :cond_5

    .line 238
    .line 239
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 240
    .line 241
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->h(Lcom/beizi/fusion/tool/an;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    const-string v2, "down"

    .line 246
    .line 247
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_4

    .line 252
    .line 253
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->p(Lcom/beizi/fusion/tool/an;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_c

    .line 260
    .line 261
    :cond_4
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 262
    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 269
    .line 270
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    iget v4, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 286
    .line 287
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    iget v5, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 303
    .line 304
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    iget v6, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 320
    .line 321
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_5
    iget p1, p0, Lcom/beizi/fusion/tool/an$3;->d:F

    .line 413
    .line 414
    iget v2, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 415
    .line 416
    sub-float v3, p1, v2

    .line 417
    .line 418
    cmpg-float v3, v3, v4

    .line 419
    .line 420
    if-gez v3, :cond_7

    .line 421
    .line 422
    sub-float/2addr p1, v2

    .line 423
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 428
    .line 429
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->o(Lcom/beizi/fusion/tool/an;)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    int-to-float v2, v2

    .line 434
    cmpl-float p1, p1, v2

    .line 435
    .line 436
    if-lez p1, :cond_7

    .line 437
    .line 438
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 439
    .line 440
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->h(Lcom/beizi/fusion/tool/an;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    const-string v2, "up"

    .line 445
    .line 446
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-nez p1, :cond_6

    .line 451
    .line 452
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 453
    .line 454
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->p(Lcom/beizi/fusion/tool/an;)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_c

    .line 459
    .line 460
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 461
    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 468
    .line 469
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    iget v4, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 485
    .line 486
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    iget v5, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 502
    .line 503
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    iget v6, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 519
    .line 520
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 536
    .line 537
    .line 538
    move-result v7

    .line 539
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 555
    .line 556
    .line 557
    move-result v8

    .line 558
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 574
    .line 575
    .line 576
    move-result v9

    .line 577
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v9

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 593
    .line 594
    .line 595
    move-result p2

    .line 596
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v10

    .line 606
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_0

    .line 610
    .line 611
    :cond_7
    iget p1, p0, Lcom/beizi/fusion/tool/an$3;->c:F

    .line 612
    .line 613
    iget v2, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 614
    .line 615
    sub-float v3, p1, v2

    .line 616
    .line 617
    cmpg-float v3, v3, v4

    .line 618
    .line 619
    if-gez v3, :cond_9

    .line 620
    .line 621
    sub-float/2addr p1, v2

    .line 622
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 627
    .line 628
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->o(Lcom/beizi/fusion/tool/an;)I

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    int-to-float v2, v2

    .line 633
    cmpl-float p1, p1, v2

    .line 634
    .line 635
    if-lez p1, :cond_9

    .line 636
    .line 637
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 638
    .line 639
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->h(Lcom/beizi/fusion/tool/an;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    const-string v2, "left"

    .line 644
    .line 645
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 646
    .line 647
    .line 648
    move-result p1

    .line 649
    if-nez p1, :cond_8

    .line 650
    .line 651
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 652
    .line 653
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->p(Lcom/beizi/fusion/tool/an;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-eqz p1, :cond_c

    .line 658
    .line 659
    :cond_8
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 660
    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .line 665
    .line 666
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 667
    .line 668
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .line 682
    .line 683
    iget v4, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 684
    .line 685
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .line 699
    .line 700
    iget v5, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 701
    .line 702
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    iget v6, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 718
    .line 719
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 735
    .line 736
    .line 737
    move-result v7

    .line 738
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v7

    .line 748
    new-instance p1, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 754
    .line 755
    .line 756
    move-result v8

    .line 757
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v8

    .line 767
    new-instance p1, Ljava/lang/StringBuilder;

    .line 768
    .line 769
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 773
    .line 774
    .line 775
    move-result v9

    .line 776
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v9

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 792
    .line 793
    .line 794
    move-result p2

    .line 795
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v10

    .line 805
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_0

    .line 809
    .line 810
    :cond_9
    iget p1, p0, Lcom/beizi/fusion/tool/an$3;->c:F

    .line 811
    .line 812
    iget v2, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 813
    .line 814
    sub-float v3, p1, v2

    .line 815
    .line 816
    cmpl-float v3, v3, v4

    .line 817
    .line 818
    if-lez v3, :cond_c

    .line 819
    .line 820
    sub-float/2addr p1, v2

    .line 821
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 822
    .line 823
    .line 824
    move-result p1

    .line 825
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 826
    .line 827
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->o(Lcom/beizi/fusion/tool/an;)I

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    int-to-float v2, v2

    .line 832
    cmpl-float p1, p1, v2

    .line 833
    .line 834
    if-lez p1, :cond_c

    .line 835
    .line 836
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 837
    .line 838
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->h(Lcom/beizi/fusion/tool/an;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    const-string v2, "right"

    .line 843
    .line 844
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    if-nez p1, :cond_a

    .line 849
    .line 850
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 851
    .line 852
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->p(Lcom/beizi/fusion/tool/an;)Z

    .line 853
    .line 854
    .line 855
    move-result p1

    .line 856
    if-eqz p1, :cond_c

    .line 857
    .line 858
    :cond_a
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$3;->g:Lcom/beizi/fusion/tool/an;

    .line 859
    .line 860
    new-instance p1, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .line 864
    .line 865
    iget v3, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 866
    .line 867
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    iget v4, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 883
    .line 884
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    new-instance p1, Ljava/lang/StringBuilder;

    .line 895
    .line 896
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .line 898
    .line 899
    iget v5, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 900
    .line 901
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    new-instance p1, Ljava/lang/StringBuilder;

    .line 912
    .line 913
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .line 915
    .line 916
    iget v6, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 917
    .line 918
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v6

    .line 928
    new-instance p1, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 934
    .line 935
    .line 936
    move-result v7

    .line 937
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v7

    .line 947
    new-instance p1, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 953
    .line 954
    .line 955
    move-result v8

    .line 956
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v8

    .line 966
    new-instance p1, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 972
    .line 973
    .line 974
    move-result v9

    .line 975
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v9

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .line 989
    .line 990
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 991
    .line 992
    .line 993
    move-result p2

    .line 994
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v10

    .line 1004
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_0

    .line 1008
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1009
    .line 1010
    .line 1011
    move-result p1

    .line 1012
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->a:F

    .line 1013
    .line 1014
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 1015
    .line 1016
    .line 1017
    move-result p1

    .line 1018
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->b:F

    .line 1019
    .line 1020
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1021
    .line 1022
    .line 1023
    move-result p1

    .line 1024
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->c:F

    .line 1025
    .line 1026
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 1027
    .line 1028
    .line 1029
    move-result p1

    .line 1030
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->d:F

    .line 1031
    .line 1032
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 1033
    .line 1034
    .line 1035
    move-result p1

    .line 1036
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->e:F

    .line 1037
    .line 1038
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 1039
    .line 1040
    .line 1041
    move-result p1

    .line 1042
    iput p1, p0, Lcom/beizi/fusion/tool/an$3;->f:F

    .line 1043
    .line 1044
    :cond_c
    :goto_0
    return v0
.end method
