.class public Lcom/byazt/nm/x$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x3e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/ocd/ve;

.field public i:Lcom/byazt/bf/c;

.field public sl:Lcom/byazt/nc/da;

.field public t:I

.field public x:Lcom/byazt/lsp/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nc/da;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/x$c$2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/x$c$2;-><init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/nm/x$c;->x:Lcom/byazt/lsp/c;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/nm/x$c$3;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/x$c$3;-><init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/nm/x$c;->i:Lcom/byazt/bf/c;

    .line 18
    .line 19
    new-instance v0, Lcom/byazt/nm/x$c$4;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/x$c$4;-><init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/nm/x$c;->da:Lcom/byazt/ocd/ve;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getComplianceInfo()Lcom/byazt/nc/ve;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getAppName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setAppName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getDeveloperName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setAuthorName(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPrivacyUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getAppVersion()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setVersionName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPermissionsMap()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-lez v4, :cond_0

    .line 78
    .line 79
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPermissionsMap(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "5.1.0.0"

    .line 86
    .line 87
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getPermissionUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setPermissionsUrl(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    const-string v2, "5.4.0.3"

    .line 101
    .line 102
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getFunctionDescUrl()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setFunctionDescUrl(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    const-string v2, "6.8.1.6"

    .line 116
    .line 117
    invoke-static {v2}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getRegUrl()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setRegUrl(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/nc/ve;->getRegNumber()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setRegNumber(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setSupportRender(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setTitle(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getDescription()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setAdDescription(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getButtonText()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setActionText(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    if-eqz p3, :cond_5

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :cond_5
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setIconUrl(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getSource()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setSource(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getAppScore()I

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    int-to-double v0, p3

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setRating(D)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 208
    .line 209
    .line 210
    move-result p3

    .line 211
    const/4 v0, 0x4

    .line 212
    const/4 v1, 0x0

    .line 213
    if-ne p3, v0, :cond_6

    .line 214
    .line 215
    const/4 p3, 0x1

    .line 216
    goto :goto_0

    .line 217
    :cond_6
    const/4 p3, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setIsAppDownload(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 225
    .line 226
    .line 227
    move-result p3

    .line 228
    const/16 v2, 0x10

    .line 229
    .line 230
    if-eq p3, v2, :cond_c

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    const/4 v2, 0x3

    .line 237
    if-eq p3, v2, :cond_c

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    const/4 v2, 0x2

    .line 244
    if-eq p3, v2, :cond_c

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    const/16 v2, 0x83

    .line 251
    .line 252
    if-ne p3, v2, :cond_7

    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :cond_7
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageMode()I

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    if-ne p3, v0, :cond_9

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    if-eqz p3, :cond_d

    .line 267
    .line 268
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-lez v0, :cond_d

    .line 273
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object p3

    .line 283
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_8

    .line 288
    .line 289
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lcom/byazt/nc/t;

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_8
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImages(Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_9
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    if-eqz p3, :cond_a

    .line 312
    .line 313
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_b

    .line 322
    .line 323
    :cond_a
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-nez v2, :cond_b

    .line 334
    .line 335
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    if-eqz v2, :cond_b

    .line 340
    .line 341
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p3

    .line 345
    check-cast p3, Lcom/byazt/nc/t;

    .line 346
    .line 347
    :cond_b
    if-eqz p3, :cond_d

    .line 348
    .line 349
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageUrl(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getHeight()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageHeight(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getWidth()I

    .line 364
    .line 365
    .line 366
    move-result p3

    .line 367
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setImageWidth(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_c
    :goto_2
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object p3

    .line 375
    if-eqz p3, :cond_d

    .line 376
    .line 377
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_d

    .line 382
    .line 383
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_d

    .line 388
    .line 389
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p3

    .line 393
    check-cast p3, Lcom/byazt/nc/t;

    .line 394
    .line 395
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageUrl(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getHeight()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageHeight(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p3}, Lcom/byazt/nc/t;->getWidth()I

    .line 410
    .line 411
    .line 412
    move-result p3

    .line 413
    invoke-virtual {p0, p3}, Lcom/byazt/yl/ve;->setImageWidth(I)V

    .line 414
    .line 415
    .line 416
    :cond_d
    :goto_3
    if-eqz p2, :cond_f

    .line 417
    .line 418
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    if-eqz p1, :cond_f

    .line 423
    .line 424
    const-string p2, "price"

    .line 425
    .line 426
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    .line 431
    .line 432
    .line 433
    move-result-wide p1

    .line 434
    const-string p3, "pangle native \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    .line 435
    .line 436
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p3

    .line 444
    const-string v0, "TTMediationSDK_ECMP"

    .line 445
    .line 446
    invoke-static {v0, p3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-wide/16 v0, 0x0

    .line 450
    .line 451
    cmpl-double p3, p1, v0

    .line 452
    .line 453
    if-lez p3, :cond_e

    .line 454
    .line 455
    goto :goto_4

    .line 456
    :cond_e
    move-wide p1, v0

    .line 457
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 458
    .line 459
    .line 460
    :cond_f
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 461
    .line 462
    iget-object p2, p0, Lcom/byazt/nm/x$c;->i:Lcom/byazt/bf/c;

    .line 463
    .line 464
    invoke-virtual {p1, p2}, Lcom/byazt/nc/da;->setVideoAdListener(Lcom/byazt/bf/c;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 468
    .line 469
    iget-object p2, p0, Lcom/byazt/nm/x$c;->da:Lcom/byazt/ocd/ve;

    .line 470
    .line 471
    invoke-virtual {p1, p2}, Lcom/byazt/nc/u;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 472
    .line 473
    .line 474
    new-instance p1, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/byazt/nm/x$c;->getAdId()J

    .line 480
    .line 481
    .line 482
    move-result-wide p1

    .line 483
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    const-string p2, "ad_id"

    .line 488
    .line 489
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Lcom/byazt/nm/x$c;->getCreativeId()J

    .line 493
    .line 494
    .line 495
    move-result-wide p1

    .line 496
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    const-string p2, "c_id"

    .line 501
    .line 502
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 506
    .line 507
    invoke-virtual {p1}, Lcom/byazt/nc/da;->getVideoDuration()D

    .line 508
    .line 509
    .line 510
    move-result-wide p1

    .line 511
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    const-string p2, "duration"

    .line 516
    .line 517
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    if-eqz p1, :cond_10

    .line 527
    .line 528
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    .line 529
    .line 530
    .line 531
    const-string p2, "log_extra"

    .line 532
    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    :cond_10
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/x$c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/nm/x$c;->t:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/nm/x$c;)Lcom/byazt/me/i;
    .locals 0

    .line 2
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

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/nm/x$c;->da:Lcom/byazt/ocd/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/nc/u;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    new-instance v1, Lcom/byazt/nm/x$c$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/x$c$1;-><init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nc/da;->setVideoRewardListener(Lcom/byazt/bf/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    iget-object v8, p0, Lcom/byazt/nm/x$c;->x:Lcom/byazt/lsp/c;

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

.method public static synthetic cu(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic eo(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic md(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic or(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/x$c;)Lcom/byazt/me/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->n:Lcom/byazt/me/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/x$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yv(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/x$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zb(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/nm/x$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getAdLogo()Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAppCommentNum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getAppCommentNum()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle native : getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle native : getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TTMediationSDK"

    .line 6
    .line 7
    const-string v1, "pangle native : getDislikeInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget v0, p0, Lcom/byazt/nm/x$c;->t:I

    .line 2
    .line 3
    return v0
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
    new-instance v0, Lcom/byazt/nm/x$c$5;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/nm/x$c$5;-><init>(Lcom/byazt/nm/x$c;)V

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
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "coupon"

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "live_room"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "product"

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getVideoCoverImage()Lcom/byazt/nc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getVideoCoverImage()Lcom/byazt/nc/t;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getVideoDuration()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getVideoDuration()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/nc/u;->destroy()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public pauseAppDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget v0, p0, Lcom/byazt/nm/x$c;->t:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    invoke-direct/range {p0 .. p6}, Lcom/byazt/nm/x$c;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

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
    invoke-direct/range {v0 .. v6}, Lcom/byazt/nm/x$c;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object p7, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object p4, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object p1, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object p2, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget v0, p0, Lcom/byazt/nm/x$c;->t:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle native:  activity = "

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    const-string v1, "pangle native:  ttDislikeDialogAbstract = "

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/u;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

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
    const-string v1, "pangle native : uploadDislikeEvent event = "

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
    iget-object v0, p0, Lcom/byazt/nm/x$c;->sl:Lcom/byazt/nc/da;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
