.class public Lcom/byazt/nm/ve$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/nc/i;

.field public i:Lcom/byazt/bf/c;

.field public sl:I

.field public x:Lcom/byazt/lsp/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nc/i;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/ve$c$3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/ve$c$3;-><init>(Lcom/byazt/nm/ve$c;Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/nm/ve$c;->x:Lcom/byazt/lsp/c;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/nm/ve$c$4;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/ve$c$4;-><init>(Lcom/byazt/nm/ve$c;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/nm/ve$c;->i:Lcom/byazt/bf/c;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getComplianceInfo()Lcom/byazt/nc/ve;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getAppName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setAppName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getDeveloperName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setAuthorName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPrivacyUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getAppVersion()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setVersionName(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPermissionsMap()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-lez v4, :cond_0

    .line 71
    .line 72
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPermissionsMap(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    const-string v2, "5.1.0.0"

    .line 79
    .line 80
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPermissionUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPermissionsUrl(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    const-string v2, "5.4.0.3"

    .line 94
    .line 95
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getFunctionDescUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setFunctionDescUrl(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    const-string v2, "6.8.1.6"

    .line 109
    .line 110
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getRegUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setRegUrl(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getRegNumber()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setRegNumber(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getTitle()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setTitle(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getDescription()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setAdDescription(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getButtonText()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setActionText(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :cond_5
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setIconUrl(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getSource()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setSource(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getAppScore()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    int-to-double v0, v0

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setRating(D)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/4 v1, 0x4

    .line 202
    const/4 v2, 0x0

    .line 203
    if-ne v0, v1, :cond_6

    .line 204
    .line 205
    const/4 v0, 0x1

    .line 206
    goto :goto_0

    .line 207
    :cond_6
    const/4 v0, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setIsAppDownload(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/16 v3, 0x10

    .line 219
    .line 220
    if-eq v0, v3, :cond_b

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const/4 v3, 0x3

    .line 227
    if-eq v0, v3, :cond_b

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const/4 v3, 0x2

    .line 234
    if-eq v0, v3, :cond_b

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    const/16 v3, 0x83

    .line 241
    .line 242
    if-ne v0, v3, :cond_7

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_7
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-ne v0, v1, :cond_9

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_c

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-lez v0, :cond_c

    .line 267
    .line 268
    new-instance v0, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_8

    .line 286
    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Lcom/byazt/nc/t;

    .line 292
    .line 293
    invoke-virtual {v2}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_8
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImages(Ljava/util/List;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :cond_9
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-nez v0, :cond_a

    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    if-eqz v1, :cond_a

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_a

    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_a

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Lcom/byazt/nc/t;

    .line 347
    .line 348
    :cond_a
    if-eqz v0, :cond_c

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setImageUrl(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getHeight()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setImageHeight(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getWidth()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageWidth(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    if-eqz v0, :cond_c

    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_c

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    if-eqz v0, :cond_c

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/byazt/nc/t;

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setImageUrl(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getHeight()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setImageHeight(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Lcom/byazt/nc/t;->getWidth()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageWidth(I)V

    .line 427
    .line 428
    .line 429
    :cond_c
    :goto_3
    if-eqz p2, :cond_e

    .line 430
    .line 431
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    if-eqz p1, :cond_e

    .line 436
    .line 437
    const-string p2, "price"

    .line 438
    .line 439
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    .line 444
    .line 445
    .line 446
    move-result-wide p1

    .line 447
    const-string v0, "pangle draw \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    .line 448
    .line 449
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const-string v1, "TTMediationSDK_ECMP"

    .line 458
    .line 459
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const-wide/16 v0, 0x0

    .line 463
    .line 464
    cmpl-double v2, p1, v0

    .line 465
    .line 466
    if-lez v2, :cond_d

    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_d
    move-wide p1, v0

    .line 470
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 471
    .line 472
    .line 473
    :cond_e
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 474
    .line 475
    iget-object p2, p0, Lcom/byazt/nm/ve$c;->i:Lcom/byazt/bf/c;

    .line 476
    .line 477
    invoke-virtual {p1, p2}, Lcom/byazt/nc/da;->setVideoAdListener(Lcom/byazt/bf/c;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/byazt/nm/ve$c;->getAdId()J

    .line 481
    .line 482
    .line 483
    move-result-wide p1

    .line 484
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const-string p2, "ad_id"

    .line 489
    .line 490
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0}, Lcom/byazt/nm/ve$c;->getCreativeId()J

    .line 494
    .line 495
    .line 496
    move-result-wide p1

    .line 497
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    const-string p2, "c_id"

    .line 502
    .line 503
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/byazt/nc/da;->getVideoDuration()D

    .line 509
    .line 510
    .line 511
    move-result-wide p1

    .line 512
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    const-string p2, "duration"

    .line 517
    .line 518
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    if-eqz p1, :cond_f

    .line 528
    .line 529
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    .line 530
    .line 531
    .line 532
    const-string p2, "log_extra"

    .line 533
    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    :cond_f
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->n:Lcom/byazt/me/i;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lcom/byazt/nm/ve$c$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/ve$c$1;-><init>(Lcom/byazt/nm/ve$c;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nc/da;->setVideoRewardListener(Lcom/byazt/bf/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    iget-object v8, p0, Lcom/byazt/nm/ve$c;->x:Lcom/byazt/lsp/c;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    :cond_0
    return-void
.end method

.method public static synthetic da(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->n:Lcom/byazt/me/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/ve$c;)Lcom/byazt/nc/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/ve$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/ve$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/nc/n;->cancelDownload()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->tt(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw : getAdLogo = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getAdLogo()Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw : getAppCommentNum = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/nc/u;->getAppCommentNum()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAppCommentNum()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getAppCommentNum()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->c(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle draw : getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle draw : getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TTMediationSDK"

    .line 6
    .line 7
    const-string v1, "pangle draw : getDislikeInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nm/ve$c;->sl:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadStatusController()Lcom/byazt/nc/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "pangle draw : getDownloadStatusController = "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "TTMediationSDK"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/byazt/me/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isUseCustomVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/nm/ve$c$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/nm/ve$c$2;-><init>(Lcom/byazt/nm/ve$c;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->ve(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public getVideoCoverImage()Lcom/byazt/nc/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw : getVideoCoverImage = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public getVideoDuration()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw : getVideoDuration = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/nc/da;->getVideoDuration()D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getVideoDuration()D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    return-wide v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getVideoDuration()D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getAdViewHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isUseCustomVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/byazt/yh/c;->getVideoUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw : getVideoView = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getAdViewWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/nc/da;->setVideoAdListener(Lcom/byazt/bf/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public pauseAppDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/byazt/nm/ve$c;->sl:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/byazt/nc/n;->changeDownloadStatus()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public registerView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/byazt/yl/ve;->registerView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/byazt/nm/ve$c;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V
    .locals 7
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/me/da;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/byazt/yl/ve;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/byazt/nm/ve$c;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 15
    .line 16
    const/4 p3, -0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    iget p1, p6, Lcom/byazt/me/da;->t:I

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    instance-of p4, p1, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz p4, :cond_0

    .line 42
    .line 43
    move-object p4, p1

    .line 44
    check-cast p4, Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    .line 48
    .line 49
    new-instance p5, Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p7

    .line 55
    invoke-direct {p5, p7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iget-object p7, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 59
    .line 60
    invoke-virtual {p7}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object p7

    .line 64
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    sget-object p7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 68
    .line 69
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object p7

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/high16 v1, 0x42180000    # 38.0f

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/byazt/eu/a;->tt(Landroid/content/Context;F)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, v1}, Lcom/byazt/eu/a;->tt(Landroid/content/Context;F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    .line 98
    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, p5, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    instance-of p4, p1, Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz p4, :cond_1

    .line 108
    .line 109
    check-cast p1, Landroid/widget/ImageView;

    .line 110
    .line 111
    iget-object p4, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 112
    .line 113
    invoke-virtual {p4}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isUseCustomVideo()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 127
    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    iget-object p1, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/byazt/yh/c;->getVideoUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    :cond_2
    if-eqz p6, :cond_4

    .line 153
    .line 154
    iget p1, p6, Lcom/byazt/me/da;->sp:I

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroid/widget/FrameLayout;

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    iget-object p2, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 165
    .line 166
    if-eqz p2, :cond_4

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    if-nez p2, :cond_3

    .line 173
    .line 174
    return-void

    .line 175
    :cond_3
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->removeSelfFromParent(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method

.method public resumeAppDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/byazt/nm/ve$c;->sl:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/byazt/nc/n;->changeDownloadStatus()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle draw : setActivityForDownloadApp  activity = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 2

    .line 1
    const-string v0, "pangle draw : setCanInterruptVideoPlay b = "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/i;->setCanInterruptVideoPlay(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw :  activity = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " pluginDislikeInteractionCallback:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "TTMediationSDK"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle draw :  ttDislikeDialogAbstract = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle draw : setDownloadListener pluginTTAppDownloadListener = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDrawVideoListener(Lcom/byazt/uz/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle draw : setDrawVideoListener pluginDrawVideoListener = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/i;->setDrawVideoListener(Lcom/byazt/uz/c;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pangle draw : setPauseIcon bitmap = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " i = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TTMediationSDK"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/i;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle draw : uploadDislikeEvent event = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/ve$c;->da:Lcom/byazt/nc/i;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
